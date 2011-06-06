using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proline.Models;

namespace Proline.Controllers
{
    public class SGMController : Controller
    {
        //
        // declare all 
        pldbDataContext db = new pldbDataContext();
        //
        // GET: /SGM/
        public ActionResult Index(int id)
        {
            ViewBag.Title = "SGM Master Settings";
            ViewBag.DisplayGID = id;
            return View();
        }

        public ActionResult AjaxDataProvider(int id, JQueryDataTableParamModel param)
        {
            var allSGMs = from a in db.SGMs
                          .Where(c => c.SID.ToString().Equals(id))
                          select a;
            IEnumerable<SGM> filteredSGMs;
            if (!string.IsNullOrEmpty(param.sSearch))
            {
                //Used if particulare columns are filtered 
                var UgcFilter = Convert.ToString(Request["sSearch_2"]);
                var DescFilter = Convert.ToString(Request["sSearch_3"]);
                var AbbrevFilter = Convert.ToString(Request["sSearch_4"]);
                var ValueFilter = Convert.ToString(Request["sSearch_5"]);
                var SccFilter = Convert.ToString(Request["sSearch_6"]);
                var SeqFilter = Convert.ToString(Request["sSearch_7"]);

                //Optionally check whether the columns are searchable at all 
                var isUgcSearchable = Convert.ToBoolean(Request["bSearchable_2"]);
                var isDescSearchable = Convert.ToBoolean(Request["bSearchable_3"]);
                var isAbbrevSearchable = Convert.ToBoolean(Request["bSearchable_4"]);
                var isValueSearchable = Convert.ToBoolean(Request["bSearchable_5"]);
                var isSccSearchable = Convert.ToBoolean(Request["bSearchable_6"]);
                var isSeqSearchable = Convert.ToBoolean(Request["bSearchable_7"]);

                filteredSGMs = from c in allSGMs
                                          .Where(c => isUgcSearchable && c.UGC.ToLower().Contains(param.sSearch.ToLower())
                                                       ||
                                                       isDescSearchable && c.Desc.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                       ||
                                                       isAbbrevSearchable && c.Abbrev.ToLower().Contains(param.sSearch.ToLower())
                                                       ||
                                                       isValueSearchable && c.Val.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                       ||
                                                       isSccSearchable && c.SCC.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                       ||
                                                       isSeqSearchable && c.Seq.ToString().ToLower().Contains(param.sSearch.ToLower()))
                               select c;
            }
            else
            {
                filteredSGMs = allSGMs;
            }

            var isUgcSortable = Convert.ToBoolean(Request["bSortable_2"]); //String
            var isDescSortable = Convert.ToBoolean(Request["bSortable_3"]); //String
            var isAbbrevSortable = Convert.ToBoolean(Request["bSortable_4"]);//String
            var isValSortable = Convert.ToBoolean(Request["bSortable_5"]);//int
            var isSccSortable = Convert.ToBoolean(Request["bSortable_6"]);//String
            var isSeqSortable = Convert.ToBoolean(Request["bSortable_7"]);//int

            var sortColumnIndex = Convert.ToInt32(Request["iSortCol_0"]);

            if (sortColumnIndex == 2 || sortColumnIndex == 3 || sortColumnIndex == 4 || sortColumnIndex == 6)
            {
                Func<SGM, string> orderingFunction = (c =>
                    sortColumnIndex == 2 && isUgcSortable ? c.UGC :
                    sortColumnIndex == 3 && isDescSortable ? c.Desc :
                    sortColumnIndex == 4 && isAbbrevSortable ? c.Abbrev :
                    sortColumnIndex == 6 && isSccSortable ? c.SCC :
                    "");

                var sortDirection = Request["sSortDir_0"]; // asc or desc
                if (sortDirection == "asc")
                    filteredSGMs = filteredSGMs.OrderBy(orderingFunction);
                else
                    filteredSGMs = filteredSGMs.OrderByDescending(orderingFunction);
            }
            else // 2,5,6,8,9,10
            {
                Func<SGM, int?> orderingFunction = (c =>
                    sortColumnIndex == 5 && isValSortable ? c.Val :
                    sortColumnIndex == 7 && isSeqSortable ? c.Seq :
                    0);

                var sortDirection = Request["sSortDir_0"]; // asc or desc
                if (sortDirection == "asc")
                    filteredSGMs = filteredSGMs.OrderBy(orderingFunction);
                else
                    filteredSGMs = filteredSGMs.OrderByDescending(orderingFunction);
            }

            var displayedSGMs = filteredSGMs.Skip(param.iDisplayStart).Take(param.iDisplayLength);
            var result = from c in displayedSGMs
                         select new[] {
                             Convert.ToString(c.GID),Convert.ToString(c.SID),
                             Convert.ToString(c.UGC),Convert.ToString(c.Desc), Convert.ToString(c.Abbrev),
                             Convert.ToString(c.Val),Convert.ToString(c.SCC),Convert.ToString(c.Seq)
                         };

            return Json(new
            {
                sEcho = param.sEcho,
                iTotalRecords = allSGMs.Count(),
                iTotalDisplayRecords = filteredSGMs.Count(),
                aaData = result
            }, JsonRequestBehavior.AllowGet);
        }

        #region "CRUD OPERATION"
        // CRUD FUNCTION
        // DELETE DATA FROM DATA TABLES
        public string DeleteData(int id)
        {
            try
            {
                var itemToDelete = db.SGMs.Single(i => i.GID == id);
                if (itemToDelete == null)
                    return "Items is not in inventory";

                db.SGMs.DeleteOnSubmit(itemToDelete);
                db.SubmitChanges();
                return "ok";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string UpdateData(int id, string value, int columnPosition, int columnId)
        {
            var allItems = db.SGMs;

            if (columnId == 0 && allItems.Any(c => c.GID.ToString().ToLower().Equals(value.ToLower())))
                return "Item with an ID '" + value + "' already exists";
            var itemToPush = allItems.FirstOrDefault(c => c.GID == id);
            if (itemToPush == null)
            {
                return "Item with an GID = " + id + " does not exists";
            }
            switch (columnPosition)
            {
                case 0:
                    itemToPush.UGC = value.ToUpper();
                    break;
                case 1:
                    itemToPush.Desc = value.ToUpper();
                    break;
                case 2:
                    itemToPush.Abbrev = value.ToUpper();
                    break;
                case 3:
                    itemToPush.Val = Convert.ToInt32(value);
                    break;
                case 4:
                    itemToPush.SCC = value.ToUpper();
                    break;
                case 5:
                    itemToPush.Seq = Convert.ToInt32(value);
                    break;
                default:
                    break;
            }
            db.SubmitChanges();
            return value;
        }

        //
        //CRUD OPERATION TO ADD NEW DATA TO SGM
        public int AddData(int SID, string UGC, string Desc, string Abbrev,
            Nullable<int> Val, string SCC, Nullable<int> Seq)
        {
            var allItem = from m in db.SGMs select m;
            var getGID_count = from m in db.SGMs
                             .Where(c => c.SID == SID)
                               select m.SID;
            int count = getGID_count.Count();
            int gid = count + 1;
            if (UGC.Length == 0)
            { UGC = null; }
            if (Desc.Length == 0)
            { Desc = null; }
            if (Abbrev.Length == 0)
            { Abbrev = null; }
            if (SCC.Length == 0)
            { SCC = null; }

            gid = Convert.ToInt32(SID.ToString() + gid.ToString());

            if (allItem.Any(c => c.GID.ToString().ToLower().Equals(gid.ToString().ToLower())))
            {
                Response.Write("Item with the ID '" + gid + "' already exists");
                Response.StatusCode = 404;
                Response.End();
                return -1;
            }

            var pushSGM = new SGM();
            pushSGM.GID = gid;
            pushSGM.SID = SID;
            pushSGM.UGC = UGC.ToUpper();
            pushSGM.Desc = Desc.ToUpper();
            pushSGM.Abbrev = Abbrev.ToUpper();
            pushSGM.Val = Val;
            pushSGM.SCC = SCC.ToUpper();
            pushSGM.Seq = Seq;

            db.SGMs.InsertOnSubmit(pushSGM);
            db.SubmitChanges();

            //Response.End();
            return pushSGM.GID;
        }

        #endregion
    }
}

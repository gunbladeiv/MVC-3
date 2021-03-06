﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Proline.Models;
using System.Data;
using Omu.ValueInjecter;

namespace Proline.Controllers
{
    public class ItemsController : Controller
    {
        pldbDataContext db = new pldbDataContext();

        public ActionResult Index()
        {
            ViewBag.Title = "Item(s) Management";
            return View();
        }   

        // Edit
        // GET EDIT ID
        public ActionResult Edit(int id)
        {
            var itemToEdit = db.PDs.Single(c => c.ID.Equals(id));
            return View(itemToEdit);
        }

        #region "Ajax Data Handler"

        public ActionResult AjaxDataProvider(JQueryDataTableParamModel param)
        {
            var allItems = from a in db.PDs
                           select a;
            IEnumerable<PD> filteredItems;
            if (!string.IsNullOrEmpty(param.sSearch))
            {
                //Used if particulare columns are filtered
                var IDFilter = Convert.ToString(Request["sSearch_0"]);
                var nameFilter = Convert.ToString(Request["sSearch_1"]);
                var uomFilter = Convert.ToString(Request["sSearch_2"]);
                var remarksFilter = Convert.ToString(Request["sSearch_3"]);
                var barcodeFilter = Convert.ToString(Request["sSearch_4"]);
                var withSerialFilter = Convert.ToString(Request["sSearch_5"]);
                var reorderFilter = Convert.ToString(Request["sSearch_6"]);
                var codeFilter = Convert.ToString(Request["sSearch_7"]);
                var g230Filter = Convert.ToString(Request["sSearch_8"]);
                var g233Filter = Convert.ToString(Request["sSearch_9"]);
                var g234Filter = Convert.ToString(Request["sSearch_10"]);
                var modelFilter = Convert.ToString(Request["sSearch_11"]);

                //Optionally check whether the columns are searchable at all 
                var isIDSearchable = Convert.ToBoolean(Request["bSearchable_0"]);
                var isNameSearchable = Convert.ToBoolean(Request["bSearchable_1"]);
                var isUOMSearchable = Convert.ToBoolean(Request["bSearchable_2"]);
                var isRemarksSearchable = Convert.ToBoolean(Request["bSearchable_3"]);
                var isBarcodeSearchable = Convert.ToBoolean(Request["bSearchable_4"]);
                var isWithSerialSearchable = Convert.ToBoolean(Request["bSearchable_5"]);
                var isReorderSearchable = Convert.ToBoolean(Request["bSearchable_6"]);
                var isCodeSearchable = Convert.ToBoolean(Request["bSearchable_7"]);
                var isG230Searchable = Convert.ToBoolean(Request["bSearchable_8"]);
                var isG233Searchable = Convert.ToBoolean(Request["bSearchable_9"]);
                var isG234Searchable = Convert.ToBoolean(Request["bSearchable_10"]);
                var isModelSearchable = Convert.ToBoolean(Request["bSearchable_11"]);


                filteredItems = allItems.Where(c => isIDSearchable && c.ID.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isNameSearchable && c.Name.ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isUOMSearchable && c.UOM.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isRemarksSearchable && c.Remarks.ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isBarcodeSearchable && c.BarCode.ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isWithSerialSearchable && c.WithSerial.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isReorderSearchable && c.Reorder.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isCodeSearchable && c.Code.ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isG230Searchable && c.G230.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isG233Searchable && c.G233.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isG234Searchable && c.G234.ToString().ToLower().Contains(param.sSearch.ToLower())
                                                    ||
                                                    isModelSearchable && c.Model.ToLower().Contains(param.sSearch.ToLower()))
                                    .Select(c => c);
             }
            else
            {
                filteredItems = allItems;
            }

            var isIDSortable = Convert.ToBoolean(Request["bSortable_0"]); //int
            var isNameSortable = Convert.ToBoolean(Request["bSortable_1"]); //String
            var isUOMSortable = Convert.ToBoolean(Request["bSortable_2"]); //Int
            var isRemarksSortable = Convert.ToBoolean(Request["bSortable_3"]);//String
            var isBarcodeSortable = Convert.ToBoolean(Request["bSortable_4"]);//String
            var isWithSerialSortable = Convert.ToBoolean(Request["bSortable_5"]);//int
            var isReorderSortable = Convert.ToBoolean(Request["bSortable_6"]);//int
            var isCodeSortable = Convert.ToBoolean(Request["bSortable_7"]);//String
            var isG230Sortable = Convert.ToBoolean(Request["bSortable_8"]);//int
            var isG233Sortable = Convert.ToBoolean(Request["bSortable_9"]);//int
            var isG234Sortable = Convert.ToBoolean(Request["bSortable_10"]);//int
            var isModelSortable = Convert.ToBoolean(Request["bSortable_11"]);//string
            var sortColumnIndex = Convert.ToInt32(Request["iSortCol_0"]);

            if ( sortColumnIndex == 1 || sortColumnIndex == 3 || sortColumnIndex == 4 || sortColumnIndex == 7
                || sortColumnIndex == 11 )
            {
                Func<PD, string> orderingFunction = (c => 
                    sortColumnIndex == 1 && isNameSortable ? c.Name :
                    sortColumnIndex == 3 && isRemarksSortable ? c.Remarks :
                    sortColumnIndex == 4 && isBarcodeSortable ? c.BarCode :
                    sortColumnIndex == 7 && isCodeSortable ? c.Code :
                    sortColumnIndex == 11 && isModelSortable ? c.Model :
                    "");
            
                var sortDirection = Request["sSortDir_0"]; // asc or desc
                if (sortDirection == "asc")
                    filteredItems = filteredItems.OrderBy(orderingFunction);
                else
                    filteredItems = filteredItems.OrderByDescending(orderingFunction);
            }
            else // 2,5,6,8,9,10
            {
                Func<PD, int> orderingFunction = (c => 
                    sortColumnIndex == 0 && isIDSortable ? c.ID :
                    sortColumnIndex == 2 && isNameSortable ? Convert.ToInt32(c.UOM) :
                    sortColumnIndex == 5 && isRemarksSortable ? Convert.ToInt32(c.WithSerial) :
                    sortColumnIndex == 6 && isBarcodeSortable ? Convert.ToInt32(c.Reorder) :
                    sortColumnIndex == 8 && isCodeSortable ? Convert.ToInt32(c.G230) :
                    sortColumnIndex == 9 && isModelSortable ? Convert.ToInt32(c.G233) :
                    sortColumnIndex == 10 && isModelSortable ? Convert.ToInt32(c.G234) :
                    0);
            
                var sortDirection = Request["sSortDir_0"]; // asc or desc
                if (sortDirection == "asc")
                    filteredItems = filteredItems.OrderBy(orderingFunction);
                else
                    filteredItems = filteredItems.OrderByDescending(orderingFunction);
            }
            
            var displayedItems = filteredItems.Skip(param.iDisplayStart).Take(param.iDisplayLength);
            var result = from c in displayedItems 
                         select new[] { 
                             Convert.ToString(c.ID), Convert.ToString(c.Name), getUOM(Convert.ToString(c.UOM)), 
                             Convert.ToString(c.Remarks), Convert.ToString(c.BarCode), Convert.ToString(c.WithSerial), 
                             Convert.ToString(c.Reorder), Convert.ToString(c.Code), getDescGroup(Convert.ToInt32(c.G230)), 
                             getDescGroup(Convert.ToInt32(c.G233)), getDescGroup(Convert.ToInt32(c.G234)), Convert.ToString(c.Model)
                         };
                       
            return Json(new
            {
                sEcho = param.sEcho,
                iTotalRecords = allItems.Count(),
                iTotalDisplayRecords = filteredItems.Count(),
                aaData = result
            }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult uomSelectList(string id)
        {
            if (id.Equals("209"))
            {
                var temp = db.SGMs.Where(c => (c.UGC.Length != 0) && (c.SID.ToString().Contains(id.ToString())))
                            .Select(c => new { c.GID, c.UGC });
                var jsonUOMList = temp.Select(c => new[] { c.GID.ToString(), c.UGC.ToString() });
                return Json(jsonUOMList);
            }
            else
            {
                // Get the value and check for SID in SGM table
                var temp = db.SGMs.Where(c => c.UGC.Equals(id)).Select(c => c.SID.ToString()).ToArray();
                var rules = new[] {"","209"};
                string temp_id = returnSID(temp,rules);
                id = temp_id.ToString();

                var _temp = db.SGMs.Where(c => (c.UGC.Length != 0) && (Convert.ToString(c.GID).Contains(id)))
                       .Select(c => new { c.GID, c.UGC });

                var jsonGRPList = _temp.Select(c => new[] { c.GID.ToString(), c.UGC.ToString() });
                return Json(jsonGRPList);
            }
        }

        public ActionResult grpSelectList(string id)
        {
            if (id.Equals("230") || id.Equals("233") || id.Equals("250"))
            {
                var temp = db.SGMs.Where(c => (c.Desc.Length != 0) && (Convert.ToString(c.SID).Equals(id)))
                       .Select(c => new { c.GID, c.Desc });

                var jsonGRPList = temp.Select(c => new[] { c.GID.ToString(), c.Desc.ToString() });
                return Json(jsonGRPList);
            }
            else {
                // Get the value and check for SID in SGM table
                var temp = db.SGMs.Where(c => c.Desc.Equals(id)).Select(c => c.SID.ToString()).ToArray();
                string temp_id = returnSID(temp,new[] {"230","233","250"}); 
                id = temp_id.ToString();

                var _temp = db.SGMs.Where(c => (c.Desc.Length != 0) && (Convert.ToString(c.SID).Equals(id)))
                       .Select(c => new { c.GID, c.Desc });

                var jsonGRPList = _temp.Select(c => new[] { c.GID.ToString(), c.Desc.ToString() });
                return Json(jsonGRPList);
            }
             
        }

        // CRUD FUNCTION
        // DELETE DATA FROM DATA TABLES
        public string DeleteData(int id)
        {
            try
            {
                var itemToDelete = db.PDs.Single(i => i.ID == id);
                if (itemToDelete == null)
                    return "Items is not in inventory";
                
                db.PDs.DeleteOnSubmit(itemToDelete);
                db.SubmitChanges();
                return "ok";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        // CRUD FUNCTION 
        // ADD NEW ITEM USING AJAX
        public int AddData(string Name, Nullable<int> UOM, string Remarks, string BarCode,
            Nullable<bool> WithSerial, Nullable<int> Reorder, string Code, Nullable<int> G230, Nullable<int> G233, Nullable<int> G234, 
            string Model)
        {
            var allItem = from m in db.PDs select m;
            if (allItem.Any(c => c.Name.ToLower().Equals(Name.ToLower())))
            {
                Response.Write("Item with the name '" + Name + "' already exists");
                Response.StatusCode = 404;
                Response.End();
                return -1;
            }
            
            var pushPDS = new PD();
            pushPDS.Name = Name;
            pushPDS.UOM = UOM;
            pushPDS.Remarks = Remarks;
            pushPDS.BarCode = BarCode;
            pushPDS.WithSerial = WithSerial;
            pushPDS.Reorder = Reorder;
            pushPDS.Code = Code;
            pushPDS.G230 = G230;
            pushPDS.G233 = G233;
            pushPDS.G234 = G234;
            pushPDS.Model = Model;

            db.PDs.InsertOnSubmit(pushPDS);
            db.SubmitChanges();

            //Response.End();
            return pushPDS.ID;
        }
        
        //
        // Update data inline engine
        
        public string UpdateData(int id, string value,int columnPosition)
        {
            var allItems = db.PDs;

            if (columnPosition == 1 && allItems.Any(c => c.Name.ToLower().Equals(value.ToLower())))
                return "Item with a name '" + value + "' already exists";
            var itemToPush = allItems.FirstOrDefault(c => c.ID == id);
            if (itemToPush == null)
            {
                return "Item with an id = " + id + " does not exists";
            }
            switch (columnPosition)
            {
                case 0:
                    itemToPush.Name = value;
                    break;
                case 1:
                    itemToPush.UOM = Int32.Parse(value);
                    break;
                case 2:
                    itemToPush.Remarks = value;
                    break;
                case 3:
                    itemToPush.BarCode = value;
                    break;
                case 4:
                    itemToPush.WithSerial = Convert.ToBoolean(value);
                    break;
                case 5:
                    itemToPush.Reorder = Convert.ToInt32(value);
                    break;
                case 6:
                    itemToPush.Code = value;
                    break;
                case 7:
                    itemToPush.G230 = Convert.ToInt32(value);
                    break;
                case 8:
                    itemToPush.G233 = Convert.ToInt32(value);
                    break;
                case 9:
                    itemToPush.G234 = Convert.ToInt32(value);
                    break;
                case 10:
                    itemToPush.Model = value;
                    break;
                default:
                    break;
            }
            db.SubmitChanges();
            return value;
        }

        #endregion

        #region "Manipulate data to send to Datatables between tables"

        private string getUOM(string id)
        {
            if (id != null)
            {
                var ob = db.SGMs.FirstOrDefault(m => m.GID.ToString() == id);
                if (ob == null)
                {
                    return "";
                } else {
                    return ob.UGC;
                }
            }
            else
                return "Not Set";
        }

        private string getDescGroup(int id)
        {
            if (!id.Equals(null))
            {
                var ob = (from m in db.SGMs 
                         where m.GID == id 
                         select m.Desc).FirstOrDefault();
                return ob;
            }
            else
                return "Not Set";
        }

        private string returnSID(string[] id, string[] rules)
        {
            string sid="";
            foreach (var x in id)
            {
                foreach (var r in rules)
                { if (x.Contains(r)) sid = x.ToString(); }
            }
            return sid;
        }

        
       
        #endregion

    }

}
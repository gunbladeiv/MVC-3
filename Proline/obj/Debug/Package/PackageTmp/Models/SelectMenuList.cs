using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proline.Models
{
    public class SelectionList
    {
        public string Value { get; set; }
        public string Text { get; set; }
    }
    public class QueryableSelectionList : SelectionList
    {
        pldbDataContext db = new pldbDataContext();
        public IQueryable<SelectionList> getUOMlist(int id)
        {
            var temp = (from a in db.SGMs
                        where (a.SID.ToString().Contains(id.ToString()))
                        && (a.UGC.ToString().Length > 0)
                        select new SelectionList
                        { Value = a.GID.ToString(), Text = a.UGC })
                        ;
            return temp;
        }

        public IQueryable<SelectionList> getGRPlist(int id)
        {
            var temp = (from a in db.SGMs
                        where (a.GID.ToString().Contains(id.ToString()))
                        && (a.Desc.Length > 0)
                        select new SelectionList { Value = a.GID.ToString(), Text = a.Desc })
                        ;
            return temp;
        }
    }
}
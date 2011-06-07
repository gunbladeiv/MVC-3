using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Proline.Models;

namespace Proline.Models
{
    public class DataRepository
    {
        public static IList<uomDTO> uomList = null;
        public static IList<grpDTO> grpList = null;

        public IList<uomDTO> getUOMList()
        {
            if (uomList == null)
            {
                var db = new pldbDataContext();
                uomList = new List<uomDTO>();
                var data = db.SGMs.Where(c => (c.UGC.Length > 0) && c.SID.Equals(209)).Select(c => new { c.GID, c.UGC }).Distinct();
                foreach (var x in data)
                {
                    uomList.Add(new uomDTO() { id = Convert.ToInt32(x.GID), value = x.UGC });
                }
            }
            return uomList;
        }

        public IList<grpDTO> getGRPList(int x)
        {
            var db = new pldbDataContext();
            grpList = new List<grpDTO>();
            var data = db.SGMs.Where(c => (c.Desc.Length > 0) && (c.SID.Equals(x))).Select(c => new { c.GID, c.Desc }).Distinct();
            foreach (var y in data)
            {
                grpList.Add(new grpDTO() { id = Convert.ToInt32(y.GID), value = y.Desc });
            }
            return grpList;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class License_ManagementBLL
    {
        License_Management ad = new License_Management();
        IDAL<License_Management> addal = new License_ManagementDAL();
        License_ManagementDAL liccom = new License_ManagementDAL();
        public bool Save(License_Management ad)
        {
            return addal.Save(ad);
        }
        public License_Management GetLicense_ManagementInfoById(int Login_Id)
        {
            return addal.GetById(Login_Id);
        }
        public bool License_Managementsspupd(License_Management um)
        {
            return addal.Update(um);
        }
        public string CommissionTypeById(int Login_Id)
        {
            return liccom.GetcommissiontypeByAgentId(Login_Id);
        }

        //public List<Admin> GetAll()
        //{
        //    return ad.GetAll();
        //}
    }
}


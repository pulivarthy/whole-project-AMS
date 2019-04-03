using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class AdminBLL
    {
        Admin adm = new Admin();
        
        IDAL<Admin> addal = new AdminDAL();
        AdminDAL admin1 = new AdminDAL();
        public bool Save(Admin adm)
        {
            return addal.Save(adm);
        }

        public Admin GetAdminInfoById(int Login_Id)
        {
            return addal.GetById(Login_Id);
        }

        public long getMaxAdminId()
        {
            return admin1.GetMaxAdminId();

        }

        public string GetByid(object obj1, object obj2)
        {
            try
            {
                string str;
                str = admin1.GetByid(obj1, obj2).ToString();
                return str;
               
            }
            catch (Exception ex)
            {

                return string.Empty;
            }
        }
        public bool Adminspupd(Admin ad)
        {
            return addal.Update(ad);
        }

        
    }
}

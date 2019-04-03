using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class Customer_Policy_RegBLL
    {
        Customer_Policy_Reg ad = new Customer_Policy_Reg();
        IDAL<Customer_Policy_Reg> addal = new Customer_Policy_RegDAL();
        Customer_Policy_RegDAL cust_Policy = new Customer_Policy_RegDAL();
        public bool Save(Customer_Policy_Reg ad)
        {
            return addal.Save(ad);
        }
        public Customer_Policy_Reg GetCustomer_Policy_RegInfoById(int Customer_id)
        {
            return addal.GetById(Customer_id);
        }
        public bool Customer_Policy_Regupd(Customer_Policy_Reg um)
        {
            return addal.Update(um);
        }
        public Customer_Policy_Reg GetPoilcyDetailsByAppointId(int AppointId)
        {
            return cust_Policy.GetPoilcyDetailsByAppointId(AppointId);
        }

        //public List<Admin> GetAll()
        //{
        //    return ad.GetAll();
        //}
    }
}

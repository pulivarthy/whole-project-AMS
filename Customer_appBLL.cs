using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class Customer_appBLL
    {
        Customer_app ad = new Customer_app();
        IDAL<Customer_app> addal = new Customer_appDAL();
        Customer_appDAL cul = new Customer_appDAL();
        public bool Save(Customer_app ad)
        {
            return addal.Save(ad);
        }

        public Customer_app GetCustomer_appInfoById(int Customer_id)
        {
            return addal.GetById(Customer_id);
        }

        public bool Customer_appSpupd(Customer_app um)
        {
            return addal.Update(um);
        }

        //public List<Admin> GetAll()
        //{
        //    return ad.GetAll();
        //}
    }
}

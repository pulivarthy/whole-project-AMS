using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class CustomerBLL
    {
        Customer ad = new Customer();
        IDAL<Customer> addal = new CustomerDAL();
        CustomerDAL cust = new CustomerDAL();
        public bool Save(Customer ad)
        {
            return addal.Save(ad);
        }

        public Customer GetCustomerInfoById(int Customer_id)
        {
            return addal.GetById(Customer_id);
        }

        public long getMaxLoginid()
        {
          return cust.GetMaxLoginId();
        }


        public string GetByid(object obj1, object obj2)
        {
            try
            {
                string str;
                str = cust.GetByid(obj1, obj2).ToString();
                return str;

            }
            catch (Exception ex)
            {

                return string.Empty;
            }
        }
        public bool CustomerUpd(Customer um)
        {
            return addal.Update(um);
        }

       
        
        //public List<Admin> GetAll()
        //{
        //    return ad.GetAll();
        //}
    }
}

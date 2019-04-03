using System;
using System.Collections.Generic;
using DEL;
using System.Data.SqlClient;

namespace DAL
{
    public class Customer_appDAL : IDAL<Customer_app>
    {
        SqlConnection sqlcon = new SqlConnection(DAL.Properties.Settings1.Default.ConStr);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        bool IDAL<Customer_app>.Save(Customer_app cu)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = " Customer_appSp @Name='" + cu.Name + "' ,@Address='" + cu.Address + "',@City='" + cu.City + "',@State='" + cu.State + "',@Pincode=" + cu.Pincode + ",@Employee_Type='" + cu.Employee_Type + "',@Contact_no=" + cu.Contact_no + ",@Email='" + cu.Email + "',@Contact_mode='" + cu.Contact_mode + "',@Insurance_Already=" + cu.Insurance_Already + ",@Annual_income=" + cu.Annual_income + ",@Date_of_appointment='" + cu.Date_of_appointment + "',@Preferrable_time='" + cu.Preferrable_time + "',@Customer_id='"+cu.Customer_id+"'";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        Customer_app IDAL<Customer_app>.GetById(Object empobj)
        {
            Customer_app cu = new Customer_app();
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "select * from Customer_app where Customer_id=" + empobj + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.HasRows==true)
                {
                    dr.Read();
                    cu.Name = (dr["Name"].ToString());
                    cu.Address = (dr["Address"].ToString());
                    cu.City = (dr["City"].ToString());
                    cu.State = (dr["State"].ToString());
                    cu.Pincode = Convert.ToInt32(dr["Pincode"]);
                    cu.Employee_Type = (dr["Employee_Type"].ToString());
                    cu.Contact_no = Convert.ToInt32(dr["Contact_no"]);
                    cu.Email = (dr["Email"].ToString());
                    cu.Contact_mode = (dr["Contact_mo"].ToString());
                    cu.Insurance_Already = Convert.ToInt64(dr["Insurance_Already"]);
                    cu.Annual_income = Convert.ToInt64(dr["Annual_income"]);
                    cu.Date_of_appointment = DateTime.ParseExact(dr["Date_of_appointment"].ToString(), "yyyy-MM-dd", null);
                    cu.Preferrable_time = DateTime.ParseExact(dr["Preferrable_time"].ToString(),"HH:mm",null);
                    cu.Customer_id = dr["Login_id"].ToString();
                }
                dr.Close();
                return cu;
            }
            catch (Exception ex)
            {
                return cu;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        bool IDAL<Customer_app>.Delete(Customer_app dl)
        {
            return false;
        }
        bool IDAL<Customer_app>.Update(Customer_app up)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = " Customer_appSpupd @Name='" + up.Name + "' ,@Address='" + up.Address + "',@City='" + up.City + "',@State='" + up.State + "',@Pincode=" + up.Pincode + ",@Employee_Type='" + up.Employee_Type + "',@Contact_no=" + up.Contact_no + ",@Email='" + up.Email + "',@Contact_mode='" + up.Contact_mode + "',@Insurance_Already=" + up.Insurance_Already + ",@Annual_income=" + up.Annual_income + ",@Date_of_appointment='" + up.Date_of_appointment + "',@Preferrable_time='" + up.Preferrable_time + "',@Customer_id='" + up.Customer_id + "'";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        //public Customer_app check(object obj)
        //{
        //    Customer_app cu = new Customer_app();
        //    try
        //    {
        //        cmd = new SqlCommand();
        //        cmd.Connection = sqlcon;
        //        cmd.CommandText = "Customer_appView @Customer_id='"+obj+"'";
        //        if (sqlcon.State == System.Data.ConnectionState.Closed)
        //        {
        //            sqlcon.Open();
        //        }
        //        dr = cmd.ExecuteReader();
        //        if (dr.HasRows == true)
        //        {
        //            dr.Read();
        //            cu.Name = (dr["Name"].ToString());
        //            cu.Address = (dr["Address"].ToString());
        //            cu.City = (dr["City"].ToString());
        //            cu.State = (dr["State"].ToString());
        //            cu.Zipcode = Convert.ToInt32(dr["Zipcode"]);
        //            //cu.Employee_Type = (dr["Employee_Type"].ToString());
        //            cu.Contact_no = Convert.ToInt32(dr["Contact_no"]);
        //            cu.Email = (dr["Email"].ToString());
        //            cu.Contact_mode = (dr["Contact_mo"].ToString());
        //            cu.Insurance_Already = Convert.ToInt64(dr["Insurance_Already"]);
        //            cu.Annual_income = Convert.ToInt64(dr["Annual_income"]);
        //            cu.Date_of_appointment = DateTime.ParseExact(dr["Date_of_appointment"].ToString(), "yyyy-MM-dd", null);
        //            cu.Preferrable_time = DateTime.ParseExact(dr["Preferrable_time"].ToString(), "HH:mm", null);
        //        }
        //        dr.Close();
        //        return cu;
        //    }
        //    catch (Exception ex)
        //    {
        //        return null;
        //    }
        //    finally
        //    {
        //        sqlcon.Close();
        //    }
        //}
    }
}

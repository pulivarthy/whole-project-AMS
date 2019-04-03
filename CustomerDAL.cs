using System;
using System.Collections.Generic;
using DEL;
using System.Data.SqlClient;
using DAL;
using System.Globalization;

namespace DAL
{
    public class CustomerDAL : IDAL<Customer>
    {
        SqlConnection sqlcon = new SqlConnection(DAL.Properties.Settings1.Default.ConStr);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        bool IDAL<Customer>.Save(Customer cu)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "Customersp @Password='" + cu.Password + "' ,@Name='" + cu.Name + "',@Date_of_birth='" + cu.Date_of_birth + "',@Address='" + cu.Address + "',@Contact_no=" + cu.Contact_no + ",@Email='" + cu.Email + "',@City='" + cu.City + "',@State='" + cu.State + "',@Date_of_join='" + cu.Date_of_join + "',@Zipcode=" + cu.Zipcode + "";
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

        Customer IDAL<Customer>.GetById(Object empobj)
        {
            Customer cu = new Customer();
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "select * from Customer where Customer_id=" + empobj + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    cu.Customer_id = Convert.ToInt32(dr["Customer_id"]);
                    cu.Password = (dr["Password"].ToString());
                    cu.Name = (dr["Name"].ToString());

                    cu.Date_of_birth = DateTime.ParseExact(((DateTime)dr["Date_of_birth"]).ToString("MM-dd-yyyy"), "MM-dd-yyyy",null);
                    cu.Address = (dr["Address"].ToString());
                    cu.Contact_no = Convert.ToInt64(dr["Contact_no"]);
                    cu.Email = (dr["Email"].ToString());
                    cu.City = (dr["City"].ToString()); 
                    cu.State = (dr["State"].ToString());

                    cu.Date_of_join = (DateTime)dr["Date_of_join"];
                    cu.Zipcode = Convert.ToInt32(dr["Zipcode"]);
             


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

        bool IDAL<Customer>.Delete(Customer dl)
        {
            return false;
        }
        bool IDAL<Customer>.Update(Customer up)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "CustomerUpd  @Password='" + up.Password + "',@Name='" + up.Name + "',@Date_of_birth='" + up.Date_of_birth + "',@Address='" + up.Address + "',@Contact_no=" + up.Contact_no + ",@Email='" + up.Email + "',@City='" + up.City + "',@State='" + up.State + "',@Date_of_join='" + up.Date_of_join + "',@Zipcode=" + up.Zipcode + ",@Customer_id='"+up.Customer_id+"'";
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

        public long GetMaxLoginId()
        {
            try
            {
                cmd.Connection = sqlcon;
                cmd.CommandText = "customerlogin";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                return Convert.ToInt64(cmd.ExecuteScalar());
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                sqlcon.Close();
            }
        }
        

    public string GetByid(object obj1, object obj2)
        {
            try
            {
                cmd.Connection = sqlcon;
                cmd.CommandText = "CustomerUserId @Customer_id='" + obj1 + "',@Password='" + obj2 + "'";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                dr.Read();
                return dr["Customer_id"].ToString();
            }
            catch (Exception ex)
            {

                return null;
            }
            finally
            {
                sqlcon.Close();
            }
        }
}
    }


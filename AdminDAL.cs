using System;
using System.Collections.Generic;
using DEL;
using System.Data.SqlClient;

namespace DAL
{
    public class AdminDAL:IDAL<Admin>
    {
        SqlConnection sqlcon = new SqlConnection(DAL.Properties.Settings1.Default.ConStr);
        SqlCommand cmd=new SqlCommand();
        SqlDataReader dr;

        bool IDAL<Admin>.Save(Admin ad)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "Adminsp @Password='" + ad.Password +"' ,@Name='" + ad.Name + "',@Dob='" + ad.Dob + "',@Address='" + ad.Address + "',@ContactNo=" + ad.ContactNo + ",@Email='" + ad.Email + "',@City='" + ad.City + "',@State='" + ad.State + "',@Date_of_joining='" + ad.Date_of_joining + "',@Zip_code=" + ad.Zip_code + ",@Job_Type='" + ad.job_Type + "'";
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

        Admin IDAL<Admin>.GetById(Object empobj)
        {
            Admin ad = new Admin();
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "select * from Admin where Login_Id=" + empobj + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    ad.Name = dr["Name"].ToString();
                    ad.Login_Id = Convert.ToInt32(dr["Login_Id"]);
                    ad.Password = dr["Password"].ToString();
                    ad.Dob = DateTime.ParseExact(((DateTime)dr["Dob"]).ToString("MM-dd-yyyy"), "MM-dd-yyyy", null);
                    ad.Address = (dr["Address"].ToString());
                    ad.ContactNo = Convert.ToInt64(dr["ContactNo"]);
                    ad.Email = (dr["Email"].ToString());
                    ad.City = (dr["City"].ToString()); ;
                    ad.State = (dr["State"].ToString());
                    ad.Date_of_joining = DateTime.ParseExact(((DateTime)dr["Date_of_joining"]).ToString("MM-dd-yyyy"), "MM-dd-yyyy", null);
                    
                    ad.Zip_code = Convert.ToInt64(dr["Zip_code"]);
                    ad.job_Type = (dr["job_Type"].ToString());


                }
                dr.Close();
                return ad;
            }
            catch (Exception ex)
            {
                return ad ;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        bool IDAL<Admin>.Delete(Admin dl)
        {
            return false;
        }
        bool IDAL<Admin>.Update(Admin up)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "Adminspupd @Password='"+up.Password+"',@Name='" + up.Name + "',@Dob='" + up.Dob + "',@Address='" + up.Address + "',@ContactNo=" + up.ContactNo + ",@Email='" + up.Email + "',@City='" + up.City + "',@State='" + up.State + "',@Date_of_joining='" + up.Date_of_joining + "',@Zip_code=" + up.Zip_code + ",@Job_Type='" + up.job_Type + "',@Login_Id="+up.Login_Id+"";
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

        public long GetMaxAdminId()
        {
            try
            {
                cmd.Connection = sqlcon;
                cmd.CommandText = "adminlogin";
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
                cmd.CommandText = "AdminUserId @Login_Id='" + obj1 + "',@Password='" + obj2 + "'";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                dr.Read();
                return dr["Login_Id"].ToString();
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

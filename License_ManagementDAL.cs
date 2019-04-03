using System;
using System.Collections.Generic;
using DEL;
using System.Data.SqlClient;

namespace DAL
{
    public class License_ManagementDAL : IDAL<License_Management>
    {
        SqlConnection sqlcon = new SqlConnection(DAL.Properties.Settings1.Default.ConStr);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        bool IDAL<License_Management>.Save(License_Management ad)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "License_Managementssp @Company_Name ='" + ad.@Company_Name + "',@Address ='" + ad.Address + "',@Contact_no =" + ad.Contact_no + ",@Key_contact_name ='" + ad.Key_contact_name + "',@Email='" + ad.Email + "',@Date_of_License_reg ='" + ad.Date_of_License_reg + "',@Commission_type ='" + ad.Commission_type + "',@Login_Id ='" + ad.Login_Id + "',@Licenseperiod='"+ad.Licenseperiod+"'";
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

        License_Management IDAL<License_Management>.GetById(Object empobj)
        {
            License_Management ad = new License_Management();
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "select * from  License_Management where Login_Id=" + empobj + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    ad.Company_Name = (dr["Company_Name"].ToString());
                    ad.Address = (dr["Policy_name"].ToString());
                    ad.Contact_no = Convert.ToInt64(dr["Contact_no"]);
                    ad.Key_contact_name = (dr["Key_contact_name"].ToString());
                    ad.Email = (dr["Email"].ToString());
                    ad.Date_of_License_reg = DateTime.ParseExact(dr["Date_of_License_reg"].ToString(), "MM-dd-yyyy", null);
                    ad.Commission_type = dr["Commission_type"].ToString();
                    ad.Login_Id = (dr["Login_Id"].ToString());


                }
                dr.Close();
                return ad;
            }
            catch (Exception ex)
            {
                return ad;
            }
            finally
            {
                sqlcon.Close();
            }
        }

        bool IDAL<License_Management>.Delete(License_Management dl)
        {
            return false;
        }
        bool IDAL<License_Management>.Update(License_Management up)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "License_Managementsspupd  @Company_Name ='" + up.@Company_Name + "',@Address ='" + up.Address + "',@Contact_no =" + up.Contact_no + ",@Key_contact_name ='" + up.Key_contact_name + "',@Email='" + up.Email + "',@Date_of_License_reg ='" + up.Date_of_License_reg + "',@Commission_type ='" + up.Commission_type + "',@Login_Id ='" + up.Login_Id + "',@Licenseperiod='" + up.Licenseperiod + "'";
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

        public string GetcommissiontypeByAgentId(object Login_Id)
        {
           
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "commission_type @Login_Id=" + Login_Id + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();

                }
                return cmd.ExecuteScalar().ToString();
             
            }
            catch (Exception ex)
            {

                return "";
            }
            finally
            {
                sqlcon.Close();
            }
        }
    }
}


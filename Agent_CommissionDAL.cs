using System;
using System.Collections.Generic;
using DEL;
using System.Data.SqlClient;

namespace DAL
{
    public class Agent_CommissionDAL : IDAL<Agent_Commission>
    {
        SqlConnection sqlcon = new SqlConnection(DAL.Properties.Settings1.Default.ConStr);
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        bool IDAL<Agent_Commission>.Save(Agent_Commission cu)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = " Agent_CommissionSp @From_Date='" + cu.From_Date + "' ,@To_Date='" + cu.To_Date + "',@Login_Id='" + cu.Login_Id + "'";
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

        Agent_Commission IDAL<Agent_Commission>.GetById(Object empobj)
        {
            Agent_Commission cu = new Agent_Commission();
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "select * from Agent_Commission where Login_Id=" + empobj + "";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();
                }
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();

                    cu.From_Date = DateTime.ParseExact(dr["From_Date"].ToString(), "MM-dd-yyyy", null);
                    cu.To_Date = DateTime.ParseExact(dr["To_Date"].ToString(), "MM-dd-yyyy", null);
                    cu.Login_Id = Convert.ToInt32(dr["Login_Id"]);

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

        bool IDAL<Agent_Commission>.Delete(Agent_Commission dl)
        {
            return false;
        }
        bool IDAL<Agent_Commission>.Update(Agent_Commission up)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "Agent_CommissionSpUpd  @From_Date='" + up.From_Date + "' ,@To_Date='" + up.To_Date + "',@Login_Id='" + up.Login_Id + "'";
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

        public double GetCommisionByAgentId(object LoginId, object fromdate, object todate)
        {
            double SumofAssured = 0;
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "customer_policy_reg_cal @Login_Id=" + LoginId + ",@FromDate='" + fromdate + "',@ToDate='" + todate +"'";
                if (sqlcon.State == System.Data.ConnectionState.Closed)
                {
                    sqlcon.Open();

                }
                SumofAssured = Convert.ToDouble(cmd.ExecuteScalar());
                return SumofAssured;
            }
            catch (Exception ex)
            {

                return SumofAssured;
            }
            finally
            {
                sqlcon.Close();
            }
        }
        public string getnamebyagentid(object Login_Id)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.Connection = sqlcon;
                cmd.CommandText = "getAdminNameById @Login_Id=" + Login_Id + "";
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

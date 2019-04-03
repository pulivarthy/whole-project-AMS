using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace AMC
{
    public partial class AgentCommission : System.Web.UI.Page
    {
        Agent_CommissionBLL agentBll = new Agent_CommissionBLL();
        License_ManagementBLL licbll = new License_ManagementBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            //RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
            if (!IsPostBack)
            {

                Calculatecomission();
            
            }
        }

        private void Calculatecomission()
        {
                txtfromdate.Text=DateTime.Now.Date.AddDays(-30).ToString("MM-dd-yyyy");
                txttodate.Text=DateTime.Now.Date.ToString("MM-dd-yyyy");
                int Months = (Convert.ToDateTime(txttodate.Text).Year) - (Convert.ToDateTime(txtfromdate.Text).Year);
                double SumofAssured = agentBll.AgenCommisionById(Convert.ToInt32( Session["Login_Id"]), Convert.ToDateTime(txtfromdate.Text), Convert.ToDateTime(txttodate.Text));
                double Commission = 0;
                string type = licbll.CommissionTypeById(Convert.ToInt32(Session["Login_Id"]));
                switch(type)
                {
                    case "I":
                            if (SumofAssured < 200000)
                            {
                                Commission = SumofAssured / 100 * 1.5;
                            }else if(SumofAssured<=500000)
                            {
                                Commission = SumofAssured / 100 * 2.5;
                            }
                            else if (SumofAssured <= 1000000)
                            {
                                Commission = SumofAssured / 100 * 4;
                            }
                            else if (SumofAssured > 1000000)
                            {
                                Commission = SumofAssured / 100 * 5;
                            }
                    break;
                    case "II":
                        if (SumofAssured < 200000)
                            {
                                Commission = SumofAssured / 100 * 2;
                            }else if(SumofAssured<=500000)
                            {
                                Commission = SumofAssured / 100 * 3;
                            }
                            else if (SumofAssured <= 1000000)
                            {
                                Commission = SumofAssured / 100 * 5;
                            }
                            else if (SumofAssured > 1000000)
                            {
                                Commission = SumofAssured / 100 * 7;
                            }
                    break;
                    case "III":
                        if (SumofAssured < 200000)
                            {
                                Commission = SumofAssured / 100 * 3;
                            }else if(SumofAssured<=500000)
                            {
                                Commission = SumofAssured / 100 * 5;
                            }
                            else if (SumofAssured <= 1000000)
                            {
                                Commission = SumofAssured / 100 * 7;
                            }
                            else if (SumofAssured > 1000000)
                            {
                                Commission = SumofAssured / 100 * 10;
                            }
                    break;

                   

        }
                lbagentid.Text = Session["Login_Id"].ToString();
                lbtotalcommission.Text = Commission.ToString();
                lbtotalamount.Text = SumofAssured.ToString();
            lbagentname.Text= agentBll.agentname(Convert.ToInt32(Session["Login_Id"]));
}

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Calculatecomission();
        }

        protected void btnsubmit1_Click(object sender, EventArgs e)
        {
            
            GridView2.Visible = false;
        }
    }
}
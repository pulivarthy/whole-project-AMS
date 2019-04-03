using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;


namespace AMC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            CustomerBLL a = new CustomerBLL();
            string login = txtLoginid.Text;
            string password = txtPassword.Text;
            if (a.GetByid(login, password) != string.Empty)
            {
                Session["Login_Id"] = txtLoginid.Text;
                Response.Redirect("UpdateCus.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        
        }

        

       
    }

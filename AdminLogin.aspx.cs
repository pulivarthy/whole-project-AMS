
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DEL;
namespace AMC
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit1_Click(object sender, EventArgs e)
        {
            AdminBLL a = new AdminBLL();
            string login = txtAdminLogin.Text;
            string password = txtPassword.Text;
            if (a.GetByid(login, password) != string.Empty)
            {
                Session["Login_Id"] = txtAdminLogin.Text;
                Response.Redirect("UpdateAdm.aspx");
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }
        }
    }
}
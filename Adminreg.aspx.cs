using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DEL;
using BLL;

namespace AMC
{
    public partial class Adminreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            RangeValidatorDoj.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
            RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Admin admin = new Admin();
            AdminBLL adminbl = new AdminBLL();
            
            admin.Password = txtPassword.Text;
            admin.Name = txtName.Text;
            admin.Dob = DateTime.ParseExact(txtDob.Text,"yyyy-MM-dd",null);
            admin.Address = txtAddress.Text;
            admin.ContactNo = long.Parse(txtContactno.Text);
            admin.Email = txtEmail.Text;
            admin.City = DropDownList1.SelectedItem.Text;
            admin.State = DropDownList2.SelectedItem.Text;
            admin.Date_of_joining = DateTime.ParseExact(txtDoj.Text, "yyyy-MM-dd", null);
            admin.Zip_code =long.Parse( txtZipCode.Text);
            if (RadioButton_CaptivateAgent.Checked)
            {
                admin.job_Type = "CaptivateAgent";

            }
            else
            {
                admin.job_Type = "IndependentAgent";
            }

            if (adminbl.Save(admin))
            {
                lbMessage.Text="Successfully!!";
                txtAgentRegid.Text = adminbl.getMaxAdminId().ToString();
            }
            else
            {
                lbMessage.Text = "Fail!!";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            //txtPassword.Text = string.Empty;
            //txtName.Text = string.Empty;
            //txtDob.Text = string.Empty;
            //txtAddress.Text = string.Empty;
            //txtContactno.Text = string.Empty;
            //txtEmail.Text = string.Empty;
            //DropDownList1.Text = string.Empty;
            //DropDownList2.Text = string.Empty;
            //txtDoj.Text = string.Empty;
            //txtZipCode.Text = string.Empty;
            Server.Transfer("Adminreg.aspx");
        }
        
    }
}
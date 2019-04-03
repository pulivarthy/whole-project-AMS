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
    public partial class UpdateAdm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Id"] != null)
            {

                RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
                if (!Page.IsPostBack)
                {
                    AdminBLL adminbl = new AdminBLL();
                    Admin admin = adminbl.GetAdminInfoById(Convert.ToInt32(Session["Login_Id"]));
                    txtAgentRegid.Text = Session["Login_id"].ToString();
                    txtName.Text = admin.Name;
                    txtDob.Text = admin.Dob.ToString("MM-dd-yyyy");
                    txtAddress.Text = admin.Address;
                    txtContactno.Text = admin.ContactNo.ToString();
                    txtEmail.Text = admin.Email;
                    DropDownList1.SelectedItem.Text = admin.City;
                    DropDownList2.SelectedItem.Text = admin.State;
                    txtDoj.Text = admin.Date_of_joining.ToString("MM-dd-yyyy");
                    txtZipCode.Text = admin.Zip_code.ToString();
                    if (admin.job_Type == "Captivate Agent")
                    {
                        RadioButton_CaptivateAgent.Checked = true;
                    }
                    else
                    {
                        RadioButton_IndependentAgent.Checked = true;
                    }
                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Admin a = new Admin();
            AdminBLL admbll = new AdminBLL();
            a.Login_Id = Convert.ToInt32( Session["Login_id"]);
            a.Password = txtPassword.Text;
            a.Name = txtName.Text;
            a.Dob = DateTime.ParseExact(txtDob.Text, "MM-dd-yyyy", null);
            a.Address = txtAddress.Text;
            a.ContactNo = Convert.ToInt64(txtContactno.Text);
            a.Email = txtEmail.Text;
            a.City = DropDownList1.SelectedItem.Text;
            a.State = DropDownList2.SelectedItem.Text;
            a.Date_of_joining = DateTime.ParseExact(txtDoj.Text, "MM-dd-yyyy", null);
            a.Zip_code = Convert.ToInt64(txtZipCode.Text);
            if (RadioButton_CaptivateAgent.Checked)
            {
                a.job_Type = "CaptivateAgent";
            }
            else
            {
                a.job_Type = "IndependentAgent";
               
            }
            if (admbll.Adminspupd(a))
            {
                lbMessage.Text = "Updated Successfully!!!";
            }
            else
            {
                lbMessage.Text = "Update Failed!!!";
            }


        }
    }
}
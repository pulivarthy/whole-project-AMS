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
    public partial class LicenseMangement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            License_Management lic = new License_Management();
            License_ManagementBLL licbal = new License_ManagementBLL();
            lic.Company_Name = txtName.Text;
            lic.Address = txtAddress.Text;
            lic.Contact_no = long.Parse(txtContactno.Text);
            lic.Key_contact_name = txtKeycontactname.Text;
            lic.Email = txtEmail.Text;
            lic.Date_of_License_reg = DateTime.ParseExact(txtDoj.Text, "yyyy-MM-dd", null);
            if (RadioButton_1year.Checked)
            {
                lic.Licenseperiod = "1Year";

            }
            else
                if (RadioButton_2year.Checked)
                {
                    lic.Licenseperiod = "2Year";
                }
                else
                {
                    lic.Licenseperiod = "3Year";
                }
            lic.Commission_type = DropDownList1.SelectedItem.Text;
            lic.Login_Id = Session["Login_id"].ToString();
            if (licbal.Save(lic))
            {

                txtLabel.Text = "License added successfully";

            }
            else
            {
                txtLabel.Text = "Not added";
            }
        }

       
       
    }
}
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
    public partial class Customer_App : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_id"] == null)
            {
                Response.Redirect("Home.aspx");
            }

            RangeValidatorDoa.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Customer_app custapp = new Customer_app();
            Customer_appBLL custappbl = new Customer_appBLL();
            custapp.Name = txtName.Text;
            custapp.Address = txtAddress.Text;
            custapp.City = DropDownList1.SelectedItem.Text;
            custapp.State = DropDownList2.SelectedItem.Text;
            custapp.Pincode = long.Parse(txtPincode.Text);
            if (RadioButton_Employee.Checked)
            {
                custapp.Employee_Type = "Employee";
            }
            else
            {
                custapp.Employee_Type = "Self-Employee";
            }
            custapp.Contact_no = long.Parse(txtContactno.Text);
            custapp.Email = txtEmail.Text;
            if (RadioButton_phone.Checked)
            {
                custapp.Contact_mode = "Phone";
            }
            else
            {
                custapp.Contact_mode = "Email";
            }
            custapp.Insurance_Already = long.Parse(txtInsurance.Text);
            custapp.Annual_income = Convert.ToInt64(txtAnnualIncome.Text);
            custapp.Date_of_appointment =DateTime.ParseExact (txtDoa.Text,"yyyy-MM-dd",null);
            custapp.Preferrable_time = DateTime.ParseExact(txtPreferableTime.Text,"HH:mm",null);
            custapp.Customer_id=Session["Login_id"].ToString();
            
            if (custappbl.Save(custapp))
            {
                lbMessage.Text = "Appointment Fixed!!!";
               
            }
            else
            {
                lbMessage.Text = "Create New Appointment!!!";
            }
        }

        
    }
}
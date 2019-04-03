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
    public partial class CustomerPolicyRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_Id"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
            RangeValidatorDoj.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");
            RangeValidatorDok.MaximumValue = DateTime.Now.ToString("MM-dd-yyyy");

            if (!Page.IsPostBack)
            {
                ddlCustApp.DataSource = SqlDataSource1;
                ddlCustApp.DataTextField = "Name";
                ddlCustApp.DataValueField = "Customer_Id";
                ddlCustApp.DataBind();
                ddlCustApp.Items.Insert(0, "--SELECT--");
            }

        }

      


        protected void RadioButtonExistingcustomer1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCustApp_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSource2.SelectCommand = "select AppointmentId from Customer_app where Customer_id=" + ddlCustApp.SelectedItem.Value + "";
            
            Customer_Policy_RegBLL custbll = new Customer_Policy_RegBLL();
           
        
            
            ddlAppintId.DataSource = SqlDataSource2;
            ddlAppintId.DataTextField = "AppointmentId";
            ddlAppintId.DataValueField = "AppointmentId";
            ddlAppintId.DataBind();
            ddlAppintId.Items.Insert(0, "--SELECT--");
            
        }

        protected void ddlAppintId_SelectedIndexChanged(object sender, EventArgs e)
        {
            Customer_Policy_RegBLL custbll=new Customer_Policy_RegBLL();
          Customer_Policy_Reg cust=  custbll.GetPoilcyDetailsByAppointId(Convert.ToInt32(ddlAppintId.SelectedValue ));
          
          if (cust.Appointment_id!=null)
          {
              txtPolicyName.Text = cust.Policy_name;
              txtPolicyCompany.Text = cust.Policy_company;
              txtDobooking.Text = cust.Date_of_booking.ToString("MM-dd-yyyy");
              txtsumAssured.Text = cust.Sum_assured;
              txtPaymentMode.Text = cust.Payment_mode;
              
          }
          else
          {
              Response.Write("<script>alert('This Policy is Not Registered')</script>");
          }
            

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Customer_Policy_Reg cust_policy_reg = new Customer_Policy_Reg();
            Customer_Policy_RegBLL cust_policy_regbll = new Customer_Policy_RegBLL();

            cust_policy_reg.Customer_id =Convert.ToInt32( ddlCustApp.SelectedValue);
            cust_policy_reg.Policy_name = txtPolicyName.Text;
            cust_policy_reg.Policy_company = txtPolicyCompany.Text;
            cust_policy_reg.Date_of_booking = DateTime.ParseExact(txtDobooking.Text,"yyyy-MM-dd",null);
            cust_policy_reg.Sum_assured = txtsumAssured.Text;
            cust_policy_reg.Payment_mode = txtPaymentMode.Text;
            cust_policy_reg.Login_Id = Convert.ToInt64(Session["Login_id"].ToString());
            cust_policy_reg.Date_of_birth = DateTime.ParseExact(txtDob.Text, "yyyy-MM-dd", null);
            cust_policy_reg.Height =txtHeight.Text;
            cust_policy_reg.Weight = txtWeight.Text;
            cust_policy_reg.Identification_mark = txtIdentificationMarks.Text;
            cust_policy_reg.Nominee_name = txtNomineeName.Text;
            cust_policy_reg.Nominee_relationship = txtNomineeRelationship.Text;
            cust_policy_reg.Nominee_date_of_birth = DateTime.ParseExact(txtNomineedob.Text, "yyyy-MM-dd", null);
            cust_policy_reg.Contact_no = txtContactno.Text;
            cust_policy_reg.Appointment_id = Convert.ToInt64(ddlAppintId.SelectedValue);

            if (cust_policy_regbll.Save(cust_policy_reg))
            {
                txtstatus.Text = "Policy Register!!!";
            }
            else
            {
                txtstatus.Text = "Failed!!!";
            }
        }
    } 
}
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
    public partial class UpdateCus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_id"] != null)
            {

                if (!Page.IsPostBack)
                {

                    CustomerBLL custappbl = new CustomerBLL();
                    Customer custapp = custappbl.GetCustomerInfoById(Convert.ToInt32(Session["Login_id"]));

                    txtCustomerRegid.Text = Session["Login_id"].ToString();

                    txtName.Text = custapp.Name;
                    txtAddress.Text = custapp.Address;
                    txtDob.Text = custapp.Date_of_birth.ToString("MM-dd-yyyy");
                    DropDownList1.SelectedItem.Text = custapp.City;
                    DropDownList2.SelectedItem.Text = custapp.State;
                    txtZipCode.Text = custapp.Zipcode.ToString();


                    txtContactno.Text = custapp.Contact_no.ToString();
                    txtEmail.Text = custapp.Email;
                    txtDoj.Text = custapp.Date_of_join.ToString("MM-dd-yyyy");
                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Customer c = new Customer();
            CustomerBLL custbl = new CustomerBLL();
            c.Customer_id=Convert.ToInt32(Session["Login_id"]);
            c.Password = txtPassword.Text;
            c.Name = txtName.Text;
            c.Address = txtAddress.Text;
            c.Date_of_birth = DateTime.ParseExact(txtDob.Text, "MM-dd-yyyy", null);
            c.City = DropDownList1.SelectedItem.Text;
            c.State = DropDownList2.SelectedItem.Text;
            c.Zipcode = Convert.ToInt64(txtZipCode.Text);
            c.Contact_no = Convert.ToInt64(txtContactno.Text);
            c.Email = txtEmail.Text;
            c.Date_of_join = DateTime.ParseExact(txtDoj.Text, "MM-dd-yyyy", null);

            if (custbl.CustomerUpd(c))
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
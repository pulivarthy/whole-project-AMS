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
    public partial class CustomerReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RangeValidatorDoj.MaximumValue = DateTime.Now.ToString("MM/dd/yyyy");
            RangeValidatorDob.MaximumValue = DateTime.Now.ToString("MM/dd/yyyy");
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Customer cu = new Customer();
            CustomerBLL cul = new CustomerBLL();
            cu.Password = txtPassword.Text;
            cu.Name = txtName.Text;
            cu.Date_of_birth = DateTime.ParseExact(txtDob.Text, "yyyy-MM-dd", null);
            cu.Address = txtAddress.Text;
            cu.Contact_no = long.Parse(txtContactno.Text);
            cu.Email = txtEmail.Text;
            cu.City = DropDownList1.SelectedItem.Text;
            cu.State = DropDownList2.SelectedItem.Text;
            cu.Date_of_join = DateTime.ParseExact(txtDoj.Text, "yyyy-MM-dd", null);
            cu.Zipcode = long.Parse(txtZipCode.Text);
            

            if (cul.Save(cu))
            {
                lbMessage.Text = "Successfully!!";
              txtCustomerRegid.Text=  cul.getMaxLoginid().ToString();
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

            Server.Transfer("CustomerReg.aspx");
        }
    }
}
<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Customer_App.aspx.cs" Inherits="AMC.Customer_App" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
    body {
           
        background-image:url("images/updatecust.jfif");
       height: 700px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
   
        }
        </style>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Name" runat="server" Text="Name" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ToolTip="Name must be less than 30 characters" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator_Name" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="txtName" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_Name" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtName" ValidationExpression="([A-Za-z]{1,29})" ></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Address" runat="server" Text="Address" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"  ToolTip="Address must be less than 100 characters" TextMode="MultiLine" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Enter Address" ControlToValidate="txtAddress" ></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="City" runat="server" Text="City" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Chennai</asp:ListItem>
                    <asp:ListItem>Coimbatore</asp:ListItem>
                    <asp:ListItem>Chengalpattu</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="State" runat="server" Text="State" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telagana</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Pincode" runat="server" Text="Pincode" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>

            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorZipCode" runat="server" ErrorMessage="Enter Pincode" ControlToValidate="txtPincode" ></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidatorZipCode" runat="server" ErrorMessage="Invalid Format" ValidationExpression="([0-9]{6})"  ControlToValidate="txtPincode"></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="EmployeementType" runat="server" Text="Employeement Type" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:RadioButton ID="RadioButton_Employee" runat="server" Text="Employee" Checked="True" GroupName="EmployeementType" />
                <asp:RadioButton ID="RadioButton_SelfEmployee" runat="server" Text="Self-Employee" GroupName="EmployeementType" />
             </div>
            <div class="col-sm-4">
              
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Contactno" runat="server" Text="Contact No" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtContactno" runat="server" CssClass="form-control"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtContactno" ValidationExpression="([0-9]{10})"  ></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Email" runat="server" Text="Email" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Email" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtEmail" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_Email" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="ContactMode" runat="server" Text="Contact Mode" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:RadioButton ID="RadioButton_phone" runat="server" Text="Phone" Checked="True" GroupName="ContactMode" />
                <asp:RadioButton ID="RadioButton_email" runat="server" Text="Email" GroupName="ContactMode" />
             </div>
            <div class="col-sm-4">
              
            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Insurance" runat="server" Text="Insurance Already" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtInsurance" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="AnnualIncome" runat="server" Text="Annual Income" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtAnnualIncome" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Doa" runat="server" Text="Date Of Appointment" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDoa" runat="server" TextMode="Date" CssClass="form-control" placeholder="mm-dd-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoa" runat="server" ErrorMessage="Enter Date of Appointment" ControlToValidate="txtDoa" ></asp:RequiredFieldValidator>
               <asp:RangeValidator ID="RangeValidatorDoa" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" ControlToValidate="txtDoa" Type="Date"></asp:RangeValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="PreferableTime" runat="server" Text="Preferable Time" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPreferableTime" runat="server" TextMode="Time" CssClass="form-control" placeholder="HH:mm"></asp:TextBox>
            </div>
          </div>
    
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Message" runat="server" Text="" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Label ID="lbMessage" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="submit" runat="server"  CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click"/> 
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>  
</asp:Content>

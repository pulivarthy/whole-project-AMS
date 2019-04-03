<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="UpdateCus.aspx.cs" Inherits="AMC.UpdateCus" %>
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
                <asp:Label ID="CustomerRegid" runat="server" Text="Login Id" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtCustomerRegid" runat="server" CssClass="form-control" ReadOnly="True"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Password" runat="server" Text="Password" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Name" runat="server" Text="Name" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Dob" runat="server" Text="Date_Of_Birth" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDob" runat="server" TextMode="DateTime" CssClass="form-control" placeholder="mm-dd-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDob" runat="server" ErrorMessage="Enter Date of birth" ControlToValidate="txtDob" ></asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidatorDob" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910"></asp:RangeValidator>--%>
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
                <asp:Label ID="Contactno" runat="server" Text="Contact No" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtContactno" runat="server" CssClass="form-control"></asp:TextBox>
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
                <asp:Label ID="ZipCode" runat="server" Text="Zip Code" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>

            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorZipCode" runat="server" ErrorMessage="Enter ZipCode" ControlToValidate="txtZipCode" ></asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidatorZipCode" runat="server" ErrorMessage="Invalid Format" ValidationExpression="([0-9]{6})" ControlToValidate="txtZipCode"></asp:RegularExpressionValidator>

            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Doj" runat="server" Text="Date_Of_Join" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDoj" runat="server" TextMode="DateTime" CssClass="form-control" placeholder="mm-dd-yyyy" ></asp:TextBox>
            </div>

            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoj" runat="server" ErrorMessage="Enter Date of Join" ControlToValidate="txtDoj" ></asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidatorDoj" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910"></asp:RangeValidator>--%>
            </div>
            <div class="col-sm-1"></div>
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
                <asp:Label ID="Update" runat="server"  CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"  /> 
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1">
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
</asp:Content>

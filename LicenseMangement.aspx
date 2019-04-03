<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LicenseMangement.aspx.cs" Inherits="AMC.LicenseMangement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
  
        body {
           
        background-image:url("images/polireg.jpg");
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
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

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
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtContactno" ValidationExpression="([0-9]{10})"  ></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
       <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Keycontactname" runat="server" Text="Key Contact Name" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtKeycontactname" runat="server" CssClass="form-control"  ></asp:TextBox>
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
                <asp:Label ID="Doj" runat="server" Text="Date Of License Registration" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDoj" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoj" runat="server" ErrorMessage="Enter Date Of License Registration" ControlToValidate="txtDoj" ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDob" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" ControlToValidate="txtDoj" Type="Date"></asp:RangeValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
      <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Licenceperiod" runat="server" Text="Licence period " CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:RadioButton ID="RadioButton_1year" runat="server" Text="1 Year" Checked="True" GroupName="Licence period" />
                <asp:RadioButton ID="RadioButton_2year" runat="server" Text="2 Year" GroupName="Licence period" />
                <asp:RadioButton ID="RadioButton_3year" runat="server" Text="3 Year" GroupName="Licence period" />
             </div>
            <div class="col-sm-4">
              
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="CommissionType" runat="server" Text="Commission Type" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
 
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Label" runat="server"  CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Label ID="txtLabel" runat="server" Text=""></asp:Label> 
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
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click"  /> 
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
</asp:Content>

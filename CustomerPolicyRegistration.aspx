<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CustomerPolicyRegistration.aspx.cs" Inherits="AMC.CustomerPolicyRegistration" %>
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
                <asp:Label ID="Existingcustomer" runat="server" Text="Existing Customer" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:DropDownList ID="ddlCustApp" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCustApp_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Value="0">--SELECT--</asp:ListItem>
                     
                </asp:DropDownList> 
                
                </div>
        <div class="col-sm-3"> 
                 <asp:Label ID="Label1" runat="server" Text="Appointment Id:" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="ddlAppintId" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAppintId_SelectedIndexChanged"></asp:DropDownList>
             </div>
            <div class="col-sm-2"> </div>
            
              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT DISTINCT [Customer_id], [Name] FROM [Customer_app]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT DISTINCT [AppointmentId] FROM [Customer_app]"></asp:SqlDataSource>
           
               <%-- <asp:Label ID="Label1" runat="server" Text="Appointment Id:" CssClass="control-label"></asp:Label>
                <asp:DropDownList ID="ddlAppintId" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAppintId_SelectedIndexChanged"></asp:DropDownList>--%>
           
        </div>
 <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="PolicyName" runat="server" Text="Policy Name" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPolicyName" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="PolicyCompany" runat="server" Text="Policy Company" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPolicyCompany" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
      <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Dobooking" runat="server" Text="Date Of Booking" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDobooking" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Date Of Booking" ControlToValidate="txtDobooking" ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDob" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" ControlToValidate="txtDobooking" Type="Date"></asp:RangeValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="sumAssured" runat="server" Text="Sum Assured" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
 <asp:TextBox ID="txtsumAssured" runat="server" CssClass="form-control"  ></asp:TextBox>
                </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ErrorMessage="Enter Sum Assured" ControlToValidate="txtsumAssured" ></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
    
   
     
          
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="PaymentMode" runat="server" Text="Payment Mode" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtPaymentMode" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
       <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Agentid" runat="server" Text="Agent Id" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtAgentid" runat="server" CssClass="form-control" ReadOnly="True" ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Dob" runat="server" Text="Date Of Birth" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtDob" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Date Of Birth" ControlToValidate="txtDob" ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDoj" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" Type="Date" ControlToValidate="txtDob"></asp:RangeValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
      <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Height" runat="server" Text="Height in cm" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Weight" runat="server" Text="Weight in kg" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="IdentificationMarks" runat="server" Text="Identification Marks" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtIdentificationMarks" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="NomineeName" runat="server" Text="Nominee Name" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtNomineeName" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="NomineeRelationship" runat="server" Text="Nominee Relationship" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtNomineeRelationship" runat="server" CssClass="form-control"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>

        <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Nomineedob" runat="server" Text="Nominee Date of Birth" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtNomineedob" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoj" runat="server" ErrorMessage="Enter the Nominee Date of Birth" ControlToValidate="txtNomineedob" ></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDok" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" ControlToValidate="txtNomineedob" Type="Date"></asp:RangeValidator>
            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="Contactno" runat="server" Text="Contact No" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtContactno" runat="server" CssClass="form-control"  ></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Format" ControlToValidate="txtContactno" ValidationExpression="([0-9]{10})"  ></asp:RegularExpressionValidator>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>

    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="status" runat="server" Text="" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Label ID="txtstatus" runat="server" Text=""></asp:Label>
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
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" /> 
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
</asp:Content>

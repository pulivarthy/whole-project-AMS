<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AgentCommission.aspx.cs" Inherits="AMC.AgentCommission" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
    body{
           
        background-image:url("images/agentcommission.jpeg");
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
                <asp:Label ID="fromdate" runat="server" Text="From Date" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtfromdate" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ValidationGroup="btnsubmit1" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter from date" ControlToValidate="txtfromdate" ></asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidatorDob" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910" ControlToValidate="txtfromdate"></asp:RangeValidator>--%>
            </div>
            <div class="col-sm-1"></div>
        </div>
    <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="todate" runat="server" Text="To Date" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txttodate" runat="server" TextMode="Date" CssClass="form-control" placeholder="dd-mm-yyyy" ValidationGroup="btnsubmit1" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter To Date" ControlToValidate="txttodate" ></asp:RequiredFieldValidator>
                <%--<asp:RangeValidator ID="RangeValidatorDob" runat="server" ErrorMessage="Invalid Format" MinimumValue="01/01/1910"></asp:RangeValidator>--%>
            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
         <div class="col-sm-2">
            </div>
            <%--<div class="col-sm-3">
                <asp:Label ID="submit1" runat="server"  CssClass="control-label"></asp:Label>
            </div>--%>
            <div class="col-sm-3">
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="GetAgentId" runat="server" Text="Get Agent Id" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="txtGetAgentId" runat="server" CssClass="form-control" ValidationGroup="btnsubmit"  ></asp:TextBox>
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>

  
     <div class="row form-group">
            <div class="col-sm-2"><asp:Label ID="AgentId" runat="server" Text="Agent ID"></asp:Label>
                <asp:Label ID="lbagentid" runat="server" Text="Agent Id"></asp:Label>
            </div>
            <div class="col-sm-2"><asp:Label ID="agentname" runat="server" Text="Agent Name"></asp:Label>
                <asp:Label ID="lbagentname" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="col-sm-3"><asp:Label ID="totalamount" runat="server" Text="Total amount"></asp:Label>
                <asp:Label ID="lbtotalamount" runat="server" Text="Total Amount"></asp:Label>
            </div>
            <div class="col-sm-4"><asp:Label ID="totalcommission" runat="server" Text="Total Commission"></asp:Label>
                <asp:Label ID="lbtotalcommission" runat="server" Text="Total Commission"></asp:Label>
            </div>
            <div class="col-sm-1"> </div>
        </div>
     <div class="row form-group">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <asp:Label ID="submit" runat="server"  CssClass="control-label"></asp:Label>
            </div>
            <div class="col-sm-3">
                <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" ValidationGroup="btnsubmit" />
            </div>
            <div class="col-sm-4">

            </div>
            <div class="col-sm-1"></div>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT * FROM [Customer]">
    </asp:SqlDataSource>
   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Customer_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" InsertVisible="False" ReadOnly="True" SortExpression="Customer_id" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Date_of_birth" HeaderText="Date_of_birth" SortExpression="Date_of_birth" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Contact_no" HeaderText="Contact_no" SortExpression="Contact_no" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Date_of_join" HeaderText="Date_of_join" SortExpression="Date_of_join" />
            <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" SortExpression="Zipcode" />
        </Columns>
    </asp:GridView>--%>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Login_Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Login_Id" HeaderText="Login_Id" InsertVisible="False" ReadOnly="True" SortExpression="Login_Id" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField  DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Date_of_joining" HeaderText="Date_of_joining" SortExpression="Date_of_joining" />
            <asp:BoundField DataField="Zip_code" HeaderText="Zip_code" SortExpression="Zip_code" />
            <asp:BoundField DataField="Job_Type" HeaderText="Job_Type" SortExpression="Job_Type" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Constr %>" SelectCommand="SELECT * FROM [Admin] WHERE ([Login_Id] = @Login_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtGetAgentId" Name="Login_Id" PropertyName="Text" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

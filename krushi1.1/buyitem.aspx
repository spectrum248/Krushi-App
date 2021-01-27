<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buyitem.aspx.cs" Inherits="krushi1._1.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="cssfileforcod/StyleSheet1.css" rel="stylesheet" />
    <link href="cssfileforcod/StyleSheet2.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="navbar-inner">
		<div class="row-fluid">
			<div class="span7">
				<h3>Buy an Item</h3>
				<div class="control-group">
                    <label class="control-label">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </label>
				</div>
                <div class="control-group">
                    <label class="control-label">Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                     <asp:TextBox ID="TextBox3" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" runat="server"></asp:TextBox>
                    </label>
			
				  <div class="control-group">
					<label class="control-label"><span>Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:TextBox ID="TextBox1" runat="server" Height="81px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                      <br />
                      <br />
                      <br />
                      <br />payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cash on Delivery<br />
                      <br />
                      <br />
                      </span>
                      <asp:Label ID="Label2" runat="server" Text="Total Price :: Rs."></asp:Label>
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                      </label>
&nbsp;</div>
				  <p id=" buy">
                      <asp:Button ID="Button1" class="shopBtn" runat="server" Text="Proceed to CheckOut" OnClick="Button1_Click" />
				  
				  </div>
			</div>
		</div>
        </center>
</asp:Content>

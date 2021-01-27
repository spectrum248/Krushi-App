<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="item_description.aspx.cs" Inherits="krushi1._1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 24px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: center;
            height: 359px;
        }
        .auto-style7 {
            margin-right: 1172px;
        }
        .auto-style8 {
            text-align: center;
            height: 359px;
            width: 348px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <center>
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style7" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <table class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductName") %>' BackColor="#66FFCC"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8" rowspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductPic") %>' />
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Rs."></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Text="Buy Now" Width="127px" BackColor="Aqua" OnClick="Button1_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" BackColor="#00CCFF" Text="Add to Cart" CommandArgument='<%# Eval("ProductID") %>' CommandName="Item" OnClick="Button3_Click" />
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList></center>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProductDetails] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
 </div>   
</asp:Content>

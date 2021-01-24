<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addM.aspx.cs" Inherits="project_702.addM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style1
        {
            width: 195px;
        }
        .style1
        {
            width: 272px;
        }
        .auto-style1 {
            width: 316px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellspacing=4 cellpadding=2 width=100%>
        <tr>
            <td class="style1">Select product CATEGORY</td>
            <td class="auto-style1">
                <asp:DropDownList ID="catText" runat="server" AutoPostBack="True" Width="81px" 
                    Height="19px">
                    <asp:ListItem>Horror</asp:ListItem>
                    <asp:ListItem>Action</asp:ListItem>
                    <asp:ListItem>Comedy</asp:ListItem>
                    <asp:ListItem>Movies</asp:ListItem>
                    <asp:ListItem>Romance</asp:ListItem>
                    <asp:ListItem>Drama</asp:ListItem>
                    <asp:ListItem>New</asp:ListItem>
                    <asp:ListItem Value="miscellaneous">miscellaneous</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">Enter product BRAND</td>
            <td class="auto-style1">
                <asp:DropDownList ID="brandText" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="brand" DataValueField="brand">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">Enter product NAME</td>
            <td class="auto-style1">
                <asp:TextBox ID="nameText" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameText" 
                    ErrorMessage="Please fill the name of product"   ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">Enter product Discription</td>
            <td class="auto-style1">
                <asp:TextBox ID="disText" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="nameText" 
                    ErrorMessage="Please fill the Discription of product"   ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">Browse product IMAGE </td>
            <td class="auto-style1">
                <asp:FileUpload ID="FileUpload1"  runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="show image path"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Save" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [brand] FROM [brand] WHERE ([catagory] = @catagory)">
        <SelectParameters>
            <asp:ControlParameter ControlID="catText" Name="catagory" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    

</asp:Content>

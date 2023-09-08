<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookAdd.aspx.cs" Inherits="WebFormCRUD.BookAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-size: large;
            background-color: #0000FF;
        }
        .auto-style5 {
            font-size: large;
            background-color: #FFFF00;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style3">Add Book</h1>
        <strong>
        <asp:Button ID="Button1" runat="server" Text="Goto Library" OnClick="Back_to_Library" CssClass="auto-style5" />
        </strong>
        <div>
            <div style="text-align: center">
        </div>
        </div>
            <table align="center" style="width: 883px; height: 481px"> 
                <tr>
                    <th>Title:</th>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server" style="font-size: large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Description:</th>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" style="font-size: large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Author:</th>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Price:</th>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Rating:</th>
                    <td>
                        <asp:TextBox ID="RatingTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButtonClick" style="text-align: center; " CssClass="auto-style4"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="ResultLable" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>

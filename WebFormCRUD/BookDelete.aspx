<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDelete.aspx.cs" Inherits="WebFormCRUD.BookDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
        .auto-style2 {
            height: 141px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
            background-color: #FFFF00;
            font-weight: bold;
        }
        .auto-style6 {
            font-size: large;
            color: #FFFFFF;
            background-color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style3">Delete Book</h1>
        <strong>
        <asp:Button ID="Button1" runat="server" Text="Goto Library" OnClick="Back_to_Library" CssClass="auto-style5" />
        </strong>
        <div>
            <table align="center" style="width: 883px; ">
                <tr>
                    <th class="auto-style2">Book Id:</th>
                    <td class="auto-style2">
                        <asp:TextBox ID="BookIdTextBox" runat="server" Style="font-size: large"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" style="text-align: center" class="auto-style1">
                        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButtonClick" style="text-align: center; " CssClass="auto-style6"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="ResultLable" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

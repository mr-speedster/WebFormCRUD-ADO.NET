<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="WebFormCRUD.BookList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book List</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 width: 239px; text-align: center;" class="auto-style1">Latest Books</h1>
        <div>
            <asp:Button ID="AddButton" runat="server" Text="Add Book" Width="397px" OnClick="AddButton_Click" BackColor="green" style="color: #000000; font-size: large; background-color: #00FFFF"/>
            <asp:Button ID="UpdateButton" runat="server" Text="Update Book" Width="451px" OnClick="UpdateButton_Click" BackColor="yellow" style="font-size: large"/> <br /><br />
            <asp:GridView ID="BookGridView" runat="server" Width="1348px" OnSelectedIndexChanged="BookGridView_SelectedIndexChanged" style="text-align: center; background-color: #FFFF99"></asp:GridView><br />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Book" Width="272px" OnClick="DeleteButton_Click" BackColor="red" style="font-size: large"/>
        </div>
    </form>
</body>
</html>

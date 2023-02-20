<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chao.aspx.cs" Inherits="DoiTuong.Chao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Đăng nhập</asp:HyperLink>
        </div>
    </form>
</body>
</html>

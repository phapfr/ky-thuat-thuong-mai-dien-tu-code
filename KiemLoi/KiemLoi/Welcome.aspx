<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="KiemLoi.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" cellpadding="5" cellspacing="0">
            <tr>
                <td>&nbsp;</td>
                <td style="color:red; font-size:xx-large">WELCOME</td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" ImageUrl="/img/1.jpg" Width="117px" runat="server" Height="143px" />
                </td>
                <td style="color:blue">
                    Xin chào <br />
                    Bạn đã đăng nhập thành công <br />
                    Chúc bạn một ngày tốt lành <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" href="Login.aspx" runat="server">Quay về trang login</asp:HyperLink>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>

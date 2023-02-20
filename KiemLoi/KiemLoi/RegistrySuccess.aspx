<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrySuccess.aspx.cs" Inherits="KiemLoi.RegistrySuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="cssRegistrySucess.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table align="center">
            <tr>
                <td> &nbsp; </td>
                <td style="font-size:xx-large; color:red; padding-left:15px" > Registry </td>
            </tr>
            <tr>
                <td>Username</td>
                <td style="padding-left:15px"> <%=un%> </td>
            </tr>
            <tr>
                <td>Password</td>
                <td style="padding-left:15px"> <%=pw%> </td>
            </tr>
            <tr>
                <td>Birthdate</td>
                <td style="padding-left:15px"> <%=bd%> </td>
                <td>(dd/mm/yy)</td>
            </tr>
            <tr>
                <td>Gender</td>
                <td style="padding-left:15px"> <%=gd%> </td>
            </tr>
            <tr>
                <td>Email-Address</td>
                <td style="padding-left:15px"> <%=ea%> </td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td class="td" style="padding-top:20px">
                    <asp:HyperLink ID="HyperLink1" href="Registry.aspx" runat="server"> ↺ Return</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

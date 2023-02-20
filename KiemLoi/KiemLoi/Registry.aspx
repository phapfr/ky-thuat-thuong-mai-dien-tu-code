<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registry.aspx.cs" Inherits="KiemLoi.Registry" %>

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
                <td style="color:red; font-size:xx-large"> <b>Registry</b> </td>

            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server" Width="200"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không để trống</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]{6,20}">Username từ 6 đến 20 ký tự</asp:RegularExpressionValidator>
                 </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="200"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="RegularExpressionValidator" 
                       ForeColor="red" ValidationExpression="(?=^.{6,20}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&amp;*()_+}{&quot;:;'?/&gt;.&lt;,])(?!.*\s).*$">
                        Password từ 6 đến 20 ký tự (đầy đủ cả số, chữ, ký tự đặc biệt)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" 
                        ControlToValidate="txtConfirmPassword" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red">Confirm Password phải giống Password</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Birthdate</td>
                <td>
                    <asp:TextBox ID="txtBirthdate" runat="server" Width="200"></asp:TextBox>
                    (dd/mm/yy)
                    <asp:RangeValidator ID="ValBirthdate" runat="server" ControlToValidate="txtBirthdate" Display="Dynamic" ErrorMessage="RangeValidator" 
                        ForeColor="Red" Type="Date" DataFormatString = "{0:dd/MM/yyyy}" MaximumValue="31/12/2050" MinimumValue="01/01/1900">Nhập ngày theo định dạng (dd/mm/yy)!</asp:RangeValidator>
                    
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:DropDownList ID="DropGender" runat="server" Width="207">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Email-Address</td>
                <td>
                    <asp:TextBox ID="txtEmailAddress" runat="server" Width="200"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmailAddress" Display="Dynamic" 
                        ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Nhập email không hợp lệ!</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnRegistry" runat="server" Text="Registry" OnClick="btnRegistry_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

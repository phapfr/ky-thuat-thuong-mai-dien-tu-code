<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GiaoDienKiemLoi.aspx.cs" Inherits="KiemLoi.GiaoDienKiemLoi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" cellpadding="5" cellspacing="0" >
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="194px"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Không để trống bắt buộc">*</asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Email không đúng định dạng" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">@</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Xác nhận email</td>
                <td>
                    <asp:TextBox ID="txtXacNhanEmail" runat="server" Width="194px"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Xác nhận không giống email" ControlToCompare="txtEmail" ControlToValidate="txtXacNhanEmail" Display="Dynamic">#</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Điểm</td>
                <td>
                    <asp:TextBox ID="txtDiem" runat="server" Width="111px"></asp:TextBox>

                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtDiem" Display="Dynamic" 
                        ErrorMessage="Điểm phải từ 0 đến 10" MaximumValue="10" 
                        MinimumValue="0" Type="Double">0..10</asp:RangeValidator>

                </td>
            </tr>
            <tr>
                <td>Ngày sinh</td>
                <td>
                    <asp:TextBox ID="txtNgaySinh" runat="server" Width="111px"></asp:TextBox>

                    <asp:CompareValidator ID="valNgaySinh" runat="server" 
                        ControlToValidate="txtNgaySinh" Display="Dynamic" 
                        ErrorMessage="Ngày sinh phải trên 16 tuổi" Operator="LessThan" Type="Date">&gt;16</asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td> &nbsp; </td>
                <td>
                    <asp:Button ID="btnKiemLoi" runat="server" Text="Kiểm lỗi" OnClick="btnKiemLoi_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                        HeaderText="Vui lòng khắc phục các lỗi sau" ShowMessageBox="True" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

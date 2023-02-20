<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoiCustomValidator.aspx.cs" Inherits="KiemLoi.LoiCustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function fnKiemTraSoChan(source, args) {
            args.IsValid = (args.Value % 2 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="0">
                <tr> 
                    <td>Số chẵn</td>
                    <td>
                        <asp:TextBox ID="txtSoChan" runat="server"></asp:TextBox>
                        <asp:CustomValidator ID="valSoChan" runat="server" ClientValidationFunction="fnKiemTraSoChan" ControlToValidate="txtSoChan" Display="Dynamic" ErrorMessage="Vui lòng nhập số chẵn" ValidateEmptyText="True"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mã bảo mật</td>
                    <td>
                        <asp:TextBox ID="txtMaBM" runat="server"></asp:TextBox>
                        <asp:Label ID="lblMaBM" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red" Text="Label"></asp:Label>
                        <asp:CustomValidator ID="MaBM" runat="server" ControlToValidate="txtMaBM" Display="Dynamic" 
                            OnServerValidate="valCaptcha_ServerValidate" ErrorMessage="Nhập không đúng mã bảo mật !" ValidateEmptyText="True"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnKiemTra" runat="server" Text="Kiểm tra" OnClick="btnKiemTra_Click" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>

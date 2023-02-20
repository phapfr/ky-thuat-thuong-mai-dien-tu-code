<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="TrangWebBanSach.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="banner">
            <asp:Image ID="Image1" ImageUrl="/img/1.png" runat="server" Width="100%" />
        </div>
        <div class="body">
            <div class="navbar">
                <asp:HyperLink ID="HyperLink1" runat="server">TRANG CHU</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server">GIOI THIEU</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server">SACH TIENG VIET</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server">SACH TIENG ANH</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server">SONG NGU</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server">LIEN HE</asp:HyperLink>
                <span class="icon"><i class="fa fa-search"></i></span>
                <input type="search" id="search" placeholder="Search..." />
                <button class="btn btn-white"> Search</button>
            </div>
            <table>
                <tr>
                    <td class="menudoc">
                        Các chủ đề sách <br />
                        <asp:HyperLink ID="HyperLink7" runat="server">Kinh tế</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink8" runat="server">Kỹ thuật</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink9" runat="server">Pháp luật</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink10" runat="server">Văn hóa</asp:HyperLink> <br />
                    </td>
                    <td class="noidung">
                        Nội dung ở đây
                    </td>
                    <td class="phanphu">
                        Phần phụ giới thiệu <br />
                        <asp:HyperLink ID="HyperLink12" runat="server">Sách bán chạy</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink13" runat="server">Giảm giá</asp:HyperLink> <br />
                        <asp:HyperLink ID="HyperLink14" runat="server">Sách mới</asp:HyperLink> <br />
                    </td>
                </tr>
            </table>

        </div>
        <div class="footer">
            Nguyễn Hồng Pháp - 5973
        </div>
    </form>
</body>
</html>

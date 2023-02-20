<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="CSDL_Sach.ChiTietSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align: center">
                        <div class="element">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' Width="200px" /><br />
                        </div>
                        <b>
                            <asp:Label ForeColor="Red" ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:0,00}") + "đ" %>'></asp:Label><br />
                        </b>
                        <b style="text-decoration: line-through Gray">
                            <asp:Label ForeColor="Gray" ID="Label3" runat="server" Text='<%# Eval("DonGiaGoc", "{0:0,00}") + "đ" %>'></asp:Label>
                        </b>
                    </td>
                    <td style="padding: 20px">
                        <div style="color: blue; font-weight: 900; font-size: 20px; margin-bottom: 10px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                        </div>
                        <div>
                            <asp:Label ID="Label5" runat="server" Text='<%# "<b>Nhà xuất bản: </b>"+ Eval("NhaXuatBan") %>'></asp:Label>
                        </div>
                        <div style="text-align: justify">
                            <asp:Label ID="Label4" runat="server" Text='<%# "<b>Thông tin về sách: </b>" + Eval("MoTa") %>'></asp:Label>
                        </div>
                        <div style="margin-top: 5px">
                            <b>Số lượng:</b>
                            <asp:TextBox Width="30px" ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Mua Sách" CommandArgument='<%# Eval("MaSach") %>' OnClick="Button1_Click" />
                        </div>
                        <div>
                            <br />
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Giỏ Hàng</asp:LinkButton>
                        </div>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

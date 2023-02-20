<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="CSDLBanHang.chitietsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' Width="150px" />
                        <b>
                            <asp:Label ForeColor="Red" ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:0,00}") + " đ" %>'></asp:Label>
                        </b>
                    </td>
                    <td style="padding: 20px">
                        <p style="color: blue; font-weight: 900; font-size: 20px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                        </p>

                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                        <div style="margin-top: 5px">
                            Số lượng:
                            <asp:TextBox Width="30px" ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Mua Hàng" CommandArgument='<%# Eval("MaHang") %>' OnClick="Button1_Click" />
                        </div>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Giỏ hàng</asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

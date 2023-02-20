<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPhamSach.aspx.cs" Inherits="CSDL_Sach.SanPhamSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: 15px">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" align="center">
            <ItemTemplate>
                <div class="sach1" style="margin: 3px; text-align: center">
                    <div class="tungsanpham" style="font-size: 17px">
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' Width="180px" CssClass="hinhsach" />
                        <div>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                        </div>
                    </div>
                    <b>
                        <asp:Label ID="Label2" ForeColor="Red" runat="server" Text='<%# Eval("DonGia", "{0:0,00}") + "đ" %>'></asp:Label>
                    </b>
                    <br />
                    <b style="text-decoration: line-through Gray;">
                        <asp:Label ID="Label3" ForeColor="Gray" runat="server" Text='<%# Eval("DonGiaGoc", "{0:0,00}") + "đ" %>'></asp:Label>
                        <br />
                    </b>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="LinkButton1_Click">Chi Tiết</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

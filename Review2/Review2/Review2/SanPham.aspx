<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Review2.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sach{
            text-align:center;
            margin: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="sach">
                <asp:Image Width="150px" Height="200px" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# "Đơn giá: " + Eval("DonGia","{0:00}đ") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="LinkButton2_Click">LinkButton</asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

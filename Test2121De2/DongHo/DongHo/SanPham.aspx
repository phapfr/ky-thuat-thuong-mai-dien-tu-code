<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="DongHo.SanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sp{
            width:100%;
            height:auto;
            text-align:center;
            margin:15px;
        }
        .hinh {
            width: 150px;
            height: 200px;
        }
        .dongia{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="sp">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                <br />
                <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' />
                <br />
                <asp:Label CssClass="dongia" ID="Label2" runat="server" Text='<%# "Giá: "+ Eval("DonGia","{0:0,0} đ") %>'></asp:Label>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CommandArgument='<%# Eval("MaSanPham") %>'>Chi Tiết</asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

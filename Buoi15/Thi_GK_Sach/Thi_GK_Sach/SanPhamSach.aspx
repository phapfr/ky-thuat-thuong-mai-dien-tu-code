<%@ Page Title="Sản Phẩm" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPhamSach.aspx.cs" Inherits="Thi_GK_Sach.SanPhamSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sach {
            text-align: center;
            margin: 20px;
            border: 1px solid gray;
        }

        .hinh {
            height: 200px;
            width: 150px;
        }

        .dongia {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" RepeatColumns="3" runat="server">
        <ItemTemplate>
            <div class="sach">
                <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' />
                <div>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                </div>
                <div class="dongia">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia","{0:0,0}") %>'></asp:Label>đ
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="LinkButton1_Click">Chi tiết</asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

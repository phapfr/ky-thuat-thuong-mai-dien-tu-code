<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SanPhamSach.aspx.cs" Inherits="QLSACH.SanPhamSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sach {
            text-align: center;
            border: 1px solid gray;
            margin: 20px;
        }

        .hinh {
            height: 200px;
            width: 150px;
        }

        .gia {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
        <ItemTemplate>
            <div class="sach">
                <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                <div>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                </div>
                <div class="gia">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia","{0:0,0}đ") %>'></asp:Label>
                </div>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaSach") %>' OnClick="LinkButton1_Click">Chi tiết</asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

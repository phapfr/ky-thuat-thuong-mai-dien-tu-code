<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="DongHo.ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .chinh{
            width:100%;
            height:auto;
            display:flex;
        }
        .trai {
            text-align: center;
            flex:45%;
        }

        .hinhanh {
            width: 150px;
            height: 200px;
        }
        .phai{
            flex:55%;
            margin-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="chinh">
                <div class="trai">
                    <asp:Image CssClass="hinhanh" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' />
                </div>
                <div class="phai">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSanPham") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# "Giá: " + Eval("DonGia","{0:0,0} đ") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="QLSACH.ChiTietSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .chinh {
            width: 100%;
            height: auto;
            margin: 10px;
            display: flex;
        }

        .trai {
            flex: 25%;
            height: auto;
            text-align: center;
        }

        .phai {
            flex: 75%;
            height: auto;
            margin-left: 10px;
        }

        .tensach {
            font-size: 25px;
            font-weight: bolder;
            color: blue;
        }

        .hinhanh {
            width: 100px;
            height: 150px;
        }

        .dongia {
            color: red;
        }

        .mua {
            margin-top: 8px;
        }
        .mua1{
            margin-top:12px;
        }
        .sl{
            width:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="chinh">
                <div class="trai">
                    <asp:Image CssClass="hinhanh" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                </div>
                <div class="phai">
                    <asp:Label CssClass="tensach" ID="Label1" runat="server" Text='<%#  Eval("TenSach") %>'></asp:Label>
                    <div class="mua1">
                        <asp:Label CssClass="tacgia" ID="Label2" runat="server" Text='<%# "Tác giả: " + Eval("TacGia") %>'></asp:Label>

                    </div>
                    <div class="mua">
                        <asp:Label CssClass="dongia" ID="Label3" runat="server" Text='<%# "Đơn giá: "+ Eval("DonGia","{0:0,0}đ") %>'></asp:Label>

                    </div>
                    <div class="mua">
                        <asp:Label ID="Label4" runat="server" Text="Số lượng: "></asp:Label>
                        <asp:TextBox CssClass="sl" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div class="mua">
                        <asp:Button ID="Button1" runat="server" Text="Mua" />
                        <asp:Button ID="Button2" runat="server" Text="Xem Giỏ Hàng" />
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

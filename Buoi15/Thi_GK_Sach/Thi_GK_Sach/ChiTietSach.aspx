<%@ Page Title="Chi Tiết Sách" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="Thi_GK_Sach.ChiTietSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .chinh {
            display: flex;
        }

        .trai {
            flex: 25%;
            color: red;
            text-align: center;
        }

        .phai {
            flex: 75%;
            margin-left: 20px;
        }

        .tieudesach {
            color: blue;
            font-weight:bold;
            font-size:25px;
        }

        .hinhsach {
            width: 100px;
            height: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="chinh">
                <div class="trai">
                    <asp:Image CssClass="hinhsach" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("Hinh") %>' /><br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("DonGia","{0:0,0}đ") %>'></asp:Label>
                </div>
                <div class="phai">
                    <div class="tieudesach">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                    </div>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label><br />
                    <asp:Button ID="Button1" runat="server" Text="Số lượng" />
                    <asp:TextBox Width="40px" ID="TextBox1" runat="server"></asp:TextBox>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

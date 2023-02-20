<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSach.aspx.cs" Inherits="Review1.ChiTietSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .chinh{
            display:flex;
            width:100%;
        }
        .trai{
            flex:40%;
        }
        .phai{
            flex:60%;
        }
        .phai{
            margin-left:20px;
        }
        #Label1{
            font-weight:bolder;
            font-size:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="chinh">
                <div class="trai">
                    <asp:Image Width="150px" Height="200px" ID="Image1" runat="server" ImageUrl='<%# "~/images/" + Eval("HinhAnh") %>' />
                </div>
                <div class="phai">
                    <p>
                        <asp:Label Font-Bold="true" Font-Size="Medium" ID="Label1" runat="server" Text='<%# Eval("TenSach") %>'></asp:Label>
                    </p>
                    <p>
                        <asp:Label ID="Label2" runat="server" Text='<%# "Tác giả: " + Eval("TacGia") %>'></asp:Label>
                    </p>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text='<%# "Đơn giá: " + Eval("DonGia") %>'></asp:Label>
                    </p>
                    <div style="margin-bottom:10px">
                        <asp:Label ID="Label4" runat="server" Text="Số lượng"></asp:Label>
                        <asp:TextBox Width="10px" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="Mua" />
                        <asp:Button ID="Button2" runat="server" Text="Xem giỏ hàng" />
                    </div>
                </div>
            </div>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>

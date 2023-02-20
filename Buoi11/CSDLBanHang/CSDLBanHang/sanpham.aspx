<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="CSDLBanHang.sanpham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding: 20px; text-align: center">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/" +Eval("Hinh") %>' Width="180px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                <br />
                <b>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia", "{0:0,00}") + " đ"%>'></asp:Label>
                    <br />
                </b>
                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("MaHang") %>'
                    OnClick="LinkButton2_Click">Chi Tiết</asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

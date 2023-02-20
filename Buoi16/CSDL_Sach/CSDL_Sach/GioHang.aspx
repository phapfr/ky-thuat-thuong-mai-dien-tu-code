<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="CSDL_Sach.GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <h1 style="color:red">Giỏ Hàng Của Bạn</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="9">
            <Columns>
                <asp:BoundField DataField="MaSach" HeaderText="Mã Sách" />
                <asp:BoundField DataField="TenSach" HeaderText="Tên Sách" />
                <asp:TemplateField HeaderText="Đơn Giá">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DonGia") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("DonGia","{0:0,0}") %>'></asp:Label>đ
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" />
                <asp:TemplateField HeaderText="Thành Tiền">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ThanhTien") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ThanhTien","{0:0,0}") %>'></asp:Label>đ
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div class="tongtien">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>

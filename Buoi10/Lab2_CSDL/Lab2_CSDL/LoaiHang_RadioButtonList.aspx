<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoaiHang_RadioButtonList.aspx.cs" Inherits="Lab2_CSDL.LoaiHang_RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Danh sách loại hàng</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="body">
            <b style="color:red">DANH SÁCH LOẠI HÀNG</b>
            <span class="menu">
                <asp:RadioButtonList  ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"></asp:RadioButtonList>
            </span>
            
        </div>
    </form>
</body>
</html>

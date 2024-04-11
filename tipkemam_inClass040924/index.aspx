<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="tipkemam_inClass040924.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .ListBoxCssClass
    {
        color:GhostWhite;
        background-color:DarkOliveGreen;
        font-family:Courier New;
        font-size:large;
        font-style:italic;
        margin-bottom: 80px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 92px; margin-bottom: 0px">
            <asp:ListBox OnSelectedIndexChanged="lblFruits_SelectedIndexChanged" ID="lblFruits" runat="server" CssClass="ListBoxCssClass" AutoPostBack="True" DataSourceID="sqlDataSourceInClass040924" DataTextField="LastName" DataValueField="NameID">
                <asp:ListItem>Pomegranate</asp:ListItem>
                <asp:ListItem>Kiwi</asp:ListItem>
                <asp:ListItem>Lychee</asp:ListItem>
                <asp:ListItem>Banana</asp:ListItem>
            </asp:ListBox>
            <asp:SqlDataSource ID="sqlDataSourceInClass040924" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringInClass040924 %>" ProviderName="<%$ ConnectionStrings:ConnectionStringInClass040924.ProviderName %>" SelectCommand="SELECT [NameID], [UserName], [LastName], [FirstName] FROM [tName]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblChosenFruit" runat="server" Text="Pick a Fruit Any Fruit"></asp:Label>
    </form>
</body>
</html>

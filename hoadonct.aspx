<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadonct.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Hóa đơn CT
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaCTHD" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MaCTHD" HeaderText="MaCTHD" ReadOnly="True" SortExpression="MaCTHD" />
                <asp:BoundField DataField="Sotien" HeaderText="Sotien" SortExpression="Sotien" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [ChitietHD] WHERE [MaCTHD] = @MaCTHD" InsertCommand="INSERT INTO [ChitietHD] ([MaCTHD], [Sotien], [MaSP], [MaHD]) VALUES (@MaCTHD, @Sotien, @MaSP, @MaHD)" SelectCommand="SELECT [MaCTHD], [Sotien], [MaSP], [MaHD] FROM [ChitietHD]" UpdateCommand="UPDATE [ChitietHD] SET [Sotien] = @Sotien, [MaSP] = @MaSP, [MaHD] = @MaHD WHERE [MaCTHD] = @MaCTHD">
            <DeleteParameters>
                <asp:Parameter Name="MaCTHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaCTHD" Type="Int32" />
                <asp:Parameter Name="Sotien" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaHD" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sotien" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaHD" Type="Int32" />
                <asp:Parameter Name="MaCTHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
</asp:Content>


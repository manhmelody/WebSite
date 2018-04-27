<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="loaihang.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h1> Loại hàng
        <div style="color:#b200ff">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLH" DataSourceID="SqlDataSource1" >
        <Fields>
            <asp:BoundField DataField="MaLH" HeaderText="MaLH" ReadOnly="True" SortExpression="MaLH" />
            <asp:BoundField DataField="TenLH" HeaderText="TenLH" SortExpression="TenLH" />
            <asp:BoundField DataField="MaDM_SP" HeaderText="MaDM_SP" SortExpression="MaDM_SP" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [LoaiHang] WHERE [MaLH] = @MaLH" InsertCommand="INSERT INTO [LoaiHang] ([MaLH], [TenLH], [MaDM_SP]) VALUES (@MaLH, @TenLH, @MaDM_SP)" SelectCommand="SELECT [MaLH], [TenLH], [MaDM_SP] FROM [LoaiHang]" UpdateCommand="UPDATE [LoaiHang] SET [TenLH] = @TenLH, [MaDM_SP] = @MaDM_SP WHERE [MaLH] = @MaLH">
        <DeleteParameters>
            <asp:Parameter Name="MaLH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaLH" Type="Int32" />
            <asp:Parameter Name="TenLH" Type="String" />
            <asp:Parameter Name="MaDM_SP" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenLH" Type="String" />
            <asp:Parameter Name="MaDM_SP" Type="Int32" />
            <asp:Parameter Name="MaLH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </h1>
        </div>
</asp:Content>


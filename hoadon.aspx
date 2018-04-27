<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hoadon.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Hóa đơn
        <div style="color:#ffd800">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                <asp:BoundField DataField="Soluong" HeaderText="Soluong" SortExpression="Soluong" />
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [Soluong], [MaKH]) VALUES (@MaHD, @Soluong, @MaKH)" SelectCommand="SELECT [MaHD], [Soluong], [MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [Soluong] = @Soluong, [MaKH] = @MaKH WHERE [MaHD] = @MaHD">
            <DeleteParameters>
                <asp:Parameter Name="MaHD" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaHD" Type="Int32" />
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="MaKH" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Soluong" Type="String" />
                <asp:Parameter Name="MaKH" Type="Int32" />
                <asp:Parameter Name="MaHD" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
    </div>
</asp:Content>


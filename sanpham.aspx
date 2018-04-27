<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sanpham.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Sản phẩm</h1>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                MaDM_SP:
                <asp:TextBox ID="MaDM_SPTextBox" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Donvi:
                <asp:TextBox ID="DonviTextBox" runat="server" Text='<%# Bind("Donvi") %>' />
                <br />
                GiaSP:
                <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                ChuThich:
                <asp:TextBox ID="ChuThichTextBox" runat="server" Text='<%# Bind("ChuThich") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                MaSP:
                <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                <br />
                MaDM_SP:
                <asp:TextBox ID="MaDM_SPTextBox" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                <br />
                TenSP:
                <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Donvi:
                <asp:TextBox ID="DonviTextBox" runat="server" Text='<%# Bind("Donvi") %>' />
                <br />
                GiaSP:
                <asp:TextBox ID="GiaSPTextBox" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                ChuThich:
                <asp:TextBox ID="ChuThichTextBox" runat="server" Text='<%# Bind("ChuThich") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaSP:
                <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                <br />
                MaDM_SP:
                <asp:Label ID="MaDM_SPLabel" runat="server" Text='<%# Bind("MaDM_SP") %>' />
                <br />
                TenSP:
                <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                <br />
                Donvi:
                <asp:Label ID="DonviLabel" runat="server" Text='<%# Bind("Donvi") %>' />
                <br />
                GiaSP:
                <asp:Label ID="GiaSPLabel" runat="server" Text='<%# Bind("GiaSP") %>' />
                <br />
                ChuThich:
                <asp:Label ID="ChuThichLabel" runat="server" Text='<%# Bind("ChuThich") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaDM_SP], [TenSP], [Donvi], [GiaSP], [ChuThich]) VALUES (@MaSP, @MaDM_SP, @TenSP, @Donvi, @GiaSP, @ChuThich)" SelectCommand="SELECT [MaSP], [MaDM_SP], [TenSP], [Donvi], [GiaSP], [ChuThich] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDM_SP] = @MaDM_SP, [TenSP] = @TenSP, [Donvi] = @Donvi, [GiaSP] = @GiaSP, [ChuThich] = @ChuThich WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaDM_SP" Type="Int32" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="Donvi" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="ChuThich" Type="String" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>


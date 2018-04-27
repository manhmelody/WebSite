<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent" >
    <h3>&nbsp;</h3>
    <ol class="round">
        <div style="width:1000px" >
            <div style="width:700px;height:500px ; float:left">
                <asp:Image ID="Image1" ImageUrl="~/Images/galaxy-a-2017.png"  runat="server" style="margin-left: 0px" Width="695px" Height="494px" />
            </div >
            <div style="width:300px;height:500px ; float:left">
                <br />
                <br />
                <h1>ADMIN SHOPPING WEBSITES </h1>              
            <p >Manager Your Website,Manager Product,Category,Customer,Purchare</p>
                <a href="http://www.samsung.com/vn/galaxya/" style="text-decoration:none ; height:50px;width:100px;border:solid ;">Khám Phá</a>
            </div>
        </div>
    </ol>
    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
    </style>
</asp:Content>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            <span>0965344763</span>
        </p>
        <p>
            <span class="label">After Hours:</span>
            <span>425.555.0199</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="viencvph04241@fpt.edu.vn">viencvph04241@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="viencvph04241@fpt.edu.vn">viencvph04241@fpt.edu.vn</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="viencvph04241@fpt.edu.vn">viencvph04241@fpt.edu.vn</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9281554614354!2d105.76310101443593!3d21.035560492923114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454b92bd71f9b%3A0xb79f074fe43dcfc1!2zRlBUIFBvbHl0ZWNobmljIChDxqEgc-G7nyBIw6AgTuG7mWkp!5e0!3m2!1sen!2s!4v1492493975817" width="1000" height="768" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
</asp:Content>
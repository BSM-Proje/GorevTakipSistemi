<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="PersonelBildirim.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Personel.PersonelBildirim" %>

<%@ Register Src="~/User Kontrol/UserBildirim.ascx" TagPrefix="uc1" TagName="UserBildirim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserBildirim runat="server" ID="UserBildirim" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="OgrenciBildirimDetay.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Ogrenci.OgrenciBildirimDetay" %>

<%@ Register Src="~/User Kontrol/UserBildirimDetay.ascx" TagPrefix="uc1" TagName="UserBildirimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserBildirimDetay runat="server" ID="UserBildirimDetay" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

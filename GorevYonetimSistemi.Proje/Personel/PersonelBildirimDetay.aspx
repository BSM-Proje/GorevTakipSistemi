<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="PersonelBildirimDetay.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Personel.PersonelBildirimDetay" %>

<%@ Register Src="~/User Kontrol/UserBildirimDetay.ascx" TagPrefix="uc1" TagName="UserBildirimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="/Site/css/chartist.css" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="/Site/css/widget.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/buttons.datatables.min.css">

    <!-- for searchable -->

    <link rel="stylesheet" href="/Site/css/select2.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/bootstrap-multiselect.css" />
    <link rel="stylesheet" type="text/css" href="/Site/css/multi-select.css" />
    <link rel="stylesheet" href="/Site/css/awesome-bootstrap-checkbox.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserBildirimDetay runat="server" ID="UserBildirimDetay" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

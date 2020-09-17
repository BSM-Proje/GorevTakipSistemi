﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="PersonelGorev.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Personel.PersonelGorev" %>

<%@ Register Src="~/User Kontrol/UserGorev.ascx" TagPrefix="uc1" TagName="UserGorev" %>

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
    
    <uc1:UserGorev runat="server" id="UserGorev" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

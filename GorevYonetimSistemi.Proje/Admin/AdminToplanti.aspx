<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="AdminToplanti.aspx.cs" EnableEventValidation="false" Inherits="GorevYonetimSistemi.Proje.Admin.AdminToplanti" %>

<%@ Register Src="~/User Kontrol/UserToplanti.ascx" TagPrefix="uc1" TagName="UserToplanti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Site/css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/buttons.datatables.min.css">

    <!-- for searchable -->

    <link rel="stylesheet" href="/Site/css/select2.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/bootstrap-multiselect.css" />
    <link rel="stylesheet" type="text/css" href="/Site/css/multi-select.css" />
    
    <link rel="stylesheet" type="text/css" href="/Site/css/style.css">

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserToplanti runat="server" ID="UserToplanti" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">


</asp:Content>

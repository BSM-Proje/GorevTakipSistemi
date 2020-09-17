<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="AdminBildirim.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminBildirim" %>

<%@ Register Src="~/User Kontrol/UserBildirim.ascx" TagPrefix="uc1" TagName="UserBildirim" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/Site/css/bootstrap.min.css">

    <link rel="stylesheet" href="/Site/css/waves.min.css" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="/Site/css/feather.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/themify-icons.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/icofont.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/style.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/pages.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserBildirim runat="server" ID="UserBildirim" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/jquery.min.js"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/jquery-ui.min.js"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/popper.min.js"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/bootstrap.min.js"></script>

    <script src="/Site/js/waves.min.js" type="5494ca747ea5c9ffce3152e2-text/javascript"></script>

    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/jquery.slimscroll.js"></script>

    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/modernizr.js"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/css-scrollbars.js"></script>

    <script src="/Site/js/pcoded.min.js" type="5494ca747ea5c9ffce3152e2-text/javascript"></script>
    <script src="/Site/js/vertical-layout.min.js" type="5494ca747ea5c9ffce3152e2-text/javascript"></script>
    <script src="/Site/js/jquery.mcustomscrollbar.concat.min.js" type="5494ca747ea5c9ffce3152e2-text/javascript"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript" src="/Site/js/script.js"></script>

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13" type="5494ca747ea5c9ffce3152e2-text/javascript"></script>
    <script type="5494ca747ea5c9ffce3152e2-text/javascript">
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
    <script src="/Site/js/rocket-loader.min.js" data-cf-settings="5494ca747ea5c9ffce3152e2-|49" defer=""></script>
</asp:Content>

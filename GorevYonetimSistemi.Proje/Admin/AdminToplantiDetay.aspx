<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="AdminToplantiDetay.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminToplantiDetay" %>

<%@ Register Src="~/User Kontrol/UserToplantiDetay.ascx" TagPrefix="uc1" TagName="UserToplantiDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <uc1:UserToplantiDetay runat="server" id="UserToplantiDetay" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

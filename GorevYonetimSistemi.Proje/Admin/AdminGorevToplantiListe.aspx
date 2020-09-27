<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="AdminGorevToplantiListe.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminGorevToplantiListe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-sm-12">

            <div class="col-lg-12 order-lg-2">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a href="" data-target="#gorevListesi" data-toggle="tab"
                            class="nav-link active">
                            <strong>Görev Kayıt</strong>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="" data-target="#toplantiListesi" data-toggle="tab"
                            class="nav-link">
                            <strong>Görev Atamaları</strong>
                        </a>
                    </li>
                </ul>
                <div class="tab-content py-4">
                    <div class="tab-pane active " id="gorevListesi">
                        
                        

                        <!--/row-->
                    </div>
                    <div class="tab-pane " id="toplantiListesi">
                        <div class="row">
                            <div class="col-sm-12 ">
                            </div>
                        </div>
                        <!--/row-->
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    
</asp:Content>

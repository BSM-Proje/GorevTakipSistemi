<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" enableEventValidation="false" ClientIDMode="Static" AutoEventWireup="true" CodeBehind="AdminBolum.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminBolum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    <link rel="stylesheet" href="/Site/css/chartist.css" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="/Site/css/widget.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="/Site/css/buttons.datatables.min.css">
    
    
    <link rel="stylesheet" href="/Site/css/select2.min.css">

    <link rel="stylesheet" type="text/css" href="/Site/css/bootstrap-multiselect.css" />
    <link rel="stylesheet" type="text/css" href="/Site/css/multi-select.css" />
    
    <link rel="stylesheet" type="text/css" href="/Site/css/style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-block">
                    <div class="row">
                        <div class="col-md-12 col-xl-12">
                            <asp:Label runat="server" ID="lblDeneme"></asp:Label>
                            <div class="card">
                                <div class="card-header">
                                    <h5>Bolum Ekle</h5>
                                </div>
                                <div class="card-block">
                                    <form method="post" novalidate>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label" hidden>Bölüm Id</label>
                                            <div class="col-sm-6">
                                                <input runat="server" type="text" class="form-control"
                                                       name="tbxBolumId" id="tbxBolumId" hidden/>
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Bolum Adı</label>
                                            <div class="col-sm-4">
                                                <input runat="server" type="text" class="form-control"
                                                       name="tbxBolumAd" id="tbxBolumAd"
                                                       placeholder="Bölum adını giriniz."/>
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Okul Adı</label>
                                            <span class="col-sm-12 col-xl-4 m-b-30">
                                                <select runat="server" id="selectOkulAd" name="selectOkulAd" class="js-example-data-array col-sm-12">
                                                </select>
                                            </span>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label" hidden>Okul Adı</label>
                                            <div class="col-sm-6">
                                                <input runat="server" type="hidden" class="form-control"
                                                       name="tbxOkulId" id="tbxOkulId" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button runat="server" id="btnKaydet" type="button"
                                                    class="btn btn-primary m-b-0" OnServerClick="btnKaydet_OnServerClick">
                                                    Kaydet
                                                </button>
                                                <button runat="server" id="btnSil" type="button" class="btn waves-effect waves-light btn-danger btn-square" OnServerClick="btnSil_OnServerClick">
                                                    Sil
                                                </button>
                                                <button  runat="server" id="btnGuncelle" type="button" class="btn waves-effect waves-light btn-warning btn-square" OnServerClick="btnGuncelle_OnServerClick">
                                                    Güncelle
                                                </button>
                                                <button type="button" id="toplantiTemizle" class="btn waves-effect waves-light btn-secondary btn-square" onclick="Temizle()">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>


                        </div>

                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5>Bolum Listesi</h5>
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="row-select"
                            class="table table-striped table-bordered nowrap"style="width: 100%;">
                            <thead>
                                <tr>
                                    <th hidden>Bolum Id</th>
                                    <th>Bolum Adı</th>
                                   <%-- <th>Okul Adı</th>--%>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:ListView runat="server" ID="lvBolum">
                                    <ItemTemplate>
                                        <tr>
                                            <td hidden><%#Eval("BolumId") %></td>
                                            <td><%#Eval("BolumAdi") %></td>
                                            <%--<td><%#Eval("Okul.OkulAdi") %></td>--%>
                                        </tr>
                                    </ItemTemplate>
                                </asp:ListView>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $("#row-select tbody").on('click', 'tr', function () {

                var rowData = $(this).children("td").map(function () {
                    return $(this).text();
                }).get();

                $("#tbxBolumId").val(rowData[0]);
                $("#tbxBolumAd").val(rowData[1]);
                $("#selectOkulAd").val(rowData[2]).trigger('change');

            });

        });
        var Temizle = function () {
            $("#tbxBolumId").val("");
            $("#tbxBolumAd").val("");
            $("#tbxOkulId").val("");

        };
    </script>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="AdminTurAtama.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminTurAtama" %>

<%@ Import Namespace="GorevYonetimSistemi.EntitySiniflar" %>
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
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h5>Kullanıcı Tür Atama</h5>
                </div>
                <div class="card-block">
                    <div id="main3">
                        <div class="form-group row">
                            <div class="col-sm-4">
                                <input type="hidden"
                                    class="form-control"
                                    name="turAtamaId"
                                    id="turAtamaId" runat="server" />
                                <span class="messages"></span>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Ad Soyad</label>
                            <span class="col-sm-4 col-xl-4 m-b-30">
                                <select runat="server" id="selectKullanici" class="js-example-data-array col-sm-12">
                                </select>
                            </span>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Kullanıcı Tür</label>
                            <span class="col-sm-4 col-xl-4 m-b-30">
                                <select runat="server" id="selectKullaniciTur" class="js-example-data-array col-sm-12">
                                </select>
                            </span>
                        </div>


                        <div class="form-group row text-center ml-5">



                            <div class="col-sm-6">
                                <button type="button"
                                    class="btn btn-primary m-b-0" runat="server" id="btnKullaniciTurKaydet" onserverclick="btnKullaniciTurKaydet_OnServerClick">
                                    Kaydet
                               
                                </button>
                                <button type="button" class="btn waves-effect waves-light btn-danger btn-square" runat="server" id="btnKullaniciTurSil" OnServerClick="btnKullaniciTurSil_OnServerClick">
                                    Sil
                               
                                </button>
                                <button class="btn waves-effect waves-light btn-warning btn-square" type="button" runat="server" id="btnKullaniciTurGuncelle" OnServerClick="btnKullaniciTurGuncelle_OnServerClick">
                                    Güncelle
                               
                                </button>
                                <button type="button" id="btnTemizle" class="btn waves-effect waves-light btn-secondary btn-square" onclick="Temizle()">
                                    Temizle
                               
                                </button>

                            </div>
                            <label class="col-sm-2 badge badge-success" id="lblSonuc" runat="server" visible="False"></label>

                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5>Kullanıcı Türler</h5>
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="dom-jqry"
                            class="table table-striped table-bordered nowrap" style="width: 100%;">
                            <thead>
                                <tr>
                                    <th hidden>Kullanıcı Tür Atama Id</th>
                                    <th>Kullanıcı Ad</th>
                                    <th>Kullanıcı Tür</th>
                                    <th hidden>Kullanıcı Id</th>
                                    <th hidden>Kullanıcı Tür Id</th>

                                </tr>
                            </thead>
                            <tbody>
                                <asp:ListView runat="server" ID="lvKullaniciTurler">
                                    <ItemTemplate>
                                        <tr>
                                            <td hidden><%#Eval("KullaniciTurAtamaId") %></td>
                                            <td>
                                                <%#Eval("Kullanici.Ad") + " " + Eval("Kullanici.Soyad")%>
                                            </td>

                                            <td><%#Eval("KullaniciTur.KullaniciTurAd") %></td>
                                            <td hidden><%#Eval("FkKisiId") %></td>
                                            <td hidden><%#Eval("FkKullaniciTurId") %></td>
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

            $("#dom-jqry tbody").on('click', 'tr', function () {

                var rowData = $(this).children("td").map(function () {
                    return $(this).text();
                }).get();

                $("#turAtamaId").val(rowData[0]);
                $("#selectKullanici").val(rowData[3]).trigger("change");
                $("#selectKullaniciTur").val(rowData[4]).trigger("change");

                console.log(rowData);
            });
        });

        var Temizle = function () {
            $("#turAtamaId").val("");
            $("#selectKullanici").val("").trigger("change");
            $("#selectKullaniciTur").val("").trigger("change");

        };

        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblSonuc.ClientID %>").style.display = "none";
            },
                seconds * 1000);
        }
    </script>
</asp:Content>

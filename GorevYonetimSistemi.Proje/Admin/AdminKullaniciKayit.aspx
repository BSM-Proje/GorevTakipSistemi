<%@ Page Title="" Language="C#" ClientIDMode="Static" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="AdminKullaniciKayit.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.AdminKullaniciKayit" %>
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
                                                                        <h5>Kullanıcı Ekle</h5>
                                                                    </div>
                                                                    <div class="card-block">
                                                                        <div id="main2">
                                                                            <div class="form-group row">
                                                                                <div class="col-sm-4">
                                                                                    <input type="hidden" runat="server"
                                                                                           class="form-control"
                                                                                           name="kullaniciId"
                                                                                           id="kullaniciId"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Kullanıcı
                                                                                    Adı</label>
                                                                                <div class="col-sm-4">
                                                                                    <input type="text" runat="server"
                                                                                           class="form-control max-width"
                                                                                           name="kullaniciAdi"
                                                                                           id="kullaniciAdi"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Kullanıcı
                                                                                    Soyadı</label>
                                                                                <div class="col-sm-4">
                                                                                    <input type="text" runat="server"
                                                                                           class="form-control max-width"
                                                                                           name="kullaniciSoyadi"
                                                                                           id="kullaniciSoyadi"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Kullanıcı
                                                                                    Tür</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectKullaniciTur" name="selectKullaniciTur" class="js-example-data-array col-sm-12">
                                                                                            </select>
                                                                                    </span>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Email</label>
                                                                                <div class="col-sm-4">
                                                                                    <input type="email" runat="server"
                                                                                           class="form-control max-width"
                                                                                           name="email" id="email"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Şifre</label>
                                                                                <div class="col-sm-4">
                                                                                    <input type="password" runat="server"
                                                                                           class="form-control max-width"
                                                                                           name="sifre" id="sifre"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Fotoğraf</label>
                                                                                <div class="col-sm-4">
                                                                                    <input type="file" runat="server"
                                                                                           class="form-control max-width"
                                                                                           name="fotograf"
                                                                                           id="fotograf"/>
                                                                                    <span class="messages"></span>
                                                                                </div>
                                                                            </div>

                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Okul</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectOkul" class="js-example-data-array col-sm-12">
                                                                                        </select>
                                                                                    </span>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Bölüm</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectBolum" class="js-example-data-array col-sm-12">
                                                                                        </select>
                                                                                    </span>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Ana
                                                                                    Bilim Dalı</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectAnaBilimDali" class="js-example-data-array col-sm-12">
                                                                                        </select>
                                                                                    </span>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">Ünvan</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectUnvan" class="js-example-data-array col-sm-12">
                                                                                        </select>
                                                                                    </span>
                                                                            </div>
                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2 col-form-label">İdari
                                                                                    Görev Ünvan</label>
                                                                                <span class="col-sm-12 col-xl-4 m-b-30">
                                                                                        <select runat="server" id="selectIdariGorevUnvan" class="js-example-data-array col-sm-12">
                                                                                        </select>
                                                                                    </span>
                                                                            </div>


                                                                            <div class="form-group row">
                                                                                <label class="col-sm-2"></label>
                                                                                <div class="col-sm-4">
                                                                                    <asp:Label runat="server" text="burdayım" ID="lblDeneme"></asp:Label>
                                                                                    <button type="button" runat="server" id="btnKullaniciKaydet" OnServerClick="btnKullaniciKaydet_OnServerClick"
                                                                                            class="btn btn-primary m-b-0">
                                                                                        Kaydet
                                                                                    </button>
                                                                                    <button runat="server" id="btnKullanciSil" class="btn waves-effect waves-light btn-danger btn-square" OnServerClick="btnKullanciSil_OnServerClick">
                                                                                        Sil
                                                                                    </button>
                                                                                    <button runat="server" id="btnKullaniciGuncelle" class="btn waves-effect waves-light btn-warning btn-square" OnServerClick="btnKullaniciGuncelle_OnServerClick">
                                                                                        Güncelle
                                                                                    </button>
                                                                                    <button runat="server" id="btnKullaniciTemizle" class="btn waves-effect waves-light btn-secondary btn-square" name="kullaniciTemizle">
                                                                                        Temizle
                                                                                               
                                                                                    </button>
                                                                                </div>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="card">
                                                                    <div class="card-header">
                                                                        <h5>Kullanıcılar</h5>
                                                                    </div>
                                                                    <div class="card-block">
                                                                        <div class="dt-responsive table-responsive">
                                                                            <table id="row-delete"
                                                                                   class="table table-striped table-bordered nowrap">
                                                                                <thead>
                                                                                <tr>
                                                                                    <th hidden>Kisi ID</th>
                                                                                            <th>Kullanıcı Adı</th>
                                                                                            <th>Kullanıcı Soyadı</th>
                                                                                            <th>Email</th>
                                                                                            <th>Fotoğraf</th>
                                                                                            <th>Okul</th>
                                                                                            <th>Bölüm</th>
                                                                                            <th>Ana Bilim Dalı</th>
                                                                                            <th>Ünvan</th>
                                                                                            <th>İdare Görev Ünvan</th>
                                                                                </tr>
                                                                                </thead>
                                                                                <tbody>
                                                                                
                                                                                <asp:ListView runat="server" ID="lvKullanicilar">
                                                                                <ItemTemplate>
                                                                                    <tr>
                                                                                        <td hidden><%#Eval("KisiId") %></td>
                                                                                        <td><%#Eval("Ad") %></td>
                                                                                        <td><%#Eval("Soyad") %></td>
                                                                                        <td><%#Eval("Email") %></td>
                                                                                        <td><%#Eval("Fotograf") %></td>
                                                                                        <td><%#Eval("OkulAdi") %></td>
                                                                                        <td><%#Eval("BolumAdi") %></td>
                                                                                        <td><%#Eval("AbdAd") %></td>
                                                                                        <td><%#Eval("UnvanAd") %></td>
                                                                                        <td><%#Eval("IdariGorevUnvanAd") %></td>
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
                                                        <!--/row-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {

            $("#row-delete tbody").on('click', 'tr', function () {

                var rowData = $(this).children("td").map(function () {
                    return $(this).text();
                }).get();

                $("#kullaniciId").val(rowData[0]);
                $("#kullaniciAdi").val(rowData[1]);
                $("#kullaniciSoyadi").val(rowData[2]);
                $("#selectKullaniciTur").val(rowData[3]).trigger("change");
                $("#email").val(rowData[4]);
                $("#fotograf").val(rowData[5]);
                $("#selectOkul").val(rowData[6]).trigger("change");
                $("#selectBolum").val(rowData[7]).trigger("change");
                $("#selectAnaBilimDali").val(rowData[8]).trigger("change");
                $("#selectUnvan").val(rowData[9]).trigger("change");
                $("#selectIdariGorevUnvan").val(rowData[10]).trigger("change");
            });

           
        });
    </script>

</asp:Content>


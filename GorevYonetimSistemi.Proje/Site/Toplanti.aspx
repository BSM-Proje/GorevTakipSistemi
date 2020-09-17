<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="Toplanti.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Site.Toplanti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/chartist.css" type="text/css" media="all">

    <link rel="stylesheet" type="text/css" href="css/widget.css">
    <link rel="stylesheet" type="text/css" href="css/datatables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.datatables.min.css">

    <!-- for searchable -->

    <link rel="stylesheet" href="css/select2.min.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-multiselect.css" />
    <link rel="stylesheet" type="text/css" href="css/multi-select.css" />
    <link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="row">
        <div class="col-sm-12">

            <div class="col-lg-12 order-lg-2">
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a href="#" data-target="#toplantiKayit"
                            data-toggle="tab" class="nav-link active"><strong>Toplantı Kayıt</strong></a>
                    </li>
                    <li class="nav-item">
                        <a href="#" data-target="#toplantiDetay"
                            data-toggle="tab" class="nav-link"><strong>Toplantı Detay</strong></a>
                    </li>
                    <li class="nav-item">
                        <a href="#" data-target="#toplantiAtama"
                            data-toggle="tab" class="nav-link"><strong>Toplantı Atama</strong></a>
                    </li>
                </ul>
                <div class="tab-content py-4">
                    <div class="tab-pane active " id="toplantiKayit">
                        <div class="row">
                            <div class="col-sm-12 col-md-8 col-lg-4">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Toplantı Ekle</h5>
                                    </div>
                                    <div class="card-block">
                                        <form id="main2" method="post" novalidate>
                                            <div class="form-group row">
                                                <div class="col-sm-4">
                                                    <input type="hidden"
                                                        class="form-control"
                                                        name="toplantiId"
                                                        id="toplantiId">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Adı</label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="toplantiAdi"
                                                        id="toplantiAdi">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Konusu</label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="toplantiKonusu"
                                                        id="toplantiKonusu">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı İçeriği</label>
                                                <div class="col-sm-4">
                                                    <textarea name="toplantiIcerigi" id="toplantiIcerigi"
                                                        cols="70"
                                                        rows="10"
                                                        class="form-control max-width"></textarea>
                                                    <span class="messages"></span>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Tarihi</label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="toplantiTarihi"
                                                        id="toplantiTarihi">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Saati</label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="toplantiSaati"
                                                        id="toplantiSaati">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Yeri</label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="toplantiYeri"
                                                        id="toplantiYeri">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2"></label>
                                                <div class="col-sm-5">
                                                    <button type="submit"
                                                        class="btn btn-primary m-b-0">
                                                        Kaydet                
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-danger btn-square">
                                                        Sil                     
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-warning btn-square">
                                                        Güncelle                     
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-secondary btn-square">
                                                        Temizle                     
                                                    </button>
                                                </div>

                                            </div>


                                        </form>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Toplantılar</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="dt-responsive table-responsive">
                                            <table id="row-delete"
                                                class="table table-striped table-bordered nowrap">
                                                <thead>
                                                    <tr>
                                                        <th hidden>Toplantı ID</th>
                                                        <th>Toplantı Adı</th>
                                                        <th>Toplantı Konusu</th>
                                                        <th>Toplantı İçeriği</th>
                                                        <th>Toplantı Tarihi</th>
                                                        <th>Toplantı Saati</th>
                                                        <th>Toplantı Yeri</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td hidden></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--/row-->


                    <div class="tab-pane " id="toplantiDetay">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Toplantı Detay Ekle</h5>
                                    </div>
                                    <div class="card-block">
                                        <form id="main3" method="post"
                                            novalidate>
                                            <div class="form-group row">
                                                <div class="col-sm-4">
                                                    <input type="hidden"
                                                        class="form-control"
                                                        name="toplantiDetayId"
                                                        id="toplantiDetayId">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Adı</label>
                                                <div class="col-sm-4">
                                                    <select class="js-example-data-array ">
                                                        <option value="Seciniz">Seçiniz Lorem ipsum dolor sit amet.
                                                        </option>
                                                        <option value="1">Toplantı 1
                                                        </option>
                                                        <option value="1">Toplantı 2
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Durum</label>
                                                <div class="col-sm-4">
                                                    <div class="radio radio-success radio-inline">
                                                        <input type="radio"
                                                            id="inlineRadio1"
                                                            value="option1"
                                                            name="radioInline">
                                                        <label for="inlineRadio1">Yapıldı </label>
                                                    </div>
                                                    <div class="radio radio-success radio-inline">
                                                        <input type="radio"
                                                            id="inlineRadio2"
                                                            value="option1"
                                                            name="radioInline"
                                                            checked>
                                                        <label for="inlineRadio2">
                                                            Yapılmadı</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Sonrası Alınan Kararlar</label>
                                                <div class="col-sm-4">
                                                    <textarea
                                                        name="toplantiKonusu"
                                                        id="toplantiSonAlKarar"
                                                        cols="70" rows="10"
                                                        class="form-control max-width"></textarea>
                                                    <span class="messages"></span>
                                                </div>
                                            </div>


                                            <div class="form-group row">
                                                <label class="col-sm-2"></label>
                                                <div class="col-sm-4">
                                                    <button type="submit"
                                                        class="btn btn-primary m-b-0">
                                                        Kaydet                         
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-danger btn-square">
                                                        Sil                 
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-warning btn-square">
                                                        Güncelle           
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-secondary btn-square">
                                                        Temizle              
                                                    </button>
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Toplantı Detay</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="dt-responsive table-responsive">
                                            <table id="order-table"
                                                class="table table-striped table-bordered nowrap">
                                                <thead>
                                                    <tr>
                                                        <th>Toplantı ID</th>
                                                        <th>Toplantı Adı</th>
                                                        <th>Toplantı Durum</th>
                                                        <th>Toplantıda Alınan Kararlar</th>

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>

                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/row-->

                    </div>
                    <div class="tab-pane " id="toplantiAtama">
                        <div class="row">
                            <div class="col-sm-12 ">
                                <div class="card">
                                    <div class="card-block">
                                        <form id="main" method="post"
                                            novalidate>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">Toplantı</label>
                                                <div class="col-sm-10">
                                                    <select class="js-example-data-array ">
                                                        <option value="Seciniz">Seçiniz Lorem ipsum dolor.
                                                        </option>
                                                        <option value="1">Toplantı 1 Seçiniz</option>
                                                        <option value="1">Toplantı 2</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">İlgili Kişiler</label>
                                                <div class="col-sm-10 col-xl-6 m-b-30">
                                                    <select id='custom-headers'
                                                        class="searchable"
                                                        multiple='multiple'>
                                                        <option value='elem_1' selected>elem 1 </option>
                                                        <option value='elem_2'>elem 2
                                                        </option>
                                                        <option value='elem_3'>elem 3
                                                        </option>
                                                        <option value='elem_4'
                                                            selected>elem 4
                                                        </option>
                                                        <option value='elem_5'>elem 5
                                                        </option>
                                                        <option value='elem_6'>elem 6
                                                        </option>
                                                        <option value='elem_7'>elem 7
                                                        </option>
                                                        <option value='elem_8'>elem 8
                                                        </option>
                                                        <option value='elem_9'>elem 9
                                                        </option>

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label class="col-sm-2"></label>
                                                <div class="col-sm-4">
                                                    <button type="submit"
                                                        class="btn btn-primary m-b-0">
                                                        Kaydet
                                                                                       
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-danger btn-square">
                                                        Sil
                                                                                       
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-warning btn-square">
                                                        Güncelle
                                                                                       
                                                    </button>
                                                    <button class="btn waves-effect waves-light btn-secondary btn-square">
                                                        Temizle
                                                                                       
                                                    </button>
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                </div>


                                <div class="card">
                                    <div class="card-header">
                                        <h5>Toplantı Atama Listesi</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="dt-responsive table-responsive">
                                            <table id="row-select"
                                                class="table table-striped table-bordered nowrap">
                                                <thead>
                                                    <tr>
                                                        <th>Toplantı Adı</th>
                                                        <th>İlgili Kişiler</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="Gorev.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Site.Gorev" %>

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
                        <a href="" data-target="#evrakKayit" data-toggle="tab"
                            class="nav-link active"><strong>Görev Kayıt</strong></a>
                    </li>
                    <li class="nav-item">
                        <a href="" data-target="#evrakAtama" data-toggle="tab"
                            class="nav-link"><strong>Görev Atamaları</strong></a>
                    </li>
                </ul>
                <div class="tab-content py-4">
                    <div class="tab-pane active " id="evrakKayit">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Görev Ekle</h5>
                                    </div>
                                    <div class="card-block">
                                        <form id="main2" method="post"
                                            novalidate>
                                            <div class="form-group row">
                                                <div class="col-sm-4">
                                                    <input type="hidden"
                                                        class="form-control"
                                                        name="gorevId"
                                                        id="gorevId">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Toplantı Adı
                                                </label>
                                                <div class="col-sm-4">
                                                    <select class="js-example-data-array" style="width: 100%;">
                                                        <option value="Seciniz">Seçiniz Lorem ipsum dolor sit amet.</option>
                                                        <option value="1">Toplantı 1</option>
                                                        <option value="1">Toplantı 2 </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Görev
                                                                                                Adı
                                                                                           
                                                </label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="evrakAdi"
                                                        id="evrakAdi">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Görev
                                                                                                İçeriği
                                                                                           
                                                </label>
                                                <div class="col-sm-4">
                                                    <textarea name="evrakIcerik" id="evrakIcerik" cols="70"
                                                        rows="10"
                                                        class="form-control max-width"></textarea>
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">Görev</label>
                                                <div class="col-sm-4">
                                                    <input type="file"
                                                        class="form-control max-width"
                                                        name="evrak"
                                                        id="evrak">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Son
                                                                                                Tarih
                                                                                           
                                                </label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="sonTarih"
                                                        id="sonTarih">
                                                    <span class="messages"></span>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    Son
                                                                                                Saat
                                                                                           
                                                </label>
                                                <div class="col-sm-4">
                                                    <input type="text"
                                                        class="form-control max-width"
                                                        name="sonSaat"
                                                        id="sonSaat">
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
                                        <h5>Görevler</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="dt-responsive table-responsive">
                                            <table id="row-delete"
                                                class="table table-striped table-bordered nowrap">
                                                <thead>
                                                    <tr>
                                                        <th hidden>Görev ID</th>
                                                        <th>Görev Adı</th>
                                                        <th>Görev İçeriği</th>
                                                        <th>Görev</th>
                                                        <th>Son Tarih</th>
                                                        <th>Son Saat</th>
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
                    <div class="tab-pane " id="evrakAtama">
                        <div class="row">
                            <div class="col-sm-12 ">
                                <div class="card">
                                    <div class="card-block">
                                        <form id="main" method="post"
                                            novalidate>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">Görev</label>
                                                <div class="col-sm-4">
                                                    <select class="js-example-data-array ">
                                                        <option value="Seciniz">Seçiniz
                                                                                                    </option>
                                                        <option value="1">Görev 1
                                                                                                    </option>
                                                        <option value="1">Görev 2
                                                                                                    </option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label class="col-sm-2 col-form-label">
                                                    İlgili
                                                                                                Kişiler</label>
                                                <div class="col-sm-4 col-xl-6 m-b-30">
                                                    <select id='custom-headers'
                                                        class="searchable"
                                                        multiple='multiple'>
                                                        <option value='elem_1'
                                                            selected>elem 1
                                                                                                    </option>
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
                                                        <option value='elem_10'>elem 10
                                                                                                    </option>
                                                        <option value='elem_11'>elem 11
                                                                                                    </option>
                                                        <option value='elem_12'>elem 12
                                                                                                    </option>
                                                        <option value='elem_13'>elem 13
                                                                                                    </option>
                                                        <option value='elem_14'>elem 14
                                                                                                    </option>
                                                        <option value='elem_15'>elem 15
                                                                                                    </option>
                                                        <option value='elem_16'>elem 16
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
                                        <h5>Görev Atama Listesi</h5>
                                    </div>
                                    <div class="card-block">
                                        <div class="dt-responsive table-responsive">
                                            <table id="row-select"
                                                class="table table-striped table-bordered nowrap">
                                                <thead>
                                                    <tr>
                                                        <th>Görev Adı</th>
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

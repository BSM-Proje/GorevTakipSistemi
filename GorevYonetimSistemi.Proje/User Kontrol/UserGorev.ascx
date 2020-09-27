<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserGorev.ascx.cs" ClientIDMode="Static" Inherits="GorevYonetimSistemi.Proje.User_Kontrol.UserGorev" %>

<div class="row">
    <div class="col-sm-12">

        <div class="col-lg-12 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#evrakKayit" data-toggle="tab"
                        class="nav-link active" >
                        <strong>Görev Kayıt</strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#evrakAtama" data-toggle="tab"
                        class="nav-link">
                        <strong>Görev Atamaları</strong>
                    </a>
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
                                                    id="gorevId" runat="server" />
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
                                                    name="gorevAdi"
                                                    id="gorevAdi" runat="server" ClientIDMode="Static" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Görev
                                İçeriği
                                            </label>
                                            <div class="col-sm-4">
                                                <textarea name="gorevIcerik" id="gorevIcerik" cols="70"
                                                    rows="10"
                                                    class="form-control max-width" runat="server"></textarea>
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Görev</label>
                                            <div class="col-sm-4">
                                                <input type="file"
                                                    class="form-control max-width"
                                                    name="gorev"
                                                    id="gorev" runat="server" />
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
                                                    id="sonTarih" runat="server" />
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
                                                    id="sonSaat" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="submit"
                                                    class="btn btn-primary m-b-0" runat="server">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button id="GorevEkleTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                            <label class="col-sm-3 label label-success" id="lblGorevSonuc" runat="server" visible="False" style="height: 80%; font-size: 1.2rem;"></label>

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
                                                    <th>Toplantı Adı</th>
                                                    <th>Son Tarih</th>
                                                    <th>Son Saat</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <asp:ListView runat="server" ID="dlGorev">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td hidden><%#Eval("GorevId") %></td>
                                                            <td><%#Eval("GorevAdi") %></td>
                                                            <td><%#Eval("GorevIcerigi") %></td>
                                                            <td></td>
                                                            <td><%#Eval("SonTarihSaat","{0:dd/MM/yyyy}") %></td>
                                                            <td><%#Eval("SonTarihSaat","{0:hh.mm tt}") %></td>
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
                </div>
                <div class="tab-pane " id="evrakAtama">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="card">
                                <div class="card-block">
                                    <div id="main">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Görev</label>
                                            <div class="col-sm-4">
                                                <select runat="server" id="selectGorevAtama" class="js-example-data-array ">
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                
                                                <textarea hidden name="tbxIlgiliKisiler" id="tbxIlgiliKisiler"
                                                    cols="70"
                                                    rows="10"
                                                    class="form-control max-width" runat="server"></textarea>
                                                
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                İlgili
                                Kişiler
                                            </label>
                                            <div class="col-sm-4 col-xl-6 m-b-30">
                                                <select class="test" multiple id="selectKisiler" runat="server">
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="button" runat="server" id="btnGorevAtamaKaydet"
                                                    class="btn btn-primary m-b-0" OnServerClick="btnGorevAtamaKaydet_OnServerClick">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button id="GorevAtamaTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                            <label class="col-sm-3 label label-success" id="lblGorevAtamaSonuc" runat="server" visible="False" style="height: 80%; font-size: 1.2rem;"></label>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <h5>Görev Atama Listesi</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive ">
                                        <table id="row-select"
                                            class="table table-striped table-bordered nowrap w-100">
                                            <thead>
                                                <tr>
                                                    <th hidden>Görev Id</th>
                                                    <th>Görev Adı</th>
                                                    <th>Atanan Kişi</th>
                                                    <th>Atayan Kişi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:ListView runat="server" ID="lvGorevAtama">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td hidden><%#Eval("GorevId") %></td>
                                                            <td><%#Eval("GorevAdi") %></td>
                                                            <td><%#Eval("AtananKisi") %></td>
                                                            <td><%#Eval("AtayanKisi") %></td>
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
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link href="/Site/css/fSelect.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/Site/js/fSelect.js"></script>
<script>
    (function ($) {
        $(function () {
            window.fs_test = $('.test').fSelect();
        });
    })(jQuery);

</script>
<script>
    $(document).ready(function () {

        $("#row-delete tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            $("#gorevId").val(rowData[0]);
            $("#gorevAdi").val(rowData[1]);
            $("#gorevIcerik").val(rowData[2]);
            $("#toplantiAdi").val(rowData[3]).trigger('change');
            $("#sonTarih").val(rowData[4]);
            $("#sonSaat").val((rowData[5]));

        });

        $("#row-select tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            $("#productselectname").val(rowData[0]).trigger("change");
            $("#productfeature").val(rowData[1]).trigger("change");
            $("#featurevalue").val(rowData[2]);

        });

        $("#GorevAtamaTemizle").on('click', function () {

            $("#productselectname").val("").trigger("change");
            $("#productfeature").val("").trigger("change");
            $("#featurevalue").val("");

        });

        $("#GorevEkleTemizle ").on('click', function () {

            $("#gorevId").val("");
            $("#gorevAdi").val("");
            $("#gorevIcerik").val("");
            $("#toplantiAdi").val("").trigger('change');
            $("#sonTarih").val("");
            $("#sonSaat").val("");

        });

    });
</script>
<script>
    var ta = document.querySelector('#tbxIlgiliKisiler');


    $('#selectKisiler').change(function () {
        var selectedValues = $(this).val();
        ta.innerText = selectedValues;
    });

</script>

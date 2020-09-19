<%@ Control Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="UserToplanti.ascx.cs" Inherits="GorevYonetimSistemi.Proje.User_Kontrol.UserToplanti" %>

<div class="row">
    <div class="col-sm-12">

        <div class="col-lg-12 order-lg-2">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#toplantiKayit"
                        data-toggle="tab" class="nav-link active">
                        <strong>Toplantı
                Kayıt
                        </strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#toplantiDetay"
                        data-toggle="tab" class="nav-link">
                        <strong>Toplantı
                Detay
                        </strong>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#toplantiAtama"
                        data-toggle="tab" class="nav-link">
                        <strong>Toplantı
                Atama
                        </strong>
                    </a>
                </li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane active " id="toplantiKayit">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Ekle</h5>
                                </div>
                                <div class="card-block">
                                    <form id="main4" method="post"
                                        novalidate>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <input type="hidden"
                                                    class="form-control"
                                                    name="toplantiId"
                                                    id="toplantiId" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Adı
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiAdi"
                                                    id="tbxToplantiAdi" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Konusu
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiKonusu"
                                                    id="tbxToplantiKonusu" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                İçeriği
                                            </label>
                                            <div class="col-sm-4">
                                                <textarea name="toplantiIcerigi" id="taToplantiIcerigi"
                                                    cols="70"
                                                    rows="10"
                                                    class="form-control max-width" runat="server"></textarea>
                                                <span class="messages"></span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Tarihi
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiTarihi"
                                                    id="tbxToplantiTarihi" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Saati
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiSaati"
                                                    id="tbxToplantiSaati" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Yeri
                                            </label>
                                            <div class="col-sm-4">
                                                <input type="text"
                                                    class="form-control max-width"
                                                    name="toplantiYeri"
                                                    id="tbxToplantiYeri" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 label label-success" id="lblSonuc" runat="server" visible="False"></label>
                                            <div class="col-sm-6 ml-5">
                                                <button runat="server" ID="btnDeneme"></button>
                                                <button type="submit"
                                                    class="btn btn-primary m-b-0" runat="server" id="btnKaydet" onserverclick="btnKaydet_OnServerClick">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square" type="button" id="btnSil" runat="server" onserverclick="btnSil_OnServerClick">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square" type="button" id="btnGuncelle" runat="server" onserverclick="btnGuncelle_OnServerClick">
                                                    Güncelle
                                                </button>
                                                <button type="button" id="ToplantiAtamaTemizle" class="btn waves-effect waves-light btn-secondary btn-square" onclick="toplantiTemizle()">
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
                                        <table id="colum-rendr"
                                            class="table table-striped table-bordered nowrap">
                                            <thead>
                                                <tr>
                                                    <th hidden>Toplantı ID</th>
                                                    <th>Toplantı Adı</th>
                                                    <th>Toplantı İçeriği</th>
                                                    <th>Toplantı Tarih</th>
                                                    <th>Toplantı Saat</th>
                                                    <th>Toplantı Yeri</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:ListView runat="server" ID="lvToplanti">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td hidden><%#Eval("ToplantiId") %></td>
                                                            <td><%#Eval("ToplantiAdi") %></td>
                                                            <td><%#Eval("ToplantiIcerigi") %></td>
                                                            <td><%#Eval("SonTarihSaat","{0:dd/MM/yyyy}") %></td>
                                                            <td><%#Eval("SonTarihSaat","{0:hh.mm tt}") %></td>
                                                            <td><%#Eval("Yer") %></td>
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
                                    <div id="main3">
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <input type="hidden"
                                                    class="form-control"
                                                    name="toplantiDetayId"
                                                    id="toplantiDetayId" runat="server" />
                                                <span class="messages"></span>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Adı
                                            </label>
                                            <div class="col-sm-4">
                                                <select class="js-example-data-array" id="selectToplantiDetayTa" name="selectToplantiDetayTa" runat="server">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Durum
                                            </label>
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
                                                        Yapılmadı
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                Toplantı
                                Sonrası Alınan
                                Kararlar
                                            </label>
                                            <div class="col-sm-4">
                                                <textarea
                                                    name="toplantiKonusu"
                                                    id="toplantiSonAlKarar"
                                                    cols="70" rows="10"
                                                    class="form-control max-width" runat="server"></textarea>
                                                <span class="messages"></span>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="button"
                                                    class="btn btn-primary m-b-0" runat="server" id="btnDetayKaydet" onserverclick="btnDetayKaydet_OnServerClick">
                                                    Kaydet
                                                </button>
                                                <button type="button" class="btn waves-effect waves-light btn-danger btn-square" runat="server" id="btnDetaySil" onserverclick="btnDetaySil_OnServerClick">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square" type="button" runat="server" id="btnDetayGuncelle" onserverclick="btnDetayGuncelle_OnServerClick">
                                                    Güncelle
                                                </button>
                                                <button type="button" id="toplantiTemizle" class="btn waves-effect waves-light btn-secondary btn-square" onclick="toplantiDetayTemizle()">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <h5>Toplantı Detay</h5>
                                </div>
                                <div class="card-block">
                                    <div class="dt-responsive table-responsive">
                                        <table id="dom-jqry"
                                            class="table table-striped table-bordered nowrap" style="width: 100%;">
                                            <thead>
                                                <tr>
                                                    <th hidden>Toplanti Detay Id</th>
                                                    <th hidden>Toplanti Id</th>
                                                    <th>Toplantı Adı</th>
                                                    <th>Toplantı Durum</th>
                                                    <th>Toplantıda Alınan
                                    Kararlar
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:ListView runat="server" ID="lvToplantiDetay">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td hidden><%#Eval("ToplantiDetayId") %></td>
                                                            <td hidden><%#Eval("ToplantiId") %></td>
                                                            <td><%#Eval("ToplantiAdi") %></td>
                                                            <td><%#Eval("ToplantiDurum") %></td>
                                                            <td><%#Eval("AlinanKararlar") %></td>
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
                <div class="tab-pane " id="toplantiAtama">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="card">
                                <div class="card-block">
                                    <div id="main">
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <span class="messages"></span>
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
                                            <label class="col-sm-2 col-form-label">Toplantı</label>
                                            <div class="col-sm-10">
                                                <select class="js-example-data-array" id="selectToplantiAtamaTa" name="selectToplantiDetayTa" runat="server">
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">
                                                İlgili
                                Kişiler
                                            </label>
                                            <div class="col-sm-10 col-xl-6 m-b-30">
                                                <select class="test" multiple id="selectKisiler" runat="server">
                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2"></label>
                                            <div class="col-sm-6">
                                                <button type="button"
                                                    class="btn btn-primary m-b-0" runat="server" id="btnAtamaKaydet" onserverclick="btnAtamaKaydet_OnServerClick">
                                                    Kaydet
                                                </button>
                                                <button class="btn waves-effect waves-light btn-danger btn-square">
                                                    Sil
                                                </button>
                                                <button class="btn waves-effect waves-light btn-warning btn-square">
                                                    Güncelle
                                                </button>
                                                <button type="button" id="ToplantiDetayTemizle" class="btn waves-effect waves-light btn-secondary btn-square">
                                                    Temizle
                                                </button>
                                            </div>
                                        </div>
                                    </div>
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
                                                    <th>Atayan Kişi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <asp:ListView runat="server" ID="lvToplantiAtama">
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td><%#Eval("ToplantiAdi") %></td>
                                                            <td><%#Eval("IlgiliKisiler") %></td>
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
<script>
    $(document).ready(function () {

        $("#colum-rendr tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            $("#toplantiId").val(rowData[0]);
            $("#tbxToplantiAdi").val(rowData[1]);
            $("#taToplantiIcerigi").val(rowData[2]);
            $("#tbxToplantiTarihi").val(rowData[3]);
            $("#tbxToplantiSaati").val(rowData[4]);
            $("#tbxToplantiYeri").val(rowData[5]);
        });

        $("#dom-jqry tbody").on('click', 'tr', function () {

            var rowData = $(this).children("td").map(function () {
                return $(this).text();
            }).get();

            $("#toplantiDetayId").val(rowData[0]);
            $("#selectToplantiDetayTa").val(rowData[2]).trigger("change");
            $("#inlineRadio1").val(rowData[3]);
            $("#toplantiSonAlKarar").val(rowData[4]);
            console.log(rowData);

        });
    });
</script>

<script>

    var toplantiDetayTemizle = function () {
        $("#toplantiDetayId").val("");
        $("#selectToplantiDetayTa").val("").trigger("change");
        $("#inlineRadio1").val("");
        $("#toplantiSonAlKarar").val("");

    };

    var toplantiTemizle = function () {
        $("#toplantiId").val("");
        $("#tbxToplantiAdi").val("");
        $("#taToplantiIcerigi").val("");
        $("#tbxToplantiTarihi").val("");
        $("#tbxToplantiSaati").val("");
        $("#tbxToplantiYeri").val("");

    };

    window.onload = function () {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=lblSonuc.ClientID %>").style.display = "none";
        },
            seconds * 1000);
    }


</script>


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

    var ta = document.querySelector('#tbxIlgiliKisiler');


    $('#selectKisiler').change(function () {
        var selectedValues = $(this).val();
        ta.innerText = selectedValues;
    });
    

</script>

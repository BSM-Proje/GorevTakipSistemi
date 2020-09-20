<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserBildirim.ascx.cs" ClientIDMode="Static" Inherits="GorevYonetimSistemi.Proje.User_Kontrol.UserBildirim" %>
<div class="card-block email-card">
    <div class="row">
        <div class="col-lg-12 col-xl-3">
            <div class="user-head row">
                <div class="user-face">
                    <img class="img-fluid" src="/Site/png/logo.png" alt="Theme-Logo" />
                </div>
            </div>
        </div>
        <div class="col-lg-12 col-xl-9">
            <div class="mail-box-head row justify-content-end">
                <div class="col-auto">
                    <div class="form-material">
                        <div class="material-group">
                            <div class="form-group form-default">
                                <input type="text" name="footer-email" class="form-control" required="">
                                <span class="form-bar"></span>
                                <label class="float-label">Search</label>
                            </div>
                            <div class="material-addone">
                                <i class="icofont icofont-search"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-lg-12 col-xl-3">
            <div class="user-body">
                <div class="p-20 text-center">
                    <a href="email-compose.html" class="btn btn-danger waves-effect">Compose</a>
                </div>
                <ul class="page-list nav nav-tabs flex-column" id="pills-tab" role="tablist">
                    <li class="nav-item mail-section">
                        <a class="nav-link waves-effect d-block active" data-toggle="pill" href="#e-inbox" role="tab">
                            <i class="icofont icofont-inbox"></i>Gelen Mesajlar
                                <span class="label label-primary float-right" id="spanInbox"></span>
                        </a>
                    </li>
                    <li class="nav-item mail-section">
                        <a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-trash" role="tab">
                            <i class="icofont icofont-ui-delete"></i>Çöp Kutusu
                                <span class="label label-info float-right" id="spanTrash"></span>
                        </a>
                    </li>
                    <li class="nav-item mail-section">
                        <a class="nav-link waves-effect d-block " data-toggle="pill" href="#e-approved" role="tab">
                            <i class="icofont icofont-inbox" ></i>Onaylanan Görevler
                            <span class="label label-primary float-right" id="spanApproved"></span>
                        </a>
                    </li>
                    <li class="nav-item mail-section">
                        <a class="nav-link waves-effect d-block " data-toggle="pill" href="#e-unapproved" role="tab">
                            <i class="icofont icofont-inbox"></i>Onaylanmayan Görevler
                            <span class="label label-primary float-right" id="spanUnApproved"></span>
                        </a>
                    </li>
                </ul>


            </div>
        </div>

        <div class="col-lg-12 col-xl-9">
            <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="e-inbox" role="tabpanel">
                    <div class="mail-body">
                        <div class="mail-body-header">
                            <button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
                                <i class="icofont icofont-exclamation-circle"></i>
                            </button>
                            <button type="button" class="btn btn-success btn-xs waves-effect waves-light" id="btnOnaylandi" runat="server" onserverclick="btnOnaylandi_OnServerClick">
                                Yapıldı <i class="icofont icofont-checked"></i>
                            </button>
                            <button type="button" class="btn btn-warning btn-xs waves-effect waves-light" id="btnOnaylanmadi" runat="server" onserverclick="btnOnaylanmadi_OnServerClick">
                                Yapılmadı <i class="fa fa-times-circle"></i>
                            </button>
                            <button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
                                <i class="icofont icofont-ui-delete"></i>
                            </button>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="icofont icofont-ui-folder"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    More
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                        </div>
                        <div class="mail-body-content">
                            <div class="table-responsive">
                                <table class="table" id="tableInbox">
                                    <thead>
                                        <th></th>
                                        <th hidden="">Gorev Id</th>
                                        <th>Görev Adı</th>
                                        <th>Görevin Son Tarihi</th>
                                        <th>Bildirim İçeriği</th>
                                        <th>Bildirim Gönderilme Tarihi</th>
                                        <th>Görev Onay Durumu</th>
                                    </thead>
                                    <tbody>
                                        <asp:ListView runat="server" ID="lvOkunmayanBildirimler">
                                            <ItemTemplate>
                                                <tr class="<%#Eval("BildirimOkumaDurum").Equals(true)?"read":"unread" %>">
                                                    <td>
                                                        <div class="check-star">
                                                            <div class="checkbox-fade fade-in-primary checkbox">
                                                                <label>
                                                                    <input type="checkbox" value='<%#Eval("GorevId") %>' runat="server" id="cbxChecked" onclick="Check()">
                                                                    <span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
                                                                </label>
                                                            </div>
                                                            <asp:Panel runat="server" ID="pnl">
                                                            </asp:Panel>
                                                        </div>
                                                    </td>

                                                    <td hidden><%#Eval("GorevId")%></td>
                                                    <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx?bildirimId=<%# Eval("BildirimId") %>" class="email-name waves-effect"><%#Eval("GorevAdi") %></a></td>
                                                    <td class="email-time"><%#Eval("GorevSonTarihSaat") %></td>
                                                    <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect">
                                                        <%#Eval("BildirimIcerik").ToString().Length>25?Eval("BildirimIcerik").ToString().Substring(0,25)+"...":Eval("BildirimIcerik") %>
                                                    </a></td>
                                                    <td class="email-time"><%#Eval("BildirimGondermeTarih") %></td>
                                                    <td><i class="<%#Eval("GorevOnayDurumu").Equals(true)?"fa fa-check text-success fa-2x":"fa fa-times-circle text-danger fa-2x" %>"></i></td>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="tab-pane fade" id="e-trash" role="tabpanel">
                    <div class="mail-body">
                        <div class="mail-body-header">
                            <button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
                                <i class="icofont icofont-exclamation-circle"></i>
                            </button>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="icofont icofont-ui-folder"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    More
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                        </div>
                        <div class="mail-body-content">
                            <div class="table-responsive">
                                <table class="table" id="tableTrash">
                                    <tr class="unread">
                                        <td>
                                            <div class="check-star">
                                                <div class="checkbox-fade fade-in-primary checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
                                                    </label>
                                                </div>
                                                <i class="icofont icofont-star text-danger"></i>
                                            </div>
                                        </td>
                                        <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect">Rinky Behl</a></td>
                                        <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect">Photoshop updates are available</a></td>
                                        <td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
                                        <td class="email-time">10:01 AM</td>
                                    </tr>
                                    <tr class="read">
                                        <td>
                                            <div class="check-star">
                                                <div class="checkbox-fade fade-in-primary checkbox">
                                                    <label>
                                                        <input type="checkbox" value="">
                                                        <span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
                                                    </label>
                                                </div>
                                                <i class="icofont icofont-star text-primary"></i>
                                            </div>
                                        </td>
                                        <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect">Harry John</a></td>
                                        <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect">New upcoming data available</a></td>
                                        <td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
                                        <td class="email-time">11:01 AM</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade show" id="e-approved" role="tabpanel">
                    <div class="mail-body">
                        <div class="mail-body-header">
                            <button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
                                <i class="icofont icofont-exclamation-circle"></i>
                            </button>
                            <button type="button" class="btn btn-success btn-xs waves-effect waves-light">
                                <i class="icofont icofont-inbox"></i>
                            </button>
                            <button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
                                <i class="icofont icofont-ui-delete"></i>
                            </button>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="icofont icofont-ui-folder"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    More
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                        </div>
                        <div class="mail-body-content">
                            <div class="table-responsive">
                                <table class="table" id="tableApproved">
                                    <asp:ListView runat="server" ID="lvOnaylananlar">
                                        <ItemTemplate>
                                            <tr class="<%#Eval("BildirimOkumaDurum").Equals(true)?"read":"unread" %>">
                                                <td>
                                                    <div class="check-star">
                                                        <div class="checkbox-fade fade-in-primary checkbox">
                                                            <label>
                                                                <input type="checkbox" value="" runat="server" id="tbx">
                                                                <span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
                                                            </label>
                                                        </div>
                                                        <asp:Panel runat="server" ID="pnl">
                                                        </asp:Panel>
                                                    </div>
                                                </td>

                                                <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx?bildirimId=<%# Eval("BildirimId") %>" class="email-name waves-effect"><%#Eval("GorevAdi") %></a></td>
                                                <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect"><%#Eval("BildirimIcerik") %></a></td>
                                                <td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
                                                <td class="email-time"><%#Eval("BildirimGondermeTarih") %></td>
                                                <td><i class="<%#Eval("GorevOnayDurumu").Equals(true)?"fa fa-check text-success fa-2x":""  %>"></i></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade show" id="e-unapproved" role="tabpanel">
                    <div class="mail-body">
                        <div class="mail-body-header">
                            <button type="button" class="btn btn-primary btn-xs waves-effect waves-light">
                                <i class="icofont icofont-exclamation-circle"></i>
                            </button>
                            <button type="button" class="btn btn-success btn-xs waves-effect waves-light" id="btnOnaylanmayan" runat="server" onserverclick="btnOnaylandi_OnServerClick">
                                <i class="icofont icofont-inbox"></i>
                            </button>
                            <button type="button" class="btn btn-danger btn-xs waves-effect waves-light">
                                <i class="icofont icofont-ui-delete"></i>
                            </button>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="icofont icofont-ui-folder"></i>
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                            <div class="btn-group dropdown-split-primary">
                                <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    More
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item waves-effect waves-light" href="#">Action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Another action</a>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Something else</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item waves-effect waves-light" href="#">Separated link</a>
                                </div>
                            </div>
                        </div>
                        <div class="mail-body-content">
                            <div class="table-responsive">
                                <table class="table" id="tableUnApproved">
                                    <asp:ListView runat="server" ID="lvOnaylanmayanlar">
                                        <ItemTemplate>
                                            <tr class="<%#Eval("BildirimOkumaDurum").Equals(true)?"read":"unread" %>">
                                                <td>
                                                    <div class="check-star">
                                                        <div class="checkbox-fade fade-in-primary checkbox">
                                                            <label>
                                                                <input type="checkbox" value="" runat="server" id="cbxCheck">
                                                                <span class="cr"><i class="cr-icon icofont icofont-verification-check txt-primary"></i></span>
                                                            </label>
                                                        </div>
                                                        <asp:Panel runat="server" ID="pnl">
                                                        </asp:Panel>
                                                    </div>
                                                </td>

                                                <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx?bildirimId=<%# Eval("BildirimId") %>" class="email-name waves-effect"><%#Eval("GorevAdi") %></a></td>
                                                <td><a href="/<%=Session["KullaniciTur"] %>/<%=Session["KullaniciTur"] %>BildirimDetay.aspx" class="email-name waves-effect"><%#Eval("BildirimIcerik") %></a></td>
                                                <td class="email-attch"><a href="#"><i class="icofont icofont-clip"></i></a></td>
                                                <td class="email-time"><%#Eval("BildirimGondermeTarih") %></td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>
    function Check() {
        var cbx = document.querySelector("#cbxChecked");
        if (cbx.checked) {
            console.log("Hello");
        }

    }
</script>


<script>
    var spanList = ["spanInbox", "spanTrash", "spanApproved", "spanUnApproved"];
    var tableList = ["tableInbox", "tableTrash", "tableApproved", "tableUnApproved"];

    for (var t in tableList) {
        console.log(t);
        var table = document.getElementById(tableList[t]);
        var totalRowCount = 0;
        var rowCount = 0;
        var rows = table.getElementsByTagName("tr");
        for (var i = 0; i < rows.length; i++) {
            totalRowCount++;
            if (rows[i].getElementsByTagName("td").length > 0) {
                rowCount++;
            }
        }

        var span = document.getElementById(spanList[t]);
        span.innerText = rowCount;
        console.log(table);
    }




</script>

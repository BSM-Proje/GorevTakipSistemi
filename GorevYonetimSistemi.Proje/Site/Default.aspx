<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="icon" href="https://colorlib.com/polygon/admindek/files/assets/images/favicon.ico" type="image/x-icon">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Quicksand:500,700" rel="stylesheet">



    <link rel="stylesheet" href="/Site/css/waves.min.css" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="/Site/css/font-awesome-n.min.css">
    <link rel="stylesheet" href="/Site/css/chartist.css" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="/Site/css/widget.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div class="row">
        <div class="col-xl-12 mt-2">
            <div class="alert alert-danger background-danger" style="display:<%=Int32.Parse(Session["OkunmayanBildirimSayisi"].ToString()).Equals(0)?"none":"block" %>">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <i class="icofont icofont-close-line-circled"></i>
                </button>
                <p class="text-center">
                    <%=Int32.Parse(Session["OkunmayanBildirimSayisi"].ToString()) == 0?"":Session["OkunmayanBildirimSayisi"] +" adet okunmayan mesajınız var!" %>
                </p>
            </div>
        </div>
        <div class="col-xl-6 col-md-6 col-xs-12">
            <div class="card prod-p-card card-info">
                <div class="card-body">
                    <div class="row align-items-center m-b-30">
                        <div class="col-auto">
                            <i class="fas fa fa-university text-c-blue f-40"></i>
                        </div>
                        <div class="col pt-2">
                            <h6 class="m-b-5 text-white">Aktif Akademik Dönem Bilgileri</h6>
                            <h3 class="m-b-0 f-w-700 text-white">2020-2021 Güz</h3>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-md-6 col-xs-12">
            <div class="card prod-p-card card-blue">
                <div class="card-body">
                    <div class="row align-items-center m-b-30">
                        <div class="col-auto">
                            <i class="fa fa-file-text text-c-blue f-18"></i>
                        </div>
                        <div class="col pt-2">
                            <h6 class="m-b-5 text-white">Onaylanmayan görev sayısı</h6>
                            <h3 class="m-b-0 f-w-700 text-white"><%=int.Parse(Session["GorevSayisi"].ToString())==0?"-":Session["GorevSayisi"] %></h3>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-md-12">
            <div class="card latest-update-card">
                <div class="card-header">
                    <h5>What’s New</h5>
                    <div class="card-header-right">
                        <ul class="list-unstyled card-option">
                            <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li>
                            <li><i class="feather icon-maximize full-card"></i></li>
                            <li><i class="feather icon-minus minimize-card"></i></li>
                            <li><i class="feather icon-refresh-cw reload-card"></i></li>
                            <li><i class="feather icon-trash close-card"></i></li>
                            <li><i class="feather icon-chevron-left open-card-option"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">
                    <div class="latest-update-box">
                        <div class="row p-t-20 p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <img src="/Site/jpg/avatar-4.jpg" alt="user image" class="img-radius img-40 align-top m-r-15 update-icon">
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>Your Manager Posted.</h6>
                                </a>
                                <p class="text-muted m-b-0">Jonny michel</p>
                            </div>
                        </div>
                        <div class="row p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <i class="feather icon-briefcase bg-c-red update-icon"></i>
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>You have 3 pending Task.</h6>
                                </a>
                                <p class="text-muted m-b-0">Hemilton</p>
                            </div>
                        </div>
                        <div class="row p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <i class="feather icon-check f-w-600 bg-c-green update-icon"></i>
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>New Order Received.</h6>
                                </a>
                                <p class="text-muted m-b-0">Hemilton</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-auto text-right update-meta p-r-0">
                                <img src="/Site/jpg/avatar-4.jpg" alt="user image" class="img-radius img-40 align-top m-r-15 update-icon">
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>Your Manager Posted.</h6>
                                </a>
                                <p class="text-muted m-b-0">Jonny michel</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-md-12">
            <div class="card latest-update-card">
                <div class="card-header">
                    <h5>What’s New</h5>
                    <div class="card-header-right">
                        <ul class="list-unstyled card-option">
                            <li class="first-opt"><i class="feather icon-chevron-left open-card-option"></i></li>
                            <li><i class="feather icon-maximize full-card"></i></li>
                            <li><i class="feather icon-minus minimize-card"></i></li>
                            <li><i class="feather icon-refresh-cw reload-card"></i></li>
                            <li><i class="feather icon-trash close-card"></i></li>
                            <li><i class="feather icon-chevron-left open-card-option"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="card-block">
                    <div class="latest-update-box">
                        <div class="row p-t-20 p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <img src="/Site/jpg/avatar-4.jpg" alt="user image" class="img-radius img-40 align-top m-r-15 update-icon">
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>Your Manager Posted.</h6>
                                </a>
                                <p class="text-muted m-b-0">Jonny michel</p>
                            </div>
                        </div>
                        <div class="row p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <i class="feather icon-briefcase bg-c-red update-icon"></i>
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>You have 3 pending Task.</h6>
                                </a>
                                <p class="text-muted m-b-0">Hemilton</p>
                            </div>
                        </div>
                        <div class="row p-b-30">
                            <div class="col-auto text-right update-meta p-r-0">
                                <i class="feather icon-check f-w-600 bg-c-green update-icon"></i>
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>New Order Received.</h6>
                                </a>
                                <p class="text-muted m-b-0">Hemilton</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-auto text-right update-meta p-r-0">
                                <img src="/Site/jpg/avatar-4.jpg" alt="user image" class="img-radius img-40 align-top m-r-15 update-icon">
                            </div>
                            <div class="col p-l-5">
                                <a href="#!">
                                    <h6>Your Manager Posted.</h6>
                                </a>
                                <p class="text-muted m-b-0">Jonny michel</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    <script src="/Site/js/jquery.flot.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script src="/Site/js/jquery.flot.categories.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script src="/Site/js/curvedlines.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script src="/Site/js/jquery.flot.tooltip.min.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>

    <script src="/Site/js/amcharts.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script src="/Site/js/serial.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script src="/Site/js/light.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>

    <script src="/Site/js/markerclusterer.js" type="2d8d78e876b340f9029c575b-text/javascript"></script>
    <script type="2d8d78e876b340f9029c575b-text/javascript" src="https://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="2d8d78e876b340f9029c575b-text/javascript" src="/Site/js/gmaps.js"></script>
    <script type="2d8d78e876b340f9029c575b-text/javascript" src="/Site/js/crm-dashboard.min.js"></script>


</asp:Content>

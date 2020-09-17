<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" AutoEventWireup="true" CodeBehind="BildirimDetay.aspx.cs" Inherits="GorevYonetimSistemi.Proje.BildirimDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="card-block email-card">
<div class="row">
<div class="col-lg-12 col-xl-3">
<div class="user-head row">
<div class="user-face">
<img class="img-fluid" src="png/logo.png" alt="Theme-Logo" />
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
<i class="icofont icofont-inbox"></i> Gelen Mesajlar
<span class="label label-primary float-right">6</span>
</a>
</li>
<li class="nav-item mail-section">
<a class="nav-link waves-effect d-block" data-toggle="pill" href="#e-trash" role="tab">
<i class="icofont icofont-ui-delete"></i> Çöp Kutusu
<span class="label label-info float-right">30</span>
</a>
</li>
</ul>

</div>
</div>


<div class="col-lg-12 col-xl-9">
<div class="mail-body">
<div class="mail-body-content email-read">
 <div class="card">
<div class="card-header">
<h5>Here You Have New Opportunity...</h5>
<h6 class="float-right">08:23 AM</h6>
</div>
<div class="card-block">
<div class="media m-b-20">
<div class="media-left photo-table">
<a href="#">
<img class="media-object img-radius" src="jpg/avatar-3.jpg" alt="E-mail User">
</a>
</div>
<div class="media-body photo-contant">
<a href="#">
<h6 class="user-name txt-primary">John Doe</h6>
</a>
<a class="user-mail txt-muted" href="#">
<h6>From:<span class="__cf_email__" data-cfemail="244e4b4c4a404b4115111017644349454d480a474b49">[email&#160;protected]</span></h6>
</a>
<div>
<h6 class="email-welcome-txt">Hello Dear...</h6>
<p class="email-content">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.
</p>
</div>
<div class="m-t-15">
<i class="icofont icofont-clip f-20 m-r-10"></i>Attachments <b>(3)</b>
<div class="row mail-img m-b-20">
<div class="col-sm-4 col-md-2 col-xs-12">
<a href="#"><img class="card-img-top img-fluid img-thumbnail" src="jpg/card1.jpg" alt="Card image cap"></a>
</div>
<div class="col-sm-4 col-md-2 col-xs-12">
<a href="#"><img class="card-img-top img-fluid img-thumbnail" src="jpg/card2.jpg" alt="Card image cap"></a>
</div>
<div class="col-sm-4 col-md-2 col-xs-12">
<a href="#"><img class="card-img-top img-fluid img-thumbnail" src="jpg/card13.jpg" alt="Card image cap"></a>
</div>
</div>
<div class="form-material">
<div class="form-group form-primary">
 <textarea class="form-control" id="exampleTextarea-1" required=""></textarea>
<span class="form-bar"></span>
<label class="float-label">Reply Your Thoughts</label>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

</div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>

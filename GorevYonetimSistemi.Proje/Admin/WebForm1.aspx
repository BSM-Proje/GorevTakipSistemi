<%@ Page Title="" Language="C#" MasterPageFile="~/Site/Page.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GorevYonetimSistemi.Proje.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h5>Okul Ekle</h5>
                                </div>
                                <div class="card-block">
                                    <form method="post" novalidate>
                                        
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Mesaj</label>
                                            <div class="col-sm-6">
                                                <input runat="server" type="text" class="form-control"
                                                       name="tbxMesaj" id="tbxMesaj"
                                                       placeholder="Okul adını giriniz."/>
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
                    <h5>Okul Listesi</h5>
                </div>
                <div class="card-block">
                    <div class="dt-responsive table-responsive">
                        <table id="row-select"
                            class="table table-striped table-bordered nowrap"style="width: 100%;">
                            <thead>
                                <tr>
                                    <th hidden>Okul Id</th>
                                    <th>Okul Adı</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:ListView runat="server" ID="lvOkul">
                                    <ItemTemplate>
                                        <tr>
                                            <td hidden><%#Eval("OkulId") %></td>
                                            <td><%#Eval("OkulAdi") %></td>
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
</asp:Content>

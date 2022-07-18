<%@ Page Title="" Language="C#" MasterPageFile="~/VitalBulgular.Master" AutoEventWireup="true" CodeBehind="Ates.aspx.cs" Inherits="HospitalSystem.Ates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Ateş Kaydı Giriniz</h3></div>
                                    <div class="card-body">
                                       
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
 
                                                        <asp:TextBox ID="doktor_txt" CssClass="form-control" placeholder="Doktor ismi"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Doktoru</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="tarih_txt" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Gelis Tarihi</label>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txt_servis" CssClass="form-control" placeholder="Servis Adı"  runat="server"></asp:TextBox>
                                                        <label for="inputPassword">Servis</label>
                                                    </div>
                                                </div>
                                               
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <asp:Button ID="btn_gelis"  CssClass="btn btn-warning btn-block"  runat="server" Text="Geliş Bilgisi Ekle"/>
                                            </div>
                                        <div>
                                           <asp:GridView ID="grd_girisbilgi_tablo" runat="server"></asp:GridView>
                                        </div>
                                        
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
</asp:Content>

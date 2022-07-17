<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="CikisBilgisiMstr.aspx.cs" Inherits="HospitalSystem.CikisBilgisiMstr" %>
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Yeni Hasta Kayıt</h3></div>
                                    <div class="card-body">
                                       
                                            <div class="row mb-3">
                                                
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="cikisTarih_txt" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Çıkış Tarihi</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="hasta_id_txt" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Hasta_id</label>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    
                                                </div>
                                               
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <asp:Button ID="btn_cikis"  class="btn btn-warning btn-block"  runat="server" Text="Hasta Çıkış" OnClick="btn_cikis_Click" />
                                            </div>
                                        <div>
                                           <asp:GridView ID="grd_çikis" runat="server"></asp:GridView>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="HastaBul.aspx.cs" Inherits="HospitalSystem.HastaBul" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        
                                            <div>
                                            
                                            </div>
                                        <div>
                                            Aradığınız ismi yazınız..
                                        </div>
                                            <div class="form-floating mb-3">
                                                
                                                <asp:TextBox ID="txt_aranan" CssClass="form-control" placeholder="name@example.com" runat="server"></asp:TextBox>
                                                <label for="inputEmail">Kullanıcı Adı</label>
                                            </div>
                                            <asp:GridView ID="GridView4" runat="server">
                                                    </asp:GridView>
                                            
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <!--<a class="small" href="password.html">Forgot Password?</a>-->
                                                <!--<a class="btn btn-primary" href="index.html">Login</a>-->
                                            <asp:Button ID="hasta_bul" CssClass="form-control" BackColor="Gray"  runat="server" Text="Hasta Bul" OnClick="hasta_bul_Click" />
                                                
                                            </div>
                                            
                                        <div>
                                            
                                        </div>
                                        
                                    </div>
                                    <div>
                                                    
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

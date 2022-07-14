<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="YetkiGirisMstr.aspx.cs" Inherits="HospitalSystem.YetkiGirisMstraspx" %>
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
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Hemşire</asp:ListItem>
                                                <asp:ListItem>Doktor</asp:ListItem>
                                               
                                            </asp:DropDownList>
                                            </div>
                                        <div>
                                            Giriş Rolünüz?
                                        </div>
                                            <div class="form-floating mb-3">
                                                
                                                <asp:TextBox ID="txt_ad" CssClass="form-control" placeholder="name@example.com" runat="server"></asp:TextBox>
                                                <label for="inputEmail">Kullanıcı Adı</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                
                                                <asp:TextBox ID="txt_sifre" CssClass="form-control" placeholder="name@example.com" runat="server"></asp:TextBox>
                                                <label for="inputEmail">Kullanıcı Şifre</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                                <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <!--<a class="small" href="password.html">Forgot Password?</a>-->
                                                <!--<a class="btn btn-primary" href="index.html">Login</a>-->
                                            <asp:Button ID="Button1" CssClass="form-control" BackColor="Gray"  runat="server" Text="Button" OnClick="Button1_Click" />
                                            </div>
                                        
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
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

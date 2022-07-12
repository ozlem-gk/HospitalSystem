<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="HospitalSystem.RegisterPage" %>

<!DOCTYPE html>

<html lang="tr">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="Boostrap/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <form runat="server">
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
                                                    <div class="form-floating mb-3 mb-md-0">
 
                                                        <asp:TextBox ID="ad_txt" CssClass="form-control" placeholder="Ad"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">İsim</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="soyad_txt" CssClass="form-control" placeholder="Soyad"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Soyad</label>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="tc_txt" CssClass="form-control" placeholder="Tc Numarası"  runat="server"></asp:TextBox>
                                                        <label for="inputPassword">Tc Numarası</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="dogumtarihi_txt" CssClass="form-control" placeholder="Doğum Tarihi"  runat="server"></asp:TextBox>
                                                        <label for="inputPasswordConfirm">Doğum Tarihi</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <asp:Button ID="btn_kayit"  class="btn btn-warning btn-block"  runat="server" Text="Kayıt Ekle" OnClick="btn_kayit_Click" />
                                            </div>
                                        <div class="mt-4 mb-0">
                                                <asp:Button ID="btn_gelisbilgisi"  class="btn btn-warning btn-block"  runat="server" Text="Geliş Bilgisi Oluştur" OnClick="btn_gelisbilgisi_Click" />
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
    </form>
    </body>
</html>


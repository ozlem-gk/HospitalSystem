<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="HospitalSystem.MainPage" %>

<!DOCTYPE html>

<html lang="tr" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Hastane Otomasyonu| Hasta Kayıt </title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="Boostrap/public/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="Boostrap/public/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="Boostrap/public/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="Boostrap/public/assets/img/favicons/favicon.ico">
    <link rel="manifest" href="Boostrap/public/assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="Boostrap/public/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="Boostrap/public/assets/css/theme.css" rel="stylesheet" />

  </head>


 
  <body>
      <form runat="server">

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container">
          <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto pt-2 pt-lg-0">
              <li class="nav-item"><a class="nav-link fw-bold active" aria-current="page" href="#">
                  <asp:Button ID="Button11" runat="server" CssClass="btn btn-lg btn-outline-primary rounded-pill" Text="Anasayfa" /></a></li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <asp:Button ID="Button7" aria-current="page"  CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Doktor Ara" OnClick="Button7_Click" /></a></li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <asp:Button ID="Button8" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Hasta Ara" OnClick="Button8_Click" /></a></li>
              <li class="nav-item"><a class="nav-link" href="#">
                  <asp:Button ID="btn_vital" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Vital Bulgu Girişi" OnClick="btn_vital_Click" /></a></li>
              <li class="nav-item"><a class="nav-link" href="#about">
                  <asp:Button ID="Button10" runat="server" CssClass="btn btn-lg btn-outline-primary rounded-pill" Text="Çıkış Yap" OnClick="Button10_Click" /></a></li>
            </ul>
          </div>
        </div>
      </nav>
      <section class="py-0">
        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/dot.png);background-position:left;background-size:auto;margin-top:-105px;">
        </div>
        <!--/.bg-holder-->

        <div class="container position-relative">
          <div class="row align-items-center">
            <div class="col-md-5 col-lg-6 order-md-1 pt-8"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/hero-header.png" alt="" /></div>
            <div class="col-md-7 col-lg-6 text-center text-md-start pt-5 pt-md-9">
              <h1 class="mb-4 display-3 fw-bold">E-Sağlık Hizmeti <br class="d-block d-lg-none d-xl-block" />Herkes İçin</h1>
              <p class="mt-3 mb-4 fs-1">Daha kolay ve güvenli sağlık sistemi<br class="d-none d-lg-block" />Kolay ve anlaşılır grafikler, Hızlı hizmet<br class="d-none d-lg-block" />Kolay kullanım</p><!--<a class="btn btn-lg btn-primary rounded-pill hover-top" href="#" role="button">Giris yap</a>-->
                <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary rounded-pill hover-top" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
            </div>
          </div>
        </div>
      </section>
      <section class="py-8">
        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/services-bg.png);background-position:center left;background-size:auto;">
        </div>
        <!--/.bg-holder-->

        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/dot-2.png);background-position:center right;background-size:auto;margin-left:-180px;margin-top:20px;">
        </div>
        <!--/.bg-holder-->

        <div class="container-lg">
          <div class="row justify-content-center">
            <div class="col-3 text-center">
              <h2 class="fw-bold">Hizmetler</h2>
              <hr class="w-25 mx-auto text-dark" style="height:2px;" />
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-sm-9 col-xl-8 text-center">
              <p>&nbsp;</p>
            </div>
          </div>
          <div class="row justify-content-center h-100 pt-7 g-4">
            <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/search.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Doktor Ara</h4>
                      <asp:Button ID="Button2" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Button" OnClick="Button2_Click" />
                    <p class="card-text">Yüzlerce Doktor arasından Doktorunu bul.</p>
                  </div>
                </div>
              </div>
            </div>
               <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/search.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Hasta Kayıtları</h4>
                      <asp:Button ID="Button5" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Button" OnClick="Button5_Click" />
                    <p class="card-text">Aradığın hastayı kolayca bul.</p>
                  </div>
                </div>
              </div>
            </div>
           
            <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/consultation.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Hasta Dökümantasyonu&nbsp;</h4>
                      <asp:Button ID="Button3" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Button" OnClick="Button3_Click" />
                    <p class="card-text">Free consultation with our trusted doctors and get the best recomendations</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/details-info.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Hasta Grafikleri</h4>
                      <asp:Button ID="Button4" CssClass="btn btn-lg btn-outline-primary rounded-pill" runat="server" Text="Button" OnClick="Button4_Click" />
                    <p class="card-text">Hasta vital bulgu grafikleri.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/emergency-care.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Acil Bakım</h4>
                    <p class="card-text">Tıbbi geçmişinizi ve sağlık verilerinizi takip edin.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-9 col-md-4">
              <div class="card h-100 w-100 shadow rounded-lg p-3 p-md-2 p-lg-3 p-xl-5">
                <div class="card-body text-center text-md-start">
                  <div class="py-3"><img class="img-fluid" src="Boostrap/public/assets/img/illustrations/tracking.png" height="90" alt="" /></div>
                  <div class="py-3">
                    <h4 class="fw-bold card-title">Raporlama</h4>
                    <p class="card-text">Tıbbi verilerinizi raporlayın.</p>
                  </div>
                </div>
              </div>
            </div>
            <div class="text-center py-4">
              <button class="btn btn-lg btn-outline-primary rounded-pill" type="submit">Daha Fazla</button>
            </div>
          </div>
        </div>
      </section>
     


          <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-6 py-lg-8">

       

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


      <section class="py-8" id="testimonial">
        <div class="container">
          <div class="bg-holder z-index-1" style="background-image:url(Boostrap/public/assets/img/illustrations/dot.png);background-position:right top;background-size:auto;margin-left:-30px;margin-top:10px;filter:contrast(1.5);">
          </div>
          <!--/.bg-holder-->

          <div class="bg-holder z-index-1" style="background-image:url(Boostrap/public/assets/img/illustrations/dot-2.png);background-position:left bottom;background-size:auto;margin-left:-35px;margin-top:-65px;filter:contrast(1.5);">
          </div>
          <!--/.bg-holder-->

          
        </div>
      </section>
      <section>
        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/article-bg.png);background-position:right center;background-size:auto;">
        </div>
        <!--/.bg-holder-->

        <div class="container-lg">
          <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/dot-2.png);background-position:left top;background-size:initial;margin-top:120px;margin-left:-35px;">
          </div>
          <!--/.bg-holder-->

          <div class="row flex-center">
            <div class="col-auto text-center">
              <h2 class="fw-bold">Son Yayınlanan Makaleler</h2>
              <hr class="mx-auto text-dark" style="height:2px;width:50px" />
            </div>
          </div>
          <div class="row h-100 justify-content-center pt-6">
            <div class="col-12 col-sm-9 col-md-4 mt-4">
              <div class="card h-100 rounded-3 shadow"><img src="Boostrap/public/assets/img/gallery/article-1.png" alt="" />
                <div class="card-body p-4 text-center text-md-start">
                  <h5 class="fw-bold">Disease detection</h5>
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-9 col-md-4 mt-4">
              <div class="card h-100 rounded-3 shadow"><img src="Boostrap/public/assets/img/gallery/article-2.png" alt="" />
                <div class="card-body p-4 text-center text-md-start">
                </div>
              </div>
            </div>
            <div class="col-12 col-sm-9 col-md-4 mt-4">
              <div class="card h-100 rounded-3 shadow"><img src="Boostrap/public/assets/img/gallery/article-3.png" alt="" />
                </div>
            </div>
          </div>
        </div>
      </section>
      <section class="py-6 pt-7 bg-primary-gradient">
        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/dot.png);background-position:left bottom;background-size:auto;filter:contrast(1.5);">
        </div>
        <!--/.bg-holder-->

        <div class="bg-holder" style="background-image:url(Boostrap/public/assets/img/illustrations/dot-2.png);background-position:right top;background-size:auto;margin-top:-75px;">
        </div>
        <!--/.bg-holder-->

       
      </section>
      

        <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-2">

        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="text-center">
                <p class="mb-0">&copy; This template is made with&nbsp;
                  <svg class="bi bi-suit-heart-fill" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#458FF6" viewBox="0 0 16 16">
                    <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"></path>
                  </svg>&nbsp;by&nbsp;<a class="text-black" href="https://themewagon.com/" target="_blank">ThemeWagon </a>
                </p>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->




    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="Boostrap/public/vendors/@popperjs/popper.min.js"></script>
    <script src="Boostrap/public/vendors/bootstrap/bootstrap.min.js"></script>
    <script src="Boostrap/public/vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="Boostrap/public/assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500&amp;display=swap" rel="stylesheet">
  </form>
  </body>
                
</html>

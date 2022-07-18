<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="VitalBulgu.aspx.cs" Inherits="HospitalSystem.VitalBulgu" %>
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Vital Bulgular</h3></div>
                                    <div class="card-body">
                                       
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
 
                                                        <asp:TextBox ID="txt_ates" CssClass="form-control" placeholder="Ateş Değeri"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Ateş</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txt_tarihAtes" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Ölçüm Tarihi</label>
                                                    </div>
                                               
                                                </div>
                                                <div class="mt-4 mb-0">
                                                    <asp:Button ID="btn_ates"  class="btn btn-warning btn-block"  runat="server" Text="Ateş Ekle" OnClick="btn_ates_Click" />
                                                </div>
                                                <div>
                                                    <asp:GridView ID="GrdAtes" runat="server"></asp:GridView>
                                                </div>
                                            </div>



                                           <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txt_nabiz" CssClass="form-control" placeholder="Nabız Değeri"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Nabız</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txt_tarihNabiz" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Ölçüm Tarihi</label>
                                                    </div>
                                                </div>
                                               <div class="mt-4 mb-0">
                                            <asp:Button ID="btn_nabiz"  class="btn btn-warning btn-block"  runat="server" Text="Nabız Ekle" OnClick="btn_nabiz_Click" />
                                        </div>
                                               <div>
                                                    <asp:GridView ID="GrdNabiz" runat="server"></asp:GridView>
                                                </div>
                                            </div>
                                        
                                            

                                        <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txt_solunum" CssClass="form-control" placeholder="Solunum Değeri"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Solunum</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txt_tarihSolunum" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Ölçüm Tarihi</label>
                                                    </div>
                                                </div>
                                                <div class="mt-4 mb-0">
                                            <asp:Button ID="btn_solunum"  class="btn btn-warning btn-block"  runat="server" Text="Solunum Ekle" OnClick="btn_solunum_Click" />
                                        </div>
                                            <div>
                                                    <asp:GridView ID="GrdSolunum" runat="server"></asp:GridView>
                                                </div>
                                            </div>
                                        

                                        
                                        <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txt_tansiyon" CssClass="form-control" placeholder="Tansiyon Değeri"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Tansiyon</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txt_tarihTansiyon" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Ölçüm Tarihi</label>
                                                    </div>
                                                </div>
                                            <div class="mt-4 mb-0">
                                            <asp:Button ID="btn_tansiyon"  class="btn btn-warning btn-block"  runat="server" Text="Tansiyon Ekle" OnClick="btn_tansiyon_Click" />
                                        </div>
                                            <div>
                                                    <asp:GridView ID="GrdTansiyon" runat="server"></asp:GridView>
                                                </div>
                                            </div>


                                        <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <asp:TextBox ID="txt_kan_sekeri" CssClass="form-control" placeholder="Tansiyon Değeri"  runat="server"></asp:TextBox>
                                                        <label for="inputFirstName">Kan Şekeri</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txt_tarihKan" CssClass="form-control" placeholder="Tarih"  runat="server"></asp:TextBox>
                                                        <label for="inputLastName">Ölçüm Tarihi</label>
                                                    </div>
                                                </div>
                                            <div class="mt-4 mb-0">
                                            <asp:Button ID="txt_kan"  class="btn btn-warning btn-block"  runat="server" Text="Kan Şekeri Ekle" OnClick="txt_kan_Click" />
                                        </div>
                                            <div>
                                                    <asp:GridView ID="GrdKan" runat="server"></asp:GridView>
                                                </div>
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

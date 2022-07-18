<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GrafikNabiz.aspx.cs" Inherits="HospitalSystem.Grafikler.GrafikNabiz" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v21.1, Version=21.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chart Control</title>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
</head>
<body style="text-align:center; background:#0094ff">  
   <form id="form1" runat="server">  
        <div class="container py-4">  
            <h4 class="text-uppercase text-center">Nabız Grafiği</h4>  
            <div class="form-group">  
                <label>Select Chart:</label>  
                <asp:DropDownList ID="ddlChartNabiz" AutoPostBack="true" runat="server" CssClass="custom-select col-md-4" OnSelectedIndexChanged="ddlChartNabiz_SelectedIndexChanged"></asp:DropDownList>  
            </div>  
            <asp:Chart ID="Chart1" runat="server" Width="450px">  
                <Titles>  
                    <asp:Title Text="Total Marks of Students"></asp:Title>  
                </Titles> 
                <Series>  
                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Spline" YValuesPerPoint="2"></asp:Series>  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1">  
                        <AxisX Title="Tarih"></AxisX>  
                        <AxisY Title="Sonuc"></AxisY>  
                    </asp:ChartArea>  
                </ChartAreas>  
            </asp:Chart>  
        </div>
       <div class="container py-4">  
            <h4 class="text-uppercase text-center">Ateş Grafiği</h4>  
            <div class="form-group">  
                <label>Select Chart:</label>  
                <asp:DropDownList ID="ddlChartAtes" AutoPostBack="true" runat="server" CssClass="custom-select col-md-4" OnSelectedIndexChanged="ddlChartAtes_SelectedIndexChanged"></asp:DropDownList>  
            </div>  
            <asp:Chart ID="Chart2" runat="server" Width="450px">  
                <Titles>  
                    <asp:Title Text="Total Marks of Students"></asp:Title>  
                </Titles> 
                <Series>  
                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Spline" YValuesPerPoint="2"></asp:Series>  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1">  
                        <AxisX Title="Tarih"></AxisX>  
                        <AxisY Title="Sonuc"></AxisY>  
                    </asp:ChartArea>  
                </ChartAreas>  
            </asp:Chart>  
        </div>
       <div class="container py-4">  
            <h4 class="text-uppercase text-center">Solunum Grafiği</h4>  
            <div class="form-group">  
                <label>Select Chart:</label>  
                <asp:DropDownList ID="ddlChartSolunum" AutoPostBack="true" runat="server" CssClass="custom-select col-md-4" OnSelectedIndexChanged="ddlChartSolunum_SelectedIndexChanged"></asp:DropDownList>  
            </div>  
            <asp:Chart ID="Chart3" runat="server" Width="450px">  
                <Titles>  
                    <asp:Title Text="Total Marks of Students"></asp:Title>  
                </Titles> 
                <Series>  
                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Spline" YValuesPerPoint="2"></asp:Series>  
                </Series>  
                <ChartAreas>  
                    <asp:ChartArea Name="ChartArea1">  
                        <AxisX Title="Tarih"></AxisX>  
                        <AxisY Title="Sonuc"></AxisY>  
                    </asp:ChartArea>  
                </ChartAreas>  
            </asp:Chart>  
        </div>
       
    </form>   
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deneme.aspx.cs" Inherits="HospitalSystem.deneme" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chart Control</title>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"/> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script> 
</head>
<body style="background:#0094ff">  
   <form id="form1" runat="server">  
        <div class="container py-4">  
            <h4 class="text-uppercase text-center">Chart Control in asp.net</h4>  
            <div class="form-group">  
                <label>Select Chart:</label>  
                <asp:DropDownList ID="ddlChart" AutoPostBack="true" runat="server" CssClass="custom-select col-md-4" OnSelectedIndexChanged="ddlChart_SelectedIndexChanged"></asp:DropDownList>  
            </div>  
            <asp:Chart ID="Chart1" runat="server" Width="450">  
                <Titles>  
                    <asp:Title Text="Total Marks of Students"></asp:Title>  
                </Titles>  
                <Series>  
                    <asp:Series Name="Series1" ChartArea="ChartArea1"></asp:Series>  
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

<%@ Page Title="" Language="C#" MasterPageFile="induseducation.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="css/zerogrid.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/responsiveslides.css" />
    
    
 
  <link href="css/hoverstyles.css" rel="stylesheet" type="text/css" />  
    
    
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="js/responsiveslides.js" type="text/javascript"></script>
    <style type="text/css">
.lable
{
	color: #1757E8;
	font: 13px Verdana,arial,helvetica,clean,sans-serif;
	font-family: "Trebuchet MS";
    font-size: 48px;
}
.h2
{
	font-family: "Trebuchet MS";
color: #4EA601;
font-size: 20px;
font-weight: bold;
line-height: 1.1;
}
.hyper
{
	font: 13px Verdana,arial,helvetica,clean,sans-serif;
	color: #3B6715;
	text-decoration:none;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Lower kindergarten " CssClass="lable"></asp:Label><br />
    <p>Here is a list of all of the skills students learn in LKG! These skills are organised into categories, and you can move your mouse over any skill name to view a sample question. To start practising, just click on any link. IXL will track your score, and the questions will automatically increase in difficulty as you improve! </p>
<table><tr><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">Shapes</h2>
    A1:<asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyper" 
        NavigateUrl="Default3.aspx">Identify circles,Squres and triangles</asp:HyperLink>
    <br />
    A2:<asp:HyperLink ID="HyperLink2" runat="server" CssClass="hyper" 
        NavigateUrl="Default3.aspx">Identify Squres and Rectangles</asp:HyperLink></td><td></td><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">Count to 10</h2>
    C1:<asp:HyperLink ID="HyperLink7" runat="server" CssClass="hyper" 
        NavigateUrl="Default3.aspx">Count dots (upto 3)</asp:HyperLink>
    <br />
    C2:<asp:HyperLink ID="HyperLink8" runat="server" CssClass="hyper" 
        NavigateUrl="Default3.aspx">Count Shapes (upto 3)</asp:HyperLink></td></tr>
    <tr><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">Count to 3</h2>
    B1:<asp:HyperLink ID="HyperLink3" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">Count Dots (up tp 3)</asp:HyperLink>
    <br />
    B2:<asp:HyperLink ID="HyperLink4" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">Count Shapes (up to 3) </asp:HyperLink>
      <br />
    B3:<asp:HyperLink ID="HyperLink5" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">Count objects (up to 3) </asp:HyperLink>
      <br />
    B4:<asp:HyperLink ID="HyperLink6" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">Represent Numbers (up to 3) </asp:HyperLink></td></tr></table>
</asp:Content>


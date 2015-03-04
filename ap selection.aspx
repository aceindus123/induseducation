<%@ Page Title="" Language="C#" MasterPageFile="induseducation.master" AutoEventWireup="true" CodeFile="ap selection.aspx.cs" Inherits="Default5" %>

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
.hyper
{
	font: 13px Verdana,arial,helvetica,clean,sans-serif;
	color: #3B6715;
	text-decoration:none;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="Label1" runat="server" Text=":: General Aptitude" CssClass="lable"></asp:Label>
<table><tr><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">:: General Aptitude</h2>
    A1:<asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyper" 
        NavigateUrl="Ap topics.aspx">Arithmetic Aptitude</asp:HyperLink>
    <br />
    A2:<asp:HyperLink ID="HyperLink2" runat="server" CssClass="hyper" 
        NavigateUrl="Ap topics.aspx">Data Interpretation</asp:HyperLink></td><td></td><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">:: Verbal and Reasoning</h2>
    C1:<asp:HyperLink ID="HyperLink7" runat="server" CssClass="hyper" 
        NavigateUrl="Ap topics.aspx">Verbal Ability</asp:HyperLink>
    <br />
    C2:<asp:HyperLink ID="HyperLink8" runat="server" CssClass="hyper" 
        NavigateUrl="Ap topics.aspx">Logical Reasoning</asp:HyperLink></td></tr>
    <tr><td><h2 style="color: #4EA601;font-size: 20px;font-weight: bold;line-height: 1.1;">:: Online Tests</h2>
    B1:<asp:HyperLink ID="HyperLink3" runat="server" CssClass="hyper" 
            NavigateUrl="Ap topics.aspx">Aptitude Test</asp:HyperLink>
    <br />
    B2:<asp:HyperLink ID="HyperLink4" runat="server" CssClass="hyper" 
            NavigateUrl="Ap topics.aspx">Verbal Ability Test </asp:HyperLink>
      <br />
    B3:<asp:HyperLink ID="HyperLink5" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">C Programming Test</asp:HyperLink>
      <br />
    B4:<asp:HyperLink ID="HyperLink6" runat="server" CssClass="hyper" 
            NavigateUrl="Default3.aspx">Java Programming Test </asp:HyperLink></td></tr></table>
</asp:Content>


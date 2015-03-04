<%@ Page Title="" Language="C#" MasterPageFile="induseducation.master" AutoEventWireup="true" CodeFile="Ap questions.aspx.cs" Inherits="Default7" %>

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
    .h2
      {
	font: 12px/1.4 "IXL Verdana",Verdana,Arial,Helvetica,sans-serif;
      }
.a1 {
    
    background: url("images/answer.png") no-repeat scroll left center transparent;
    padding-left: 20px;
margin: 0px 10px 0px 5px;
   
}
.a2 {
    
    background: url("images/worspace.png") no-repeat scroll left center transparent;
    padding-left: 20px;
margin: 0px 10px 0px 5px;
   
}
.a3 {
    
    background: url("images/report.png") no-repeat scroll left center transparent;
    padding-left: 20px;
margin: 0px 10px 0px 5px;
   
}
 .panel{
        display:none;
    }

</style>
<script type="text/javascript" src="jquery.fadingslidetoggle.js"></script>
    
    <script type="text/javascript">
        $(function () {
            $("#HyperLink1").click(function (evt) {
                evt.preventDefault();
                $('#panelText').slideToggle('slow');
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<table style="border: thin solid #C0C0C0"><tr><td><asp:Label ID="Label1" CssClass="h2" runat="server" Text="1.A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train? "></asp:Label></td></tr>
<tr><td><table style="width: 617px" ><tr><td>A. 	120 metres</td><td>B. 	180 metres</td></tr>

<tr><td>C. 	324 metres</td><td>D. 	150 metres</td></tr>
<tr><td>
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="a1" >Answer </asp:HyperLink></td><td><asp:HyperLink CssClass="a2" ID="HyperLink2" runat="server">Workspace </asp:HyperLink></td><td>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="a3">Report</asp:HyperLink></td></tr></table>
                            </td></tr></table><p>Answer: Option D</p>
    <p>&nbsp;Explanation:

Speed= 		60 x 	5 	m/sec 	= 		50 	m/sec.
18 	3</p>
    <p>&nbsp;Length of the train = (Speed x Time) = 		50 	x 9 	m = 150 m.</p>

    <table style="border: thin solid #C0C0C0"><tr><td><asp:Label ID="Label2" CssClass="h2" runat="server" Text="2.A can do a work in 15 days and B in 20 days. If they work on it together for 4 days, then the fraction of the work that is left is :"></asp:Label></td></tr>
<tr><td><table style="width: 617px" ><tr><td>A. 	1/4</td><td>B. 	1/10</td></tr>

<tr><td>C. 	7/15</td><td>D. 	8/15</td></tr>
<tr><td>
    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="a1" >Answer </asp:HyperLink></td><td><asp:HyperLink CssClass="a2" ID="HyperLink5" runat="server">Workspace </asp:HyperLink></td><td>
        <asp:HyperLink ID="HyperLink6" runat="server" CssClass="a3">Report</asp:HyperLink></td></tr></table>
                            </td></tr></table><p>Answer: Option D
 </p>
    <p>Explanation: A's 1 day's work = 1 ;</p>
    <p>&nbsp;15 B's 1 day's work = 1 ; 20 (A + B)'s 1 day's work = ( 1 + 1 ) = 7 . 
15 20 60 (A + B)'s 4 day's work = ( 7 x 4 ) = 7 . 60 15 
</p>
    <p>Therefore, Remaining work = ( 1 - 7 ) = 8 . 15 15 &nbsp;</p>
                               
                           
</asp:Content>


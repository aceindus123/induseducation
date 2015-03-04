<%@ Page Title="" Language="C#" MasterPageFile="induseducation.master" AutoEventWireup="true" CodeFile="contact-indusedu.aspx.cs" Inherits="contact_indusedu" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
		<div class="main">
			<div class="zerogrid">
				<div class="row">
					<div class="col-full">
							
                            <div class="col-1-4">
                            	<div id="cssmenu">                         
                           
            <ul>
         <li> <a href="#"> DESIGN ENGINEERING PROGRAMS </a> </li>
        <li> <a href="#"> MECHANICAL ENGINEERING </a> </li>
       <li> <a href="#"> INFORMATION TECHNOLOGY</a> </li>
       
       <li> <a href="#"> EMBEDDED SYSTEMS & SOFTWARE TESTING </a> </li>
        <li> <a href="#"> PTC TRAINNING PROGRAM </a> </li>
       <li> <a href="#"> IACM COURSES </a> </li>
		  <li> <a href="#"> EXECUTIVE MANAGEMENT COURSES </a>   </li>   
          
            <li style="border-bottom:none;"> <a href="#"> <img src="images/arrow2.png" width="14" height="15" alt="" />  Association & Affiliactions </a>    </li>
           <li style="border-bottom:none;"> <a href="#"> <img src="images/arrow2.png" width="14" height="15" alt="" />  Modes of Study </a>   </li>
            <li style="border-bottom:none;"> <a href="#"> <img src="images/arrow2.png" width="14" height="15" alt="" />  Syllabus </a>   </li>
            <li style="border-bottom:none;"> <a href="faculty.html">  <img src="images/arrow2.png" width="14" height="15" alt="" /> Faculty List </a>   </li>
         
</ul>


     </div>       
</div>
                            
      <div class="col-2-4">     
      <h1> 	 Contact Us   </h1>
       
    
     <div><table>
     <tr><td style="width:200px;height:25px;font-family:Arial" >Username</td>
     <td>  <asp:TextBox type="text" name="username"  runat="server" id="TextBox1" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
     <tr><td style="width:200px;height:25px;font-family:Arial" >Designation</td>
     <td>  <asp:TextBox type="text" name="username"  runat="server" id="TextBox2" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
     
       <tr><td style="width:200px;height:25px;font-family:Arial" >Email</td>
     <td>  <asp:TextBox type="text" name="username"  runat="server" id="TextBox4" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
       <tr><td style="width:200px;height:25px;font-family:Arial" >Contact Number</td>
     <td>  <asp:TextBox type="text" name="username"  runat="server" id="TextBox5" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
       <tr><td style="width:200px;height:25px;font-family:Arial;margin-top:5px;" >Comments</td>
     <td  style="margin-top:5px;">  <asp:TextBox type="text" name="username"  runat="server" id="TextBox6" TextMode="MultiLine" Width="150px" Height="45px" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
      <tr><td style="width:200px;height:25px;font-family:Arial;margin-top:5px;" >Address</td>
     <td style="margin-top:5px;">  <asp:TextBox type="text" name="username"  runat="server" id="TextBox3" TextMode="MultiLine" Width="150px" Height="45px" tabindex="1" autocomplete="off" class="formtext"></asp:TextBox>
   </td>
     </tr>
     <tr><td colspan="2"><br /></td></tr>
     <tr><td colspan="2" align="center">
     <asp:Button ID="btnsubmit" runat="server" Text="submit" />&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" Text="Reset" />
     </td></tr>

      </table></div>
   
   
      </div>

<!--        col-2-4 end   -->      
               </div>
				</div>
			</div>
		</div>
              </div>
</asp:Content>


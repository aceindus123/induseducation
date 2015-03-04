<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indusedu_adminhome.aspx.cs" Inherits="Admin_indusedu_adminhome" %>
<%@ Register Src="~/Admin/usercontrols/headermenu.ascx" TagName="FirstLeftA" TagPrefix="First" %>
<%@ Register Src="~/Admin/usercontrols/headerbelow.ascx" TagName="headerbg" TagPrefix="hb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="../css/style.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div class="adminbodybackground" style="background-image:url(images/adminbackg.jpg)">
    <table style="width:100%"><tr><td>
    <First:FirstLeftA ID="FirstLeftA1" runat="server" />
    </td></tr>
    <tr><td>  <hb:headerbg ID="Headerbg1" runat="server" /></td></tr>

  <tr><td><br /></td></tr>
  <tr><td style="color:#06234f;font-weight:bold" align="center">Indus Education Home</td></tr>
  
  <tr><td><br /></td></tr>
  <tr><td align="center"><table width="60%"> 
  <tr>
  <td><asp:ImageButton ID="imgadmin" runat="server" ImageUrl="~/Admin/images/Admin.png"  OnClick="lnkadminclick"/> <br />
  &nbsp;&nbsp;<asp:LinkButton ID="lnkadmin" runat="server" OnClick="lnkadminclick" CssClass="adminhomecontent" Text="Admin"></asp:LinkButton></td>
  
  <td><asp:ImageButton ID="imguser" runat="server" ImageUrl="~/Admin/images/users10.png"  OnClick="lnkadminusers_Click"/> <br />
  &nbsp;&nbsp;<asp:LinkButton ID="lnkadminusers" runat="server"  CssClass="adminhomecontent" 
          Text="Users" onclick="lnkadminusers_Click"></asp:LinkButton></td>
  
   <td><asp:ImageButton ID="imgsupport" runat="server" ImageUrl="~/Admin/images/support.png"  OnClick="lnksupport_Click"/> <br />
  &nbsp;&nbsp;<asp:LinkButton ID="lnksupport" runat="server"  CssClass="adminhomecontent" 
           Text="Support" onclick="lnksupport_Click"></asp:LinkButton></td>
  
  <td><asp:ImageButton ID="imgloginusers" runat="server" ImageUrl="~/Admin/images/loginusers.png"  OnClick="lnkloginusers_Click"/> <br />
 <asp:LinkButton ID="lnkloginusers" runat="server"  CssClass="adminhomecontent" 
          Text="visiting Users" onclick="lnkloginusers_Click"></asp:LinkButton></td>
  
  </tr>
  </table></td></tr>
  </table>
    </div>
    </form>
</body>
</html>

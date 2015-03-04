<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Admin/Default.aspx.cs" Inherits="Admin_Default" %>
<%@ Register Src="usercontrols/headermenu.ascx" TagName="FirstLeftA" TagPrefix="First" %>
<%@ Register Src="usercontrols/headerbelow.ascx" TagName="headerbg" TagPrefix="hb" %>

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
    <First:FirstLeftA runat="server" />
    </td></tr>
    <tr><td>  <hb:headerbg ID="Headerbg1" runat="server" /></td></tr>

  <tr><td><br /></td></tr>
  <tr id="lbl" visible="false" runat="server"><td align="center" class="displayerror" style="width:1000px"><asp:Label ID="lblmsg" runat="server"></asp:Label></td></tr>
  <tr><td align="center" style="width:50%;color:#06234f;font-weight:bold;">Admin Login Details</td></tr>
   <tr><td><br /></td></tr>
  <tr><td  align="center" style="width:50%">
    <table style="border:solid 1px gray;" width="550px">
    
    <tr>
    <td style="background-color:#2d69b3;height:30px;width:60%" align="center" colspan="2">
    <asp:Label ID="lbltitle" runat="server" Text="IndusEducation" ForeColor="White" Font-Bold="true"></asp:Label>
    &nbsp;&nbsp;<strong style="color:White;">|</strong>&nbsp;&nbsp;
    <asp:Label ID="lbladmintitle" runat="server" Text="Administration" ForeColor="White" Font-Bold="true"></asp:Label></td>
    </tr>
    
      <tr>
      
      <td style="background-image:url(images/hg.jpg);background-repeat:no-repeat;height:200px;width:180px" align="left"></td>
      <td ><table style="100%">
      <tr>
      <td class="admintdleftnames" align="right"><asp:Label runat="server" Text="UserType"></asp:Label>  </td>
      <td class="colonstyle"><strong>:</strong></td>
      <td align="left" class="adminrighttd"><asp:DropDownList ID="ddlusertype" runat="server" CssClass="admindropdownsmedium"></asp:DropDownList></td>
      </tr>
      
      <tr>
      <td class="admintdleftnames" align="right"><asp:Label ID="Label1" runat="server" Text="Country"></asp:Label>  </td>
      <td class="colonstyle"><strong>:</strong></td>
      <td align="left"  class="adminrighttd"><asp:DropDownList ID="ddlcountry" runat="server" CssClass="admindropdownsmedium"></asp:DropDownList></td>
      </tr>
       <tr>
      <td class="admintdleftnames" align="right"><asp:Label ID="Label2" runat="server" Text="User Id"></asp:Label>  </td>
      <td class="colonstyle"><strong>:</strong></td>
      <td align="left"  class="adminrighttd"><asp:TextBox ID="txtuserid" runat="server" CssClass="admintestboxes"></asp:TextBox></td>
      </tr>
       <tr>
      <td class="admintdleftnames" align="right"><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>  </td>
      <td class="colonstyle"><strong>:</strong></td>
      <td align="left"  class="adminrighttd"><asp:TextBox ID="txtpwd" runat="server" CssClass="admintestboxes"></asp:TextBox></td>
      </tr>
      <tr><td colspan="3" align="center" >
      <asp:Button ID="btnlogin" runat="server" Text="Login" BackColor="#2d69b3" ForeColor="White" Font-Bold="true" CssClass="adminbutton"
       onclick="btnlogin_Click" CausesValidation="true"/>
      </td></tr>
      </table></td>
    
      </tr>
    </table>
      </td></tr>
    
       </table>
    </div>
    </form>
</body>
</html>

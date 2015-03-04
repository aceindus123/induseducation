<%@ Control Language="C#" AutoEventWireup="true" CodeFile="headerbelow.ascx.cs" Inherits="Admin_usercontrols_headerbelow" %>
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<div class="main" style="width:1000px;text-align:center;">
<table style="width:100%"><tr><td  align="center" style="background-color:#06234f;height:25px">
<table style="width:90%"><tr>
<td align="left"><asp:Label ID="lblname" runat="server" Text="Admin" ForeColor="White" Font-Bold="true"></asp:Label></td>
<td align="right"><asp:LinkButton ID="lnklogout" runat="server" Text="LogOut" ForeColor="White" Font-Bold="true" Visible="false"></asp:LinkButton></td>
</tr></table>
</td></tr></table>
</div>
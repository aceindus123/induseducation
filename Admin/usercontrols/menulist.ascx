<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menulist.ascx.cs" Inherits="Admin_usercontrols_menulist" %>
<link rel="stylesheet" type="text/css" href="../../css/style.css" />

<div style="margin:0 auto">
<table width="100%">
<tr><td align="center" style="width:60%">
<table width="80%"><tr>
<td style="width:10%" align="center"><asp:LinkButton ID="lnkhome" runat="server" Text="Home" CssClass="adminmenustyle" ></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:10%" align="center"><asp:LinkButton ID="lnkclients" runat="server" Text="Clients"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:10%" align="center"><asp:LinkButton ID="lnkusers" runat="server" Text="Users"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:10%" align="center"><asp:LinkButton ID="lnksupport" runat="server" Text="Support"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:15%" align="center"><asp:LinkButton ID="lnkvisit" runat="server" Text="Visited Users"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:10%" align="center"><asp:LinkButton ID="lnkfeedback" runat="server" Text="FeedBack"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:10%" align="center"><asp:LinkButton ID="lnkcareers" runat="server" Text="Careers"  CssClass="adminmenustyle"></asp:LinkButton></td>
<td align="center"><strong>|</strong></td>
<td style="width:15%" align="center"><asp:LinkButton ID="lnkonlinetets" runat="server" Text="Online Test"  CssClass="adminmenustyle"></asp:LinkButton></td>
</tr></table>
</td></tr>
</table>
</div>
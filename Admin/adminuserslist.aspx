<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminuserslist.aspx.cs" Inherits="Admin_adminuserslist" %>
<%@ Register Src="~/Admin/usercontrols/headermenu.ascx" TagName="FirstLeftA" TagPrefix="First" %>
<%@ Register Src="~/Admin/usercontrols/headerbelow.ascx" TagName="headerbg" TagPrefix="hb" %>
<%@ Register Src="~/Admin/usercontrols/menulist.ascx" TagName="menu" TagPrefix="menulist" %>
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
    <tr><td><menulist:menu runat="server" /></td> </tr>
  <tr><td><br /></td></tr>
  <tr>
  <td class="headings" align="center">Users Information</td>
 
  </tr>
  
  <tr><td align="center"><table width="80%"> 
  <tr><td colspan="2" align="right">
   <a ID="lnkbtnback" runat="server" Text="Back"
  
  href='javascript:window.history.go(-1)' CssClass="adminmenustyle"></a>
  </td></tr>
     <tr>
                          <td align="left" style="padding-bottom:10px;">
                          <asp:Button ID="btnVieworEdit" runat="server" Text="View / Edit" OnClientClick="return IsSelectedAtleastOneCheckBox1();"
                                 OnClick="ViewDetails_Click" style="border-radius:1px solid black;" />
                         
                            <asp:Button ID="btnActivate" runat="server" Text="Enable" OnClientClick="return IsSelectedAtleastOneCheckBox2();"
                                 OnClick="Activate_Click" style="border-radius:1px solid black;" />                          
                         
                            <asp:Button ID="btnDeactivate" runat="server" Text="Disable"  
                                 OnClick="Deactivate_Click" style="border-radius:1px solid black;" OnClientClick="return IsSelectedAtleastOneCheckBox3();"/>                          
                        
                            <asp:Button ID="btnDelete" runat="server" Text="Delete"  
                                 OnClick="lnkDelete_Click" style="border-radius:1px solid black;" OnClientClick="return IsSelectedAtleastOneCheckBox();"/>                          
                          </td>
                          <td align="right" style="padding-bottom:10px;">
                            <asp:Button ID="btnCreateUser" runat="server" Text="Create New User" 
                                  style="border-radius:1px solid black;" OnClick="btnCreateUser_Click" />                          
                          </td>
                        </tr>
                         <tr>
                            <td colspan="2" style="background-color:#E3E5E6;Width:100%">
                            <asp:GridView ID="ViewGridWbAdmin" runat="server" OnPageIndexChanging="ViewGridWbAdmin_PageIndexChanging"
                 Width="100%" DataKeyNames="id"  AutoGenerateColumns="false" OnRowDataBound="ViewGridWbAdmin_ItemDataBound">
                <HeaderStyle HorizontalAlign="Center"  Font-Size="13px" Height="28px" Font-Names="verdana" ForeColor="#00277a" /> 
                <RowStyle  HorizontalAlign="Center"  Font-Size="11px" ForeColor="Black" Font-Names="verdana" BackColor="#f0f0f0" BorderColor="#00277a"/> 
                <PagerStyle  />  
       
                
                <Columns>
                
                <asp:TemplateField HeaderText="">
                <ItemStyle ForeColor="Black" />
                <ItemTemplate >
                <asp:CheckBox ID="CheckBoxreq" runat="server" />  
                </ItemTemplate>
                <ItemStyle Width="50px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User">
                <ItemStyle HorizontalAlign="Center"  ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                <asp:Label ID="lbluserid" runat="server"  Text='<%#Eval("UserId") %>'/>
                 
                </ItemTemplate>
                </asp:TemplateField>  
                  <asp:TemplateField HeaderText="First Name">
                <ItemStyle HorizontalAlign="Center"  ForeColor="Black" BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                      <asp:Label ID="lblFName" runat="server"  Text='<%#Eval("FName") %>' />        
                </ItemTemplate>
                </asp:TemplateField>  

                 <asp:TemplateField HeaderText="Last Name">
                <ItemStyle HorizontalAlign="Center"  ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                      <asp:Label ID="lblLname" runat="server"  Text='<%#Eval("LName") %>' />        
                </ItemTemplate>
                </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Designation">
                <ItemStyle HorizontalAlign="Center"   ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                      <asp:Label ID="lblDesignation" runat="server"  Text='<%#Eval("Designation") %>' />        
                </ItemTemplate>
                </asp:TemplateField> 
                  <asp:TemplateField HeaderText="Country">
                <ItemStyle HorizontalAlign="Center"   ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                      <asp:Label ID="lblCountry" runat="server"  Text='<%#Eval("Country") %>' />        
                </ItemTemplate>
                </asp:TemplateField> 
                  <asp:TemplateField HeaderText="Created Date">
                <ItemStyle HorizontalAlign="Center"   ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                  <asp:Label ID="lblCreatedate" runat="server" ItemStyle-BorderColor="Black" Text='<%# Eval("posteddate") %>'></asp:Label>  
                </ItemTemplate>
                </asp:TemplateField>  
                   <asp:TemplateField HeaderText="Status">
                <ItemStyle HorizontalAlign="Center"   ForeColor="Black"  BorderColor="Gray"/>
                <ItemStyle Width="100px" />
                <ItemTemplate>               
                  <asp:Label ID="lblStatus" runat="server" ItemStyle-BorderColor="Black" Text='<%# Eval("status") %>'></asp:Label>  
                </ItemTemplate>
                </asp:TemplateField>                 
                                      
                </Columns>
                </asp:GridView>
                              
                            </td>
                        </tr>
                        </table>
                        </td>
                        </tr>
                        </table>
    </div>
    </form>
</body>
</html>

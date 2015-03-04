<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create admin newuser.aspx.cs" Inherits="Admin_create_admin_newuser" %>
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
  <tr><td class="headings" align="center">Create New User</td></tr>
  <tr><td><br /></td></tr>
  <tr><td align="center"><table width="80%"> 
   <tr runat="server" id="createuser" >
                <td id="tdcontent1" runat="server" align="center" valign="top" width="80%" class="lable" >
                    <table width="100%" id="create" runat="server" style="border:1px dotted #122C73;background-color:#E6E6E8">
                        <tr>
                            <td colspan="6" align="center"  style="padding-top: 0px;background-color:#06234f;height:25px">
                                <asp:Label ID="lblcreateuser" runat="server" Text="Create User" ForeColor="White" Font-Bold="true"
                                    Font-Size="14px" Font-Names="verdana"></asp:Label>
                                    
                            </td>
                        </tr>
                       <tr><td></td></tr>
                        <tr>
                            <td colspan="6" style="width: 100%;">
                                <table width="50%" border="0" align="left" style="padding-left: 5%; height: 250px;">
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                          <asp:Label ID="Label11" runat="server" Text="First Name" ></asp:Label>  
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtFName" runat="server" CssClass="admintestboxes1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Please enter First Name"
                                                ControlToValidate="txtFName" ValidationGroup="WebAdminCreation" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label9" runat="server" Text=" Last Name"  ></asp:Label>  
                                      
                                           
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtLName" runat="server" CssClass="admintestboxes1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName"
                                                ErrorMessage="Please enter Last Name"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                            <asp:Label ID="Label1" runat="server" Text="Designation"  ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:DropDownList ID="ddlUsertype" runat="server" CssClass="admintestboxes1">
                                                
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvddlUsertype" runat="server" ErrorMessage="Select user type"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlUsertype"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                         
                                                 <asp:Label ID="Label5" runat="server" Text="   User Id" ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtUserid" runat="server" CssClass="admintestboxes1" OnTextChanged="txtUserId_TextChanged"
                                                AutoPostBack="true"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter user id"
                                                ControlToValidate="txtUserid" ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RequiredFieldValidator><asp:Label
                                                    ID="lblStatus" runat="server" Font-Size="10px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                          <asp:Label ID="Label6" runat="server" Text="Password"  ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtPwd" runat="server" CssClass="admintestboxes1" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="rfvtxtpwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please enter password" 
                                                         ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label13" runat="server" Text=" Confirm Password" ></asp:Label>  
                                      
                                           
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtcPwd" runat="server" CssClass="admintestboxes1" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcPwd"
                                                ErrorMessage="Enter confirm password"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="cmpCpwd" runat="server" ControlToValidate="txtcPwd" ControlToCompare="txtPwd"
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red" ErrorMessage="Invalid Password">*</asp:CompareValidator>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label12" runat="server" Text="EmailId"  ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="admintestboxes1" OnTextChanged="txtEmail_TextChanged"
                                                AutoPostBack="true"></asp:TextBox>
                                            <%--<asp:Label ID="lblemailExtension" runat="server" Text="@justcalluz.com"></asp:Label>--%>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail"
                                                ErrorMessage="Please enter Emai Id"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter valid email id"
                                                ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RegularExpressionValidator><asp:Label ID="lblEmailstatus"
                                                    runat="server" Font-Size="10px"  ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    
                                                       
                                </table>
                                <table width="50%" border="0" align="right" style="height: 250px;">
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                           <asp:Label ID="Label7" runat="server" Text="Address"  ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtaddress" runat="server" Height="50px" TextMode="MultiLine" CssClass="admintestboxes1"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtaddress"
                                                ErrorMessage="Please enter address" ValidationGroup="webAdminCreation">*</asp:RequiredFieldValidator>--%>
                                        </td>
                                    </tr>
               
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label10" runat="server" Text="Country" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:DropDownList ID="ddlCountry" runat="server" CssClass="admintestboxes1" 
                                                onselectedindexchanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true">
                                               <asp:ListItem Value="Select Country">Select Country</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select country"
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red" ControlToValidate="ddlCountry" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td align="left" class="admintdleftnames">
                                            <asp:Label ID="Label16" runat="server" Text="State"  ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:DropDownList ID="ddlstate" runat="server" CssClass="admintestboxes1"
                                                onselectedindexchanged="ddlstate_SelectedIndexChanged" AutoPostBack="true">
                          <asp:ListItem Value="Select State">Select State</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select State"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlstate"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td align="left" class="admintdleftnames">
                                            <asp:Label ID="Label17" runat="server" Text="City"  ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:DropDownList ID="ddlcity" runat="server" CssClass="admintestboxes1">
                                               <asp:ListItem Value="Select City">Select City</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Select City"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlcity"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                   
                                     <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label8" runat="server" Text="Contact" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtContact" runat="server" CssClass="admintestboxes1" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtContact"
                                                ErrorMessage="Please enter contact number"   ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtContact"
                                                ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{10,}$" runat="server"
                                                ErrorMessage="Minimum 10 digits required."  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="admintdleftnames">
                                         <asp:Label ID="Label14" runat="server" Text="Mobile"  ></asp:Label>  
                                          
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" class="adminrighttd">
                                            <asp:TextBox ID="txtmobile" runat="server" CssClass="admintestboxes1" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmobile"
                                                ErrorMessage="Enter mobile number"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtmobile" ID="RegularExpressionValidator1"
                                                ValidationExpression="^[\s\S]{10,}$" runat="server" ErrorMessage="Minimum 10 digits required."
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="color: #174eb4; font-family: Verdana; font-size: 13px;">
                                            &nbsp;
                                        </td>
                                        <td>
                                            <strong>&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6">
                                &nbsp;
                            </td>
                        </tr>
                      
                      
                        <tr>
                            <td colspan="6" style="height: 50px; padding-top: 8px;" align="center">
                                <asp:Button ID="btnCreate" runat="server" Text="Create User" OnClick="btnCreate_Click"
                                    ValidationGroup="WebAdminCreation"  CausesValidation="false"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" style="height: 50px; padding-top: 8px;" align="center">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
                                    ShowSummary="false" ValidationGroup="WebAdminCreation" />
                            </td>
                        </tr>
                    </table>
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

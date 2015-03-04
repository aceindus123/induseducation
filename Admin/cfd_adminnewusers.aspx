<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cfd_adminnewusers.aspx.cs" Inherits="Admin_cfd_adminnewusers" %>
<%@ Register Src="~/Admin/usercontrols/topmenu.ascx" TagName="topmenu" TagPrefix="head" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

   <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title> Host your classifieds for just a dollar with Classifieds4dollar.com </title>
<meta name="description" content="You can easily host your classifieds like real estate, training, automobiles, job opportunities, restaurant and travels on the front page of classifieds4dollar.com." />
<meta name="keywords" content="Local Classified Ads,Online Classifieds,classifieds4dollar,front page classifieds,job classifieds,real estate ads,Electronics & Appliances ads,Cars & Bikes Classifieds,Education ads,Entertainment event Classifieds" />
<meta name="robots" content="index, follow" />
<meta name="rating" content="General" />
<meta name="distribution" content="global" />
<meta name="author" content="http://www.classifieds4dollar.com /" />
<meta name="google-site-verification" content="ncQD_zh0kbZpm_kSMijxa59M-F8rS_lpuiDr5ihKHvA" /> 
<meta name="msvalidate.01" content="FC553F0EF3A31CC21F639FBEC86289D9" />
 <meta name="alexaVerifyID" content="1AIa4MRF-gfNQHZWgCSQpmj4s70" />

    <style type="text/css">
        .style1
        {
            height: 19px;
        }
         .nav_top {font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#95181c; text-decoration:none; outline:none; font-weight:bold; }
  .nav_top:hover {font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#00F; text-decoration:none; outline:none; font-weight:bold; }
   
    </style>

</head>
<body>
    <form id="form1" runat="server">
 
<div>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody><tr>
    <td align="left" height="680">
    <table style="border :Dashed 1px #ECECEC; background-position:center;  background-repeat:no-repeat;" align="center" border="0" cellpadding="0" cellspacing="0" height="700" width="1024">
      <tbody><tr>
        <td class="style1"></td>
      </tr>
      <tr>
        <td align="left" valign="top" style="background-image:url(images/Admin_bg.png); background-position:center; background-repeat:no-repeat;">
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="980" >
          <tbody><tr>
          <td colspan="3" style="border:Dashed 1px #ECECEC;">
       <head:topmenu runat="server" id="menu"></head:topmenu>
          </td> 
          </tr>
          <tr><td><br /><br /></td></tr>
           <tr>
                            <td align="right" style="padding-right: 150px;padding-bottom:5px; font-size: 14px; height: 20px;" >
                                <a href="cfd_adminnewusers.aspx">
                                    <asp:Label ID="lblBack" runat="server" Text="Back"></asp:Label></a>
                            </td>
                        </tr>
                      
          <tr runat="server" id="createuser" visible="false">
                <td id="tdcontent1" runat="server" align="center" valign="top" width="75%" class="lable" >
                    <table width="75%" id="create" runat="server" style="border:1px dotted #122C73;background-color:#E6E6E8">
                        <tr>
                            <td colspan="6" align="center"  style="padding-top: 0px;background-color:#122C73;height:25px">
                                <asp:Label ID="lblcreateuser" runat="server" Text="Create User" ForeColor="White" Font-Bold="true"
                                    Font-Size="14px" Font-Names="verdana"></asp:Label>
                                    
                            </td>
                        </tr>
                       <tr><td></td></tr>
                        <tr>
                            <td colspan="6" style="width: 100%;">
                                <table width="50%" border="0" align="left" style="padding-left: 5%; height: 250px;">
                                    <tr>
                                        <td align="left" >
                                          <asp:Label ID="Label11" runat="server" Text="First Name" CssClass="text" ></asp:Label>  
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                            <asp:TextBox ID="txtFName" runat="server" Width="138px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="Please enter First Name"
                                                ControlToValidate="txtFName" ValidationGroup="WebAdminCreation" ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                            <asp:Label ID="Label1" runat="server" Text="Designation" CssClass="text" ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlUsertype" runat="server" Width="144px">
                                                <asp:ListItem Text="Select" Selected="True">Select</asp:ListItem>
                                                <asp:ListItem Text="Admin">Admin</asp:ListItem>
                                                <asp:ListItem Text="Accounts">Accounts</asp:ListItem>
                                                 <asp:ListItem Text="HR">HR</asp:ListItem>
                                                <asp:ListItem Text="Operation Manager">Operation Manager</asp:ListItem>
                                                 <asp:ListItem Text="Manager">Manager</asp:ListItem>
                                                <asp:ListItem Text="Employee">Employee</asp:ListItem>

                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvddlUsertype" runat="server" ErrorMessage="Select user type"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlUsertype"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                            <asp:Label ID="Label16" runat="server" Text="State" CssClass="text" ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlstate" runat="server" Width="144px"
                                                onselectedindexchanged="ddlstate_SelectedIndexChanged" AutoPostBack="true">
                          <asp:ListItem Value="Select State">Select State</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select State"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlstate"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                         
                                                 <asp:Label ID="Label5" runat="server" Text="   User Id" CssClass="text" ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtUserid" runat="server" Width="138px" OnTextChanged="txtUserId_TextChanged"
                                                AutoPostBack="true"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter user id"
                                                ControlToValidate="txtUserid" ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RequiredFieldValidator><asp:Label
                                                    ID="lblStatus" runat="server" Font-Size="10px"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                          <asp:Label ID="Label6" runat="server" Text="Password" CssClass="text" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtPwd" runat="server" Width="138px" TextMode="Password"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="rfvtxtpwd" runat="server" ControlToValidate="txtPwd" ErrorMessage="Please enter password" 
                                                         ValidationGroup="WebAdminCreation"  ForeColor="Red">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                           <asp:Label ID="Label7" runat="server" Text="Address" CssClass="text" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtaddress" runat="server" Width="138px" TextMode="MultiLine"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtaddress"
                                                ErrorMessage="Please enter address" ValidationGroup="webAdminCreation">*</asp:RequiredFieldValidator>--%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label8" runat="server" Text="Contact" CssClass="text" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtContact" runat="server" Width="138px" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtContact"
                                                ErrorMessage="Please enter contact number"   ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtContact"
                                                ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{10,}$" runat="server"
                                                ErrorMessage="Minimum 10 digits required."  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                                <table width="50%" border="0" align="right" style="height: 250px;">
                                    <tr>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label9" runat="server" Text=" Last Name" CssClass="text" ></asp:Label>  
                                      
                                           
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtLName" runat="server" Width="138px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName"
                                                ErrorMessage="Please enter Last Name"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label10" runat="server" Text="Country" CssClass="text" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlCountry" runat="server" Width="144px" 
                                                onselectedindexchanged="ddlCountry_SelectedIndexChanged" AutoPostBack="true">
                                               <asp:ListItem Value="Select Country">Select Country</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select country"
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red" ControlToValidate="ddlCountry" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>

                                     <tr>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                            <asp:Label ID="Label17" runat="server" Text="City" CssClass="text" ></asp:Label>  
                                      
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:DropDownList ID="ddlcity" runat="server" Width="144px">
                                               <asp:ListItem Value="Select City">Select City</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Select City"
                                                ValidationGroup="WebAdminCreation" ControlToValidate="ddlcity"  ForeColor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style=" font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label12" runat="server" Text="EmailId" CssClass="text" ></asp:Label>  
                                      
                                            
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtEmail" runat="server" Width="138px" OnTextChanged="txtEmail_TextChanged"
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
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label13" runat="server" Text=" Confirm Password" CssClass="text" ></asp:Label>  
                                      
                                           
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtcPwd" runat="server" Width="138px" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcPwd"
                                                ErrorMessage="Enter confirm password"  ForeColor="Red" ValidationGroup="WebAdminCreation">*</asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="cmpCpwd" runat="server" ControlToValidate="txtcPwd" ControlToCompare="txtPwd"
                                                ValidationGroup="WebAdminCreation"  ForeColor="Red" ErrorMessage="Invalid Password">*</asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" style="font-family: Verdana; font-size: 13px;">
                                         <asp:Label ID="Label14" runat="server" Text="Mobile" CssClass="text" ></asp:Label>  
                                          
                                        </td>
                                        <td>
                                            <strong>&nbsp;:&nbsp;</strong>
                                        </td>
                                        <td align="left">
                                            <asp:TextBox ID="txtmobile" runat="server" Width="138px" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
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
                            <td colspan="6" style="padding-left: 5%;">
                                <table width="99%" border="0">
                                    <tr>
                                     <asp:ScriptManager ID="sc1" runat="server"></asp:ScriptManager>
                                        <td class="datab"  valign="top" align="center">
                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                <ContentTemplate>
                                                    <table id="tblappmodule">
                                                        <tr>
                                                            <td align="left">
                                                               Posted Ads
                                                            </td>
                                                            <td class="style4" align="right">
                                                                <asp:RadioButton ID="postadyes" runat="server" GroupName="gAp" Text="Yes" 
                                                                    AutoPostBack="True"  />
                                                                <asp:RadioButton ID="postadno" Checked="true" runat="server" GroupName="gAp" Text="No"
                                                                    AutoPostBack="True" />
                                                            </td>
                                                        </tr>
                                                        <tr id="trIAppointments" runat="server">
                                                            <td colspan="2">
                                                                <table width="100%" id="wApcat">
                                                                    <tr id="trapAll" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblApAll" runat="server" Text="Select All"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkApAll" runat="server" OnCheckedChanged="chkApAll_CheckedChanged"
                                                                                AutoPostBack="true" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trApPreview" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblApview" runat="server" Text="View"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxapview" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trApPost" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblApPost" runat="server" Text="Post"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxApPost" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trApEdit" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblApEdit" runat="server" Text="Edit"></asp:Label>
                                                                        </td>
                                                                        <td style="height: 20px; width: 100px;">
                                                                            <asp:CheckBox ID="chkbxApEdit" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trApDel" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblApDel" runat="server" Text="Delete"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxApDel" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>

                                                                      <tr id="tractive" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="Label3" runat="server" Text="Activate"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxapact" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>

                                                                      <tr id="trdeact" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="Label4" runat="server" Text="Deactivate"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxapdeact" runat="server" onchange="selectOne(document.getElementById('wApcat').getElementsByTagName('INPUT'),document.getElementById('chkApAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                        <td class="datab"  valign="top" align="center" >
                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                <ContentTemplate>
                                                    <table id="tblupCtfmodule">
                                                        <tr>
                                                            <td align="left">
                                                               Registered Users
                                                            </td>
                                                            <td align="right">
                                                                <asp:RadioButton ID="regyes" runat="server" GroupName="gUpCtf" Text="Yes" AutoPostBack="True" />
                                                                <asp:RadioButton ID="regno" Checked="true" runat="server" GroupName="gUpCtf"
                                                                    Text="No" AutoPostBack="True" />
                                                            </td>
                                                        </tr>
                                                        <tr id="trIUpCtfModule" runat="server">
                                                            <td colspan="2">
                                                                <table width="100%" id="UpCtftab">
                                                                    <tr id="trUpCtfAll" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblUpCtfAll" runat="server" Text="Select All"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkUpCtfAll" runat="server" OnCheckedChanged="chkUpCtfAll_CheckedChanged"
                                                                                AutoPostBack="true" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trUpCtfPreview" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblUpCtfview" runat="server" Text="View"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxUpregview" runat="server" onchange="selectOne(document.getElementById('UpCtftab').getElementsByTagName('INPUT'),document.getElementById('chkUpCtfAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trUpCtfPost" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblUpCtfPost" runat="server" Text="Post"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxUpCtfPost" runat="server" onchange="selectOne(document.getElementById('UpCtftab').getElementsByTagName('INPUT'),document.getElementById('chkUpCtfAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trUpCtfEdit" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblUpCtfEdit" runat="server" Text="Edit"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxUpCtfEdit" runat="server" onchange="selectOne(document.getElementById('UpCtftab').getElementsByTagName('INPUT'),document.getElementById('chkUpCtfAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr id="trUpCtfDel" runat="server">
                                                                        <td class="datap5">
                                                                            <asp:Label ID="lblUpCtfDel" runat="server" Text="Delete"></asp:Label>
                                                                        </td>
                                                                        <td class="style4" style="width: 100px">
                                                                            <asp:CheckBox ID="chkbxUpCtfDel" runat="server" onchange="selectOne(document.getElementById('UpCtftab').getElementsByTagName('INPUT'),document.getElementById('chkUpCtfAll'));" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                </table>
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


            <tr>
            <td colspan="3">&nbsp;            </td>
          </tr>

            <tr runat="server" id="userdetails">
                  <td id="td1" runat="server" align="center" valign="top" width="100%" class="lable"> 


                    <table width="95%" id="view" runat="server">
                        <tr><td align="center" colspan="2" style="padding-bottom:15px;">
                            <asp:Label ID="Label15" runat="server" Text="Users Information" ForeColor="#122C73" Font-Bold="true" Font-Size="14px" Font-Names="verdana"></asp:Label>
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
          </tbody></table></td>
      </tr>
    </tbody></table></td>
  </tr>
</tbody></table>
    </div>
    

    </form>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-55845730-1', 'auto');
        ga('send', 'pageview');

</script>

</body>
</html>

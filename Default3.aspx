
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .h2
{
	font: 18px/1.4 "IXL Verdana",Verdana,Arial,Helvetica,sans-serif;
	
}
    .rb
    {
    	vertical-align: middle;
    	display: inline-block;
margin: 0px 4px;
max-width: 90%;
    }
        .style1
        {
            height: 205px;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <%-- <div>
    <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:DataList ID="dlQuestion" runat="server">
                        <ItemTemplate>
                            <p>
                                <%#Container.ItemIndex+1 %>
                                )
                                <%# Eval("QuestionDescription")%>
                            </p>
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionOne" GroupName="Questions" Text='<%# Eval("OptionOne") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionTwo" GroupName="Questions" Text='<%# Eval("OptionTwo") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionThree" GroupName="Questions" Text='<%# Eval("OptionThree") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionFour" GroupName="Questions" Text='<%# Eval("OptionFour") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    </div>--%>
    <div>
    <table width="100%" align="center" style="height: 227px"><tr><td class="style1">
        <asp:Label ID="Label1" runat="server" Text="1) See the picture and complete their name." CssClass="h2"></asp:Label><br />
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="h2" Text="A __ __ L E" /><br />
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="h2" Text="B __ L L"/><br />
        <asp:RadioButton ID="RadioButton3" runat="server" CssClass="h2" Text="EYE        BAG"/><br />
        <asp:RadioButton ID="RadioButton4" runat="server" CssClass="h2" Text="FAN        CAT"/><br />
        <asp:CustomValidator ID="CustomValidator1" runat="server"
                    ErrorMessage="Required" 
            OnServerValidate="validateCheckBoxes_ServerValidate" ForeColor="Red" ></asp:CustomValidator></td>
      </tr><tr><td align="center"> </td></tr></table>

                <table width="100%" align="center" style="height: 227px"><tr><td class="style1">
        <asp:Label ID="Label2" runat="server" Text="2) Which of these is a triangle?" CssClass="h2"></asp:Label><br />
        <asp:RadioButton ID="RadioButton5" runat="server" CssClass="rb"  /><asp:Image ID="Image1" runat="server" ImageUrl="images/canvas.png" CssClass="rb" /><br />
        <asp:RadioButton ID="RadioButton6" runat="server" CssClass="rb"  /><asp:Image ID="Image2" runat="server" ImageUrl="images/canvas2.png" CssClass="rb" /><br />
        <asp:RadioButton ID="RadioButton7" runat="server"  CssClass="rb" /><asp:Image ID="Image3" runat="server" ImageUrl="images/canvas3.png" CssClass="rb" /><br />
   
        <asp:CustomValidator ID="CustomValidator2" runat="server"
                    ErrorMessage="Required" 
            OnServerValidate="validateCheckBoxes_ServerValidate" ForeColor="Red" ></asp:CustomValidator></td>
      </tr><tr><td align="center"> <asp:Button ID="Button2" runat="server" Text="NEXT" 
                onclick="Button1_Click"  /></td></tr></table> <div id="time-elapsed" class="stats-content">
	       
	      
	
	     </div>

    </div>
    </form>
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Wicked Easy Recipes</title>
    <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

    <style type="text/css">
        #form1 {
            height: 700px;
            width: 600px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
               
        <h1>Wicked Easy Recipes<br /></h1>
        <h2>Using 5 Ingredients or Less!</h2>
            <br />
        <h3>
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" NavigateUrl="~/Default.aspx" ForeColor="#696969">Home</asp:HyperLink>
                &nbsp;|
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" NavigateUrl="~/NewRecipe.aspx" ForeColor="#696969">New Recipe</asp:HyperLink>
                &nbsp;| 
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" NavigateUrl="~/AboutUs.aspx" ForeColor="#696969">About Us</asp:HyperLink>
                &nbsp;| 
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" NavigateUrl="~/ContactUs.aspx" ForeColor="#696969">Contact</asp:HyperLink>
        </h3>
        <br />

    <div style="height: 298px; width: 594px">
    
        <!-- Check if postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="336px"></asp:TextBox>
        <br />
        <br />
       
         Your message:
        <br />         
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="193px" Width="589px"></asp:TextBox>
        
        <br />
        <br />

        <!-- If is postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        <asp:Button ID="sendMail" runat="server" Text="Send" cssclass="button" />

        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development</h6>
    
    </div>

    </form>
</body>
</html>

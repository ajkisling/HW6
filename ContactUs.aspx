<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Wicked Easy Recipes</title>
    <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
        <p>
    
        Wicked Easy Recipes<br />
        Using 5 Ingredients or Less!<br />
        <br />
        <asp:HyperLink ID="link_Home" runat="server" Font-Underline="False" NavigateUrl="~/Default.aspx" ForeColor="Black">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="link_NewRecipe" runat="server" Font-Underline="False" NavigateUrl="~/NewRecipe.aspx" ForeColor="Black">New Recipe</asp:HyperLink>
&nbsp;| 
        <asp:HyperLink ID="link_AboutUs" runat="server" Font-Underline="False" NavigateUrl="~/AboutUs.aspx" ForeColor="Black">About Us</asp:HyperLink>
&nbsp;| 
        <asp:HyperLink ID="link_Contact" runat="server" Font-Underline="False" NavigateUrl="~/ContactUs.aspx" ForeColor="Black">Contact</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>

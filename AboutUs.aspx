<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="Default2" %>

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
    
    <div style="height: 342px; width: 592px">   
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquet, tellus sit amet feugiat euismod, velit lectus pellentesque nisi, non eleifend quam ipsum at arcu. Sed semper mi a tristique porttitor. Morbi rhoncus diam dui, a ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices. Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odio at luctus. Morbi nec blandit justo. Donec porta sagittis euismod. Cras quis congue dui. Nunc at lorem ac diam vestibulum placerat quis eu nibh. In hac habitasse platea dictumst. <br />
        <br />
        Etiam vel lorem nec justo suscipit ornare. Sed risus urna, gravida nec convallis eu, viverra nec sem. Sed eget mauris magna. Sed vulputate tortor in tempus fringilla. Donec in commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut dui quam, imperdiet ornare est non, accumsan vulputate justo. Vestibulum sit amet erat a nunc 
        consectetur pellentesque. Aenean imperdiet tellus nec augue eleifend condimentum.<br />
        <br />
        <br />
        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development</h6>
    </div>
    </form>
</body>
</html>

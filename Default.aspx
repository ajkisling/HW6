<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Wicked Easy Recipes</title>
    <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

    <style type="text/css">
        #form1 {
            height: 578px;
            width: 711px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Wicked Easy Recipes<br /></h1>
        <h2>Using 5 Ingredients or Less!</h2>
        <br />
        <h3>
            <asp:HyperLink ID="link_Home" runat="server" Font-Underline="False" NavigateUrl="~/Default.aspx" ForeColor="#696969">Home</asp:HyperLink>
                &nbsp;|
            <asp:HyperLink ID="link_NewRecipe" runat="server" Font-Underline="False" NavigateUrl="~/NewRecipe.aspx" ForeColor="#696969">New Recipe</asp:HyperLink>
                &nbsp;| 
            <asp:HyperLink ID="link_AboutUs" runat="server" Font-Underline="False" NavigateUrl="~/AboutUs.aspx" ForeColor="#696969">About Us</asp:HyperLink>
                &nbsp;| 
            <asp:HyperLink ID="link_Contact" runat="server" Font-Underline="False" NavigateUrl="~/ContactUs.aspx" ForeColor="#696969">Contact</asp:HyperLink>
        </h3>
        <br />
        <asp:SqlDataSource ID="sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_recipes_HW6 %>" SelectCommand="SELECT * FROM [ajkisling_recipes_HW6]"></asp:SqlDataSource>
    
    </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecipeID" DataSourceID="sql_recipes" Width="706px" Height="248px">
            <Columns>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" >
                <HeaderStyle BackColor="#FFFF99" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="350px" />
                </asp:BoundField>
                <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" >
                <HeaderStyle BackColor="#FFFF99" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="~/Recipe.aspx?RecipeID={0}" Text="Select" HeaderText="View" >
                <HeaderStyle BackColor="#FFFF99" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
        <br />
        
        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development</h6>

    </form>
</body>
</html>

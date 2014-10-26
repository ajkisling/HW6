<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Wicked Easy Recipes</title>
    <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        <br />
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
        <asp:SqlDataSource ID="sql_ViewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_recipes_HW6 %>" DeleteCommand="DELETE FROM [ajkisling_recipes_HW6] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [ajkisling_recipes_HW6] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT [RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes], [RecipeID] FROM [ajkisling_recipes_HW6] WHERE ([RecipeID] = @RecipeID)" UpdateCommand="UPDATE [ajkisling_recipes_HW6] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="RecipeID" QueryStringField="RecipeID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="Recipe_Details" runat="server" AutoGenerateRows="False" DataKeyNames="RecipeID" DataSourceID="sql_ViewRecipe" Height="50px" Width="445px">
            <Fields>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name" SortExpression="RecipeName" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ButtonType="Button" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Save" />
            </Fields>
        </asp:DetailsView>
        <br />
        &copy; 2014, MSCI:3300 Software Design &amp; Development<br />
    </form>
</body>
</html>

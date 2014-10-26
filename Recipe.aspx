<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

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
    <div>
    
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
        <asp:DetailsView ID="Recipe_Details" runat="server" AutoGenerateRows="False" DataKeyNames="RecipeID" DataSourceID="sql_ViewRecipe" Height="182px" Width="590px">
            <Fields>
                <asp:BoundField DataField="RecipeName" HeaderText="Recipe Name   " SortExpression="RecipeName" >
                <HeaderStyle BackColor="LightCoral" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" HorizontalAlign="Right" VerticalAlign="Middle" Width="150px" />
                <ItemStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" Width="400px" />
                </asp:BoundField>
                <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" >
                <HeaderStyle BackColor="LightCoral" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" HorizontalAlign="Right" VerticalAlign="Middle" Width="150px" />
                <ItemStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" HorizontalAlign="Left" VerticalAlign="Middle" Width="400px" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient #1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient #2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient #3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient #4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient #5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ButtonType="Button" ShowCancelButton="False" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Save" >
                <ControlStyle BackColor="#FFFF99" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Segoe UI" ForeColor="Black" />
                <ItemStyle BackColor="LightCoral" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Segoe UI" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            </Fields>
        </asp:DetailsView>
        <br />
        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development<br /></h6>
    </form>
</body>
</html>

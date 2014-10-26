<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

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
        <br />
        <asp:SqlDataSource ID="sql_ViewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_recipes_HW6 %>" DeleteCommand="DELETE FROM [ajkisling_recipes_HW6] WHERE [RecipeID] = @RecipeID" 
            InsertCommand="INSERT INTO [ajkisling_recipes_HW6] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT [RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes], [RecipeID] FROM [ajkisling_recipes_HW6]" UpdateCommand="UPDATE [ajkisling_recipes_HW6] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
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
    
        <asp:FormView ID="form_NewRecipe" runat="server" DataKeyNames="RecipeID" DataSourceID="sql_ViewRecipe" DefaultMode="Insert">
            <EditItemTemplate>

            </EditItemTemplate>
            <InsertItemTemplate>
                
                <table>
                    <tr>
                        <td style="text-align:right;">
                            Recipe Name
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="RecipeNameTextBox" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                    </tr>
                        
                    <tr>
                        <td style="text-align:right;">
                            Submitted By
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="SubmittedByTextBox" runat="server" Text='<%# Bind("SubmittedBy") %>' />
                        </td>
                    </tr>
                    
                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingredient1TextBox" runat="server" Text='<%# Bind("Ingredient1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #1
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ingredient1") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #2
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingredient2TextBox" runat="server" Text='<%# Bind("Ingredient2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #3
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingredient3TextBox" runat="server" Text='<%# Bind("Ingredient3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #4
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingredient4TextBox" runat="server" Text='<%# Bind("Ingredient4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Ingredient #5
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="Ingredient5TextBox" runat="server" Text='<%# Bind("Ingredient5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Preparation
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="PreparationTextBox" runat="server" Text='<%# Bind("Preparation") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right;">
                            Notes
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>

                </table>                

            </InsertItemTemplate>
            <ItemTemplate>

            </ItemTemplate>
        </asp:FormView>
    
        <asp:Button ID="btn_Insert" runat="server" CausesValidation="true" CommandName="Insert" Text="Insert" />

    </div>
        <br />
        &copy; 2014, MSCI:3300 Software Design &amp; Development<br />
    </form>
</body>
</html>

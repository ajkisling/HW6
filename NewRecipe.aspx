<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

       <title>Wicked Easy Recipes</title>
       <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

       <style type="text/css">
        #form1 {
            width: 724px;
               height: 818px;
           }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 712px; width: 724px">
    
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

        <asp:SqlDataSource ID="sql_ViewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_recipes_HW6 %>" 
            DeleteCommand="DELETE FROM [ajkisling_recipes_HW6] WHERE [RecipeID] = @RecipeID" 
            InsertCommand="INSERT INTO [ajkisling_recipes_HW6] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" 
            SelectCommand="SELECT [RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes], [RecipeID] FROM [ajkisling_recipes_HW6]" 
            UpdateCommand="UPDATE [ajkisling_recipes_HW6] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
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
    
        <asp:FormView ID="form_NewRecipe" runat="server" DataKeyNames="RecipeID" DataSourceID="sql_ViewRecipe" DefaultMode="Insert" Height="355px" Width="594px">
            <EditItemTemplate>

            </EditItemTemplate>
            <InsertItemTemplate>
                
                <table>
                    <tr>
                        <td class="column1">
                            Recipe Name
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertRecipeName" runat="server" height="20px" width="300px" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_RecipeName" runat="server" ErrorMessage="Please enter the recipe name." CssClass="validationError" ControlToValidate="tb_InsertRecipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                        
                    <tr>
                        <td class="column1">
                            Submitted By
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertSubmittedBy" runat="server" height="20px" width="300px" Text='<%# Bind("SubmittedBy") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_SubmittedBy" runat="server" ErrorMessage="Please enter the your name." ControlToValidate="tb_InsertSubmittedBy" CssClass="validationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="column1">
                            Ingredient #1
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertIngredient1" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient1") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_Ingredient1" runat="server" ErrorMessage="Recipe must have at least one ingredient." ControlToValidate="tb_InsertIngredient1" CssClass="validationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #2
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertIngredient2" runat="server"  height="20px" width="300px" Text='<%# Bind("Ingredient2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #3
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertIngredient3" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #4
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertIngredient4" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #5
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertIngredient5" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Preparation
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertPreparation" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Preparation") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_Preparation" runat="server" ErrorMessage="Please enter preparation instructions." ControlToValidate="tb_InsertPreparation" CssClass="validationError"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Notes
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_InsertNotes" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Notes") %>' />
                        </td>

                </table>    

                <asp:Button ID="btn_Insert" runat="server" cssclass="button" CausesValidation="true" CommandName="Insert" Text="Save" />            

            </InsertItemTemplate>
            <ItemTemplate>

            </ItemTemplate>
        </asp:FormView>

    </div>
        <br />
        <br />
        <br />
        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development<br /></h6>
    </form>
</body>
</html>

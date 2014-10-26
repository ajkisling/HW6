<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Wicked Easy Recipes</title>
    <link rel="StyleSheet" type="text/css" href="~/css/StyleSheet.css" />

    <style type="text/css">
        #form1 {
            height: 790px;
            width: 604px;
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

        <!-- Message returned after recipe is deleted-->
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>

        <asp:SqlDataSource ID="sql_ViewRecipe" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_recipes_HW6 %>" 
            DeleteCommand="DELETE FROM [ajkisling_recipes_HW6] WHERE [RecipeID] = @RecipeID" 
            SelectCommand="SELECT [RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes], [RecipeID] FROM [ajkisling_recipes_HW6] WHERE ([RecipeID] = @RecipeID)" 
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
    
        <asp:FormView ID="form_ViewEditRecipe" runat="server" DataKeyNames="RecipeID" DataSourceID="sql_ViewRecipe" Height="171px" Width="595px">
            
            <EditItemTemplate>

                <table>
                    <tr>
                        <td class="column1">
                            Recipe Name
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditRecipeName" runat="server" height="20px" width="300px" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_EditRecipeName" runat="server" ErrorMessage="Recipe name is a required field." CssClass="validationError" ControlToValidate="tb_EditRecipeName"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                        
                    <tr>
                        <td class="column1">
                            Submitted By
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditSubmittedBy" runat="server" height="20px" width="300px" Text='<%# Bind("SubmittedBy") %>' />
                        </td>
                         <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_EditSubmittedBy" runat="server" ErrorMessage="Submitted by is a required field." CssClass="validationError" ControlToValidate="tb_EditSubmittedBy"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="column1">
                            Ingredient #1
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditIngredient1" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient1") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_EditIngredient1" runat="server" ErrorMessage="Recipe must have at least one ingredient." CssClass="validationError" ControlToValidate="tb_EditIngredient1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #2
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditIngredient2" runat="server"  height="20px" width="300px" Text='<%# Bind("Ingredient2") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #3
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditIngredient3" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient3") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #4
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditIngredient4" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient4") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #5
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditIngredient5" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient5") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Preparation
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditPreparation" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Preparation") %>' />
                        </td>
                        <td class="column2" style="width: 414px">
                            <asp:RequiredFieldValidator ID="rfv_EditPreparation" runat="server" ErrorMessage="Please provide preparation instructions." CssClass="validationError" ControlToValidate="tb_EditPreparation"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Notes
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_EditNotes" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Notes") %>' />
                        </td>

                </table>                

                <br />
                <asp:Button ID="btn_Update" runat="server" cssclass="button" CausesValidation="true" CommandName="Update" Text="Save" />

            </EditItemTemplate>
            <InsertItemTemplate>

            </InsertItemTemplate>
            <ItemTemplate>
                
                <table>
                    <tr>
                        <td class="column1">
                            Recipe Name
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewRecipeName" runat="server" height="20px" width="300px" Text='<%# Bind("RecipeName") %>' ReadOnly="True" />
                        </td>
                    </tr>
                        
                    <tr>
                        <td class="column1">
                            Submitted By
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewSubmittedBy" runat="server" height="20px" width="300px" Text='<%# Bind("SubmittedBy") %>' ReadOnly="True" />
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="column1">
                            Ingredient #1
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewIngredient1" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient1") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #2
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewIngredient2" runat="server"  height="20px" width="300px" Text='<%# Bind("Ingredient2") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #3
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewIngredient3" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient3") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #4
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewIngredient4" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient4") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column1">
                            Ingredient #5
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewIngredient5" runat="server" height="20px" width="300px" Text='<%# Bind("Ingredient5") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Preparation
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewPreparation" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Preparation") %>' ReadOnly="True" />
                        </td>
                    </tr>

                    <tr>
                        <td class="column3">
                            Notes
                        </td>
                        <td class="column2">
                            <asp:TextBox ID="tb_ViewNotes" runat="server" textmode="multiline" height="75px" width="300px" Text='<%# Bind("Notes") %>' ReadOnly="True" />
                        </td>

                </table>   
                 <br />
                <asp:Button ID="btn_Edit" runat="server" cssclass="button" CausesValidation="false" CommandName="Edit" Text="Edit" />
                    &nbsp;
                <asp:Button ID="btn_Delete" runat="server" cssclass="button" CausesValidation="false" CommandName="Delete" Text="Delete" />
                <br />

            </ItemTemplate>
       
             </asp:FormView> 
        
        </div>
        <br />
        <h6>&copy; 2014, MSCI:3300 Software Design &amp; Development<br /></h6>
    </form>
</body>
</html>

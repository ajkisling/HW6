
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        form_NewRecipe.Focus()

    End Sub

    Protected Sub form_NewRecipe_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles form_NewRecipe.ItemInserted

        Response.Redirect("./Default.aspx")

    End Sub

End Class

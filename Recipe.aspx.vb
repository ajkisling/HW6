
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub form_ViewEditRecipe_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles form_ViewEditRecipe.ItemDeleted

        Dim deletedRecipe As String = e.Values("RecipeName").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AddHeader("Refresh", "3;URL=./Default.aspx")

    End Sub

    Protected Sub form_ViewEditRecipe_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles form_ViewEditRecipe.ItemUpdated

        Response.AddHeader("Refresh", "3;URL=./Default.aspx")

    End Sub

End Class


Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub Recipe_Details_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles Recipe_Details.ItemDeleted

        Dim deletedRecipe As String = e.Values("RecipeName").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & " has been deleted from the database."

        Response.AddHeader("Refresh", "3;URL=./Default.aspx")

    End Sub

    Protected Sub Recipe_Details_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles Recipe_Details.ItemUpdated

        Response.AddHeader("Refresh", "3;URL=./Default.aspx")

    End Sub


End Class

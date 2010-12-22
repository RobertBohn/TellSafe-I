Public Class mngCompany
    Inherits System.Web.UI.Page
    Protected WithEvents txtPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtWebsite As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtAddress As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCity As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtZip As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCancel As System.Web.UI.WebControls.Button
    Protected WithEvents btnUpdate As System.Web.UI.WebControls.Button
    Protected WithEvents lblName As System.Web.UI.WebControls.Label
    Protected ctlState As State

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not IsPostBack Then
            Dim p As Contact
            Dim c As Company

            Try
                p = New Contact(User.Identity.Name())
                c = New Company(p.CompanyID)
            Catch
                TS.LogError("Error in mngContact page load. " & Err.Description)
                Response.Redirect(ResolveUrl("../main/InternalError.aspx"))
            End Try

            lblName.Text = c.Name
            txtPhone.Text = c.Phone
            txtWebsite.Text = c.Website
            txtAddress.Text = c.Address.Address1
            txtCity.Text = c.Address.City
            ctlState.Code = c.Address.State
            txtZip.Text = c.Address.Zip
        End If
    End Sub

    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect(ResolveUrl("../client/mng.aspx"))
    End Sub

    Private Sub btnUpdate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        Try
            Dim p As New Contact(User.Identity.Name())
            Dim c As New Company(p.CompanyID)
            c.Phone = txtPhone.Text
            c.Website = txtWebsite.Text
            c.Address.Address1 = txtAddress.Text
            c.Address.City = txtCity.Text
            c.Address.State = ctlState.Code
            c.Address.Zip = txtZip.Text
            c.Update()
        Catch
            TS.LogError("Error in mngCompany update. " & Err.Description)
            Response.Redirect(ResolveUrl("../main/InternalError.aspx"))
        End Try
        Response.Redirect(ResolveUrl("../client/mng.aspx"))
    End Sub
End Class

Public Class Login
    Inherits System.Web.UI.Page
    Protected WithEvents txtUserName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSignin As System.Web.UI.WebControls.Button
    Protected WithEvents lblMessageArea As System.Web.UI.WebControls.Label
    Protected WithEvents rfvUserName As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents rfvPassword As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValidationSummary1 As System.Web.UI.WebControls.ValidationSummary

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
        'Put user code to initialize the page here
    End Sub

    Protected Sub SignIn(ByVal s As Object, ByVal e As EventArgs) Handles btnSignin.Click
        Dim ID As Integer
        Try
            ID = TS.Login(txtUserName.Text, txtPassword.Text)
        Catch
            TS.LogError("Error processing login. " & Err.Description)
            Response.Redirect("../main/InternalError.aspx")
        End Try

        Select Case ID
            Case -1
                lblMessageArea.Text = "The Username entered was not found.<br>Please re-enter your Username and Password."
            Case -2
                lblMessageArea.Text = "The Password entered is incorrect.<br>Please re-enter your Password."
            Case Else
                System.Web.Security.FormsAuthentication.SetAuthCookie(ID.ToString(), False)
                Response.Redirect(ResolveUrl("..\client\mng.aspx"))
        End Select
    End Sub

End Class

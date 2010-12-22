Public MustInherit Class State
    Inherits System.Web.UI.UserControl
    Protected WithEvents ddlState As System.Web.UI.WebControls.DropDownList

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

    Public Property Code() As String
        Get
            Return ddlState.SelectedItem.Value
        End Get
        Set(ByVal Value As String)
            Try
                ddlState.Items.FindByValue(Value).Selected = True
            Catch
                '
            End Try
        End Set
    End Property

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        '
    End Sub

End Class

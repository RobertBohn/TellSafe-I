Public Class Subscribe
    Inherits System.Web.UI.Page
    Protected WithEvents btnSubscribe1 As System.Web.UI.WebControls.Button
    Protected WithEvents pnlSubscribe1 As System.Web.UI.WebControls.Panel
    Protected WithEvents btnBack As System.Web.UI.WebControls.Button
    Protected WithEvents btnSubscribe2 As System.Web.UI.WebControls.Button
    Protected WithEvents pnlSubscribe2 As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlThankYou As System.Web.UI.WebControls.Panel
    Protected WithEvents txtComapnyName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEmployees As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCompanyWebsite As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCompanyPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCompanyAddress As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCompanyCity As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCompanyZip As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactAddress As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactCity As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContactZip As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPassword2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtQuestion As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtAnswer As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnFinished As System.Web.UI.WebControls.Button

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

    Private Sub btnSubscribe1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubscribe1.Click
        Me.pnlSubscribe1.Visible = False
        Me.pnlSubscribe2.Visible = True
        Me.pnlThankYou.Visible = False
    End Sub

    Private Sub btnBack_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Me.pnlSubscribe1.Visible = True
        Me.pnlSubscribe2.Visible = False
        Me.pnlThankYou.Visible = False

    End Sub

    Private Sub btnSubscribe2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubscribe2.Click
        Me.pnlSubscribe1.Visible = False
        Me.pnlSubscribe2.Visible = False
        Me.pnlThankYou.Visible = True

    End Sub

    Private Sub btnFinished_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFinished.Click
        Response.Redirect("..\main\tellsafe.aspx")
    End Sub
End Class

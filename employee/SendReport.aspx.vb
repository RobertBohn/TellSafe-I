Public Class SendReport
    Inherits System.Web.UI.Page
    Protected WithEvents pnlSelectCompany As System.Web.UI.WebControls.Panel
    Protected WithEvents btnVerifyCompany As System.Web.UI.WebControls.Button
    Protected WithEvents pnlVerifyCompany As System.Web.UI.WebControls.Panel
    Protected WithEvents lblCompanyInfo As System.Web.UI.WebControls.Literal
    Protected WithEvents pnlChooseCompany As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlSendMessage As System.Web.UI.WebControls.Panel
    Protected WithEvents btnCancel As System.Web.UI.WebControls.Button
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents txtMessage As System.Web.UI.WebControls.TextBox
    Protected WithEvents rfvMessage As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValidationSummary1 As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents pnlThankYou As System.Web.UI.WebControls.Panel
    Protected WithEvents btnFinished As System.Web.UI.WebControls.Button
    Protected WithEvents lblConfirmation As System.Web.UI.WebControls.Label
    Protected WithEvents ddlCompany As System.Web.UI.WebControls.DropDownList

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
            Try
                Dim c As Company
                For Each c In TS.Subscribers
                    ddlCompany.Items.Insert(0, New ListItem(c.Name, c.ID))
                Next
                ddlCompany.Items.Insert(0, New ListItem("select your company...", "0"))
            Catch
                TS.LogError("Unable to load subscriber list. " & Err.Description)
                Response.Redirect("../main/InternalError.aspx")
            End Try
        End If
    End Sub
    Private Sub ddlCompany_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ddlCompany.SelectedIndexChanged
        Dim c As Company
        If ddlCompany.SelectedItem.Value = "0" Then
            pnlSelectCompany.Visible = True
            pnlVerifyCompany.Visible = False
        Else
            Try
                c = New Company(ddlCompany.SelectedItem.Value)
            Catch
                TS.LogError("Unable to select company #" & ddlCompany.SelectedItem.Value & ". " & Err.Description)
                Response.Redirect("../main/InternalError.aspx")
            End Try

            lblCompanyInfo.Text = ""
            If c.Website.Length > 0 Then lblCompanyInfo.Text += "<A href='http" & "://" & c.Website & "/' target='_blank'>" & c.Website & "</A><BR>"
            If c.Phone.Length > 0 Then lblCompanyInfo.Text += c.Phone & "<BR>"
            If c.Address.Address1.Length > 0 Then lblCompanyInfo.Text += c.Address.Address1 & "<BR>" & c.Address.City & ", " & c.Address.State & " " & c.Address.Zip

            pnlSelectCompany.Visible = False
            pnlVerifyCompany.Visible = True
        End If
    End Sub
    Private Sub btnVerifyCompany_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnVerifyCompany.Click
        pnlChooseCompany.Visible = False
        pnlSendMessage.Visible = True
    End Sub
    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        pnlChooseCompany.Visible = True
        pnlSendMessage.Visible = False
    End Sub
    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try
            Dim c As New Company(ddlCompany.SelectedItem.Value)
            lblConfirmation.Text = c.SendMessage(txtMessage.Text)
            pnlSendMessage.Visible = False
            pnlThankYou.Visible = True
        Catch
            TS.LogError("Unable to send message for company #" & ddlCompany.SelectedItem.Value & ". " & Err.Description)
            TS.LogError("Message Text: " & txtMessage.Text)
            Response.Redirect("../main/InternalError.aspx")
        End Try
    End Sub
    Private Sub btnFinished_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnFinished.Click
        Response.Redirect("../main/TellSafe.aspx")
    End Sub
End Class



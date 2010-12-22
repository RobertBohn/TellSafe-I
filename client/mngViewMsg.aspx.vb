Public Class mngViewMsg
    Inherits System.Web.UI.Page
    Protected WithEvents lblMsgID1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblMsgID2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblDate As System.Web.UI.WebControls.Label
    Protected WithEvents btnBack As System.Web.UI.WebControls.Button
    Protected WithEvents pnlBack As System.Web.UI.WebControls.Panel
    Protected WithEvents btnCancel As System.Web.UI.WebControls.Button
    Protected WithEvents btnConfirm As System.Web.UI.WebControls.Button
    Protected WithEvents pnlConfirm As System.Web.UI.WebControls.Panel
    Protected WithEvents litContactLog As System.Web.UI.WebControls.Literal
    Protected WithEvents litMessageText As System.Web.UI.WebControls.Literal

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
                Dim msg As New Message(Request.QueryString("ID"))
                Me.lblMsgID1.Text = msg.ID
                Me.lblMsgID2.Text = msg.ID
                Me.lblDate.Text = msg.Created.ToString
                Me.litMessageText.Text = Server.HtmlEncode(msg.Text).Replace(vbCrLf, "<br>")

                'Format Contact Log Section
                Dim c As ContactLog
                Me.litContactLog.Text = "<TABLE BORDER=0 CELLSPACING=3 CELLPADDING=0><TR><TD><B>Contact Log</B></TD></TR>"
                For Each c In msg.ContactLogs
                    Select Case c.Type
                        Case ContactLog.ContactType.Emailed
                            Me.litContactLog.Text += "<TR><TD>" & c.Created.ToString & "</TD><TD>&nbsp;</TD><TD>" & c.ContactName & " notified via email.</TD></TR>"
                        Case ContactLog.ContactType.Confirmed
                            Me.litContactLog.Text += "<TR><TD>" & c.Created.ToString & "</TD><TD>&nbsp;</TD><TD>" & c.ContactName & " confirmed receipt of message.</TD></TR>"
                    End Select
                Next
                Me.litContactLog.Text += "</TABLE>"

                'Format Confirmation Section
                If msg.ConfirmedBy Then
                    Me.pnlBack.Visible = True
                Else
                    Me.pnlConfirm.Visible = True
                End If
            Catch
                TS.LogError("Error in mngViewMsg page load. " & Err.Description)
                Response.Redirect("../main/InternalError.aspx")
            End Try
        End If
    End Sub

    Private Sub btnBack_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBack.Click
        Response.Redirect(ResolveUrl("../client/mngReview.aspx"))
    End Sub

    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect(ResolveUrl("../client/mngReview.aspx"))
    End Sub

    Private Sub btnConfirm_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnConfirm.Click
        Try
            Dim msg As New Message(Request.QueryString("ID"))
            msg.Confirm(User.Identity.Name())
        Catch
            TS.LogError("Error confirming message in mngViewMsg. " & Err.Description)
            Response.Redirect("../main/InternalError.aspx")
        End Try
        Response.Redirect(ResolveUrl("../client/mngReview.aspx"))
    End Sub
End Class

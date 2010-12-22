Public Class mngReview
    Inherits System.Web.UI.Page
    Protected WithEvents hyperlink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents litMessages As System.Web.UI.WebControls.Literal

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
                Dim p As New Contact(User.Identity.Name())
                Dim c As New Company(p.CompanyID)
                Dim msg As Message

                Me.litMessages.Text = "<TABLE BORDER=0 CELLSPACING=4 CELLPADDING=0><TR><TD COLSPAN=4><B>Messages received in the past 180 days</B></TD></TR>"
                For Each msg In c.Messages
                    If msg.ConfirmedBy Then
                        litMessages.Text += "<TR><TD>&nbsp;</TD>"
                    Else
                        litMessages.Text += "<TR><TD><B>(</B><A HREF='" & ResolveUrl("../client/mngViewMsg.aspx") & "?ID=" & msg.ID.ToString() & "'><B>New</B></A><B>)</B></TD>"
                    End If
                    litMessages.Text += "<TD>Message #" & msg.ID.ToString() & "</TD><TD>received " & msg.Created.ToString() & "</TD><TD>(<A HREF='" & ResolveUrl("../client/mngViewMsg.aspx") & "?ID=" & msg.ID.ToString() & "'>View</A>)</TD></TR>"
                Next
                Me.litMessages.Text += "</TABLE>"
            Catch
                TS.LogError("Error in mngReview page load. " & Err.Description)
                Response.Redirect(ResolveUrl("../main/InternalError.aspx"))
            End Try
        End If
    End Sub

End Class

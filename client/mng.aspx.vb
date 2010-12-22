Public Class mng
    Inherits System.Web.UI.Page
    Protected WithEvents lblCompanyAddress As System.Web.UI.WebControls.Label
    Protected WithEvents lblCompanyCity As System.Web.UI.WebControls.Label
    Protected WithEvents lblCompanyState As System.Web.UI.WebControls.Label
    Protected WithEvents lblCompanyZip As System.Web.UI.WebControls.Label
    Protected WithEvents litContacts As System.Web.UI.WebControls.Literal
    Protected WithEvents litMessages As System.Web.UI.WebControls.Literal
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents lblCompanyName As System.Web.UI.WebControls.Label

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

                'Format Company Section
                Me.lblCompanyName.Text = c.Name
                Me.lblCompanyAddress.Text = c.Address.Address1
                Me.lblCompanyCity.Text = c.Address.City
                Me.lblCompanyState.Text = c.Address.State
                Me.lblCompanyZip.Text = c.Address.Zip

                'Format Contacts Section
                Me.litContacts.Text = "<TABLE BORDER=0 CELLSPACING=5 CELLPADDING=0><TR><TD COLSPAN=5><B>Contact List</B></TD></TR>"
                Dim cnt As Contact
                For Each cnt In c.Contacts
                    Me.litContacts.Text += "<TR><TD>" & cnt.Name & "</TD><TD>&nbsp;&nbsp;</TD><TD>" & cnt.Phone & "</TD><TD>&nbsp;&nbsp;</TD><TD>" & cnt.Email
                    If cnt.ID = p.ID Then Me.litContacts.Text += " (<A HREF='" & ResolveUrl("..\client\mngContact.aspx") & "'>Edit</A>)"
                    Me.litContacts.Text += "</TD></TR>"
                Next
                Me.litContacts.Text += "</TABLE>"

                'Format Messages Section
                Dim newMessages As Integer = 0
                Dim totMessages As Integer = 0
                Dim msgs As Collection = c.Messages
                Dim msg As Message
                For Each msg In msgs
                    totMessages += 1
                    If msg.ConfirmedBy = 0 Then newMessages += 1
                Next

                If totMessages Then
                    Me.litMessages.Text = "<TABLE BORDER=0 CELLSPACING=5 CELLPADDING=0><TR><TD COLSPAN=2><B>Message Summary</B> (<A HREF='" & ResolveUrl("..\client\mngReview.aspx") & "'>Review All Messages</A>)</TD></TR>"
                    Me.litMessages.Text += "<TR><TD ALIGN=right>" & totMessages.ToString() & "</TD><TD>Messages have been received in the past 180 days.</TD></TR>"
                    Me.litMessages.Text += "<TR><TD ALIGN=right>" & (totMessages - newMessages).ToString() & "</TD><TD>Messages have been reviewed by members of the contact list.</TD></TR>"
                    Me.litMessages.Text += "<TR><TD ALIGN=right>" & newMessages.ToString() & "</TD><TD>Messages have not been reviewed by members of the contact list.</TD></TR></TABLE>"
                    If newMessages > 0 Then
                        Me.litMessages.Text += "</TD></TR><TR><TD><TABLE BORDER=0 CELLSPACING=4 CELLPADDING=0><TR><TD COLSPAN=3><B>" & newMessages.ToString() & " New Messages</B></TD></TR>"
                        For Each msg In msgs
                            If msg.ConfirmedBy = 0 Then Me.litMessages.Text += "<TR><TD>#" & msg.ID.ToString() & "</TD><TD>received " & msg.Created.ToString() & "</TD><TD>(<A HREF='" & ResolveUrl("..\client\mngViewMsg.aspx") & "?ID=" & msg.ID.ToString() & "'>View</A>)</TD></TR>"
                        Next
                        Me.litMessages.Text += "</TABLE>"
                    End If
                Else
                    Me.litMessages.Text = "<TABLE BORDER=0 CELLSPACING=5 CELLPADDING=0><TR><TD><B>Message Summary</B></TD></TR><TR><TD>No messages have been received in the past 180 days.</TD></TR></TABLE>"
                End If
            Catch
                TS.LogError("Error in mng page load. " & Err.Description)
                Response.Redirect(ResolveUrl("../main/InternalError.aspx"))
            End Try
        End If
    End Sub

End Class

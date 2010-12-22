Imports System.IO
Imports System.Data
Imports System.Data.SqlClient

Public Class TS
    Public Shared ReadOnly Property Subscribers() As Collection
        Get
            Dim col As Collection
            Dim conn As SqlConnection
            Dim cmd As SqlCommand
            Dim dtr As SqlDataReader

            col = New Collection()
            conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
            cmd = New SqlCommand("GetSubscriberList", conn)
            cmd.CommandType = CommandType.StoredProcedure
            conn.Open()
            dtr = cmd.ExecuteReader()

            Do While dtr.Read()
                col.Add(New Company(dtr("ID")))
            Loop

            dtr.Close()
            conn.Close()

            Return col
        End Get
    End Property
    Public Shared Function Login(ByVal Username As String, ByVal Password As String) As Integer
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim dtr As SqlDataReader

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("Login", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@Username", Username)
        conn.Open()
        dtr = cmd.ExecuteReader()

        If dtr.Read() Then
            If dtr("Password").ToString() = Password Then
                Login = dtr("ContactID")
            Else
                Login = -2
            End If
        Else
            Login = -1
        End If

        dtr.Close()
        conn.Close()
    End Function
    Public Shared Sub LogError(ByRef Description As String)
        Try
            Dim conn As SqlConnection
            Dim cmd As SqlCommand

            conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
            cmd = New SqlCommand("LogError", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Text", Description)

            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
        Catch
            Dim stream As StreamWriter
            stream = File.AppendText("c:\inetpub\wwwroot\tellsafevb\err.txt")
            stream.WriteLine(DateTime.Now.ToString())
            stream.WriteLine(Description)
            stream.WriteLine("")
            stream.Close()
        End Try
    End Sub
End Class

Public Class Company
    '=== Data ============================================================
    Private myID As Integer
    Private myName As String
    Private myWebsite As String
    Private myPhone As String
    Public Address As New Address()
 
    '=== Constructors =====================================================
    Public Sub New()
    End Sub
    Public Sub New(ByVal CompanyID As Integer)
        myID = CompanyID

        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim dtr As SqlDataReader

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("GetCompany", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@ID", myID)
        conn.Open()
        dtr = cmd.ExecuteReader()
        dtr.Read()

        myName = dtr("Name").ToString()
        myWebsite = dtr("Website").ToString()
        myPhone = dtr("Phone").ToString()
        Address.Address1 = dtr("Address").ToString()
        Address.City = dtr("City").ToString()
        Address.State = dtr("State").ToString()
        Address.Zip = dtr("Zip").ToString()

        dtr.Close()
        conn.Close()
    End Sub

    '=== Methods ==========================================================
    Public Function SendMessage(ByRef MessageText As String) As Integer
        Dim msg As New Message(myID, MessageText)
        Dim sendTo As String = ""
        Dim subject As String = "TellSafe message #" & msg.ID & " for the Audit Committee"
        Dim email As String = "TellSafe has received an anonymous message directed to your Audit Committee. Please visit http://www.tellsafe.com/ to review this submission."

        Dim c As Contact
        For Each c In Contacts
            If sendTo.Length Then sendTo += ","
            sendTo += c.Email
        Next

        Try
            System.Web.Mail.SmtpMail.Send("info@tellsafe.com", sendTo, subject, email)
        Catch
            TS.LogError("Error sending email notifications for message #" & msg.ID & ". " & Err.Description)
        End Try

        SendMessage = msg.ID
    End Function
    Public Sub Update()
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim rtn As SqlParameter

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("UpdateCompany", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@ID", myID)
        cmd.Parameters.Add("@Website", myWebsite)
        cmd.Parameters.Add("@Phone", myPhone)
        cmd.Parameters.Add("@Address", Address.Address1)
        cmd.Parameters.Add("@City", Address.City)
        cmd.Parameters.Add("@State", Address.State)
        cmd.Parameters.Add("@Zip", Address.Zip)

        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
    End Sub

    '=== Properties ======================================================= 
    Public ReadOnly Property Contacts() As Collection
        Get
            Dim col As Collection
            Dim conn As SqlConnection
            Dim cmd As SqlCommand
            Dim dtr As SqlDataReader

            col = New Collection()
            conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
            cmd = New SqlCommand("GetContactList", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Company", myID)
            conn.Open()
            dtr = cmd.ExecuteReader()

            Do While dtr.Read()
                col.Add(New Contact(dtr("ID")))
            Loop

            dtr.Close()
            conn.Close()

            Return col
        End Get
    End Property
    Public ReadOnly Property Messages() As Collection
        Get
            Dim col As Collection
            Dim conn As SqlConnection
            Dim cmd As SqlCommand
            Dim dtr As SqlDataReader

            col = New Collection()
            conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
            cmd = New SqlCommand("GetMessageList", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Company", myID)
            conn.Open()
            dtr = cmd.ExecuteReader()

            Do While dtr.Read()
                col.Add(New Message(dtr("ID")))
            Loop

            dtr.Close()
            conn.Close()

            Return col
        End Get
    End Property
    Public Property ID() As Integer
        Get
            Return myID
        End Get
        Set(ByVal Value As Integer)
            myID = Value
        End Set
    End Property
    Public Property Name() As String
        Get
            Return myName
        End Get
        Set(ByVal Value As String)
            myName = Value
        End Set
    End Property
    Public Property Website() As String
        Get
            Return myWebsite
        End Get
        Set(ByVal Value As String)
            myWebsite = Value
        End Set
    End Property
    Public Property Phone() As String
        Get
            Return myPhone
        End Get
        Set(ByVal Value As String)
            myPhone = Value
        End Set
    End Property
End Class

Public Class Contact
    '=== Data ============================================================
    Private myID As Integer
    Private myPassword As String
    Private myEmail As String
    Private myName As String
    Private myCompanyID As Integer
    Private myUsername As String
    Private myPhone As String
    Public Address As New Address()

    '=== Constructors =====================================================
    Public Sub New()
    End Sub
    Public Sub New(ByVal ContactID As Integer)
        myID = ContactID

        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim dtr As SqlDataReader

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("GetContact", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@ID", myID)
        conn.Open()
        dtr = cmd.ExecuteReader()
        dtr.Read()

        myEmail = dtr("Email").ToString()
        myName = dtr("Name").ToString()
        myUsername = dtr("Username").ToString()
        myPassword = dtr("Password").ToString()
        myCompanyID = dtr("CompanyID")
        myPhone = dtr("Phone").ToString()
        Address.Address1 = dtr("Address").ToString()
        Address.City = dtr("City").ToString()
        Address.State = dtr("State").ToString()
        Address.Zip = dtr("Zip").ToString()

        dtr.Close()
        conn.Close()
    End Sub

    '=== Methods ==========================================================
    Public Sub Update()
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim rtn As SqlParameter

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("UpdateContact", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@ID", myID)
        cmd.Parameters.Add("@Password", myPassword)
        cmd.Parameters.Add("@Email", myEmail)
        cmd.Parameters.Add("@Phone", myPhone)
        cmd.Parameters.Add("@Address", Address.Address1)
        cmd.Parameters.Add("@City", Address.City)
        cmd.Parameters.Add("@State", Address.State)
        cmd.Parameters.Add("@Zip", Address.Zip)

        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
    End Sub

    '=== Properties =======================================================
    Public Property ID() As Integer
        Get
            Return myID
        End Get
        Set(ByVal Value As Integer)
            myID = Value
        End Set
    End Property
    Public Property Email() As String
        Get
            Return myEmail
        End Get
        Set(ByVal Value As String)
            myEmail = Value
        End Set
    End Property
    Public Property CompanyID() As Integer
        Get
            Return myCompanyID
        End Get
        Set(ByVal Value As Integer)
            myCompanyID = Value
        End Set
    End Property
    Public Property Name() As String
        Get
            Return myName
        End Get
        Set(ByVal Value As String)
            myName = Value
        End Set
    End Property
    Public Property Username() As String
        Get
            Return myUsername
        End Get
        Set(ByVal Value As String)
            myUsername = Value
        End Set
    End Property
    Public Property Password() As String
        Get
            Return myPassword
        End Get
        Set(ByVal Value As String)
            myPassword = Value
        End Set
    End Property
    Public Property Phone() As String
        Get
            Return myPhone
        End Get
        Set(ByVal Value As String)
            myPhone = Value
        End Set
    End Property
End Class

Public Class Message
    '=== Data ============================================================
    Private myID As Integer
    Private myCompanyID As Integer
    Private myConfirmedBy As Integer
    Private myCreated As Date
    Private myText As String

    '=== Constructors =====================================================
    Public Sub New()
    End Sub
    Public Sub New(ByVal MessageID As Integer)
        myID = MessageID

        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim dtr As SqlDataReader

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("GetMessage", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@ID", myID)
        conn.Open()
        dtr = cmd.ExecuteReader()
        dtr.Read()

        myCompanyID = dtr("CompanyID")
        myCreated = dtr("Created")
        myText = dtr("Text").ToString()

        If dtr("ConfirmedBy") Is DBNull.Value Then
            myConfirmedBy = 0
        Else
            myConfirmedBy = dtr("ConfirmedBy")
        End If

        dtr.Close()
        conn.Close()
    End Sub
    Public Sub New(ByVal Company As Integer, ByRef MessageText As String)
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim rtn As SqlParameter

        myCompanyID = Company
        myText = MessageText

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("SendMessage", conn)
        cmd.CommandType = CommandType.StoredProcedure
        rtn = cmd.Parameters.Add("ReturnValue", SqlDbType.Int)
        rtn.Direction = ParameterDirection.ReturnValue
        cmd.Parameters.Add("@Company", myCompanyID)
        cmd.Parameters.Add("@Message", myText)

        conn.Open()
        cmd.ExecuteNonQuery()
        myID = cmd.Parameters("ReturnValue").Value
        conn.Close()
    End Sub

    '=== Methods ==========================================================
    Public Sub Confirm(ByVal Contact As Integer)
        Dim conn As SqlConnection
        Dim cmd As SqlCommand

        conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
        cmd = New SqlCommand("ConfirmMessage", conn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("@Message", myID)
        cmd.Parameters.Add("@Contact", Contact)

        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
    End Sub

    '=== Properties =======================================================
    Public ReadOnly Property ContactLogs() As Collection
        Get
            Dim col As Collection
            Dim conn As SqlConnection
            Dim cmd As SqlCommand
            Dim dtr As SqlDataReader

            col = New Collection()
            conn = New SqlConnection(ConfigurationSettings.AppSettings("connection"))
            cmd = New SqlCommand("GetContactLogList", conn)
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.Add("@Message", myID)
            conn.Open()
            dtr = cmd.ExecuteReader()

            Do While dtr.Read()
                Dim c As New ContactLog()
                c.ID = dtr("ContactLogID")
                c.Created = dtr("Created")
                c.Type = dtr("ContactType")
                c.ContactName = dtr("Name").ToString()

                If dtr("ContactID") Is DBNull.Value Then
                    c.ContactID = 0
                Else
                    c.ContactID = dtr("ContactID")
                End If

                col.Add(c)
            Loop

            dtr.Close()
            conn.Close()

            Return col
        End Get
    End Property
    Public Property ID() As Integer
        Get
            Return myID
        End Get
        Set(ByVal Value As Integer)
            myID = Value
        End Set
    End Property
    Public Property ConfirmedBy() As Integer
        Get
            Return myConfirmedBy
        End Get
        Set(ByVal Value As Integer)
            myConfirmedBy = Value
        End Set
    End Property
    Public Property Created() As Date
        Get
            Return myCreated
        End Get
        Set(ByVal Value As Date)
            myCreated = Value
        End Set
    End Property
    Public Property Text() As String
        Get
            Return myText
        End Get
        Set(ByVal Value As String)
            myText = Value
        End Set
    End Property
End Class

Public Class ContactLog
    '=== Data ============================================================
    Public Enum ContactType
        Created = 1
        Emailed = 2
        Confirmed = 3
    End Enum
    Public ID As Integer
    Public Type As ContactType
    Public Created As Date
    Public ContactID As Integer
    Public ContactName As String

    '=== Constructors =====================================================
    Public Sub New()
    End Sub
End Class
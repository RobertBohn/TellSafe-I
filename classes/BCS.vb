'Black Canyon Software

Public Class Address
    '=== Data ============================================================
    Private myAddress1 As String    'Maxlen 50
    Private myAddress2 As String    'Maxlen 50
    Private myCity As String
    Private myState As String       'Maxlen  2
    Private myZip As String         'Maxlen 10

    '=== Constructors =====================================================
    Public Sub New()
        '
    End Sub

    '=== Properties =======================================================
    Public Property Address1() As String
        Get
            Return myAddress1
        End Get
        Set(ByVal Value As String)
            myAddress1 = Value
        End Set
    End Property
    Public Property Address2() As String
        Get
            Return myAddress2
        End Get
        Set(ByVal Value As String)
            myAddress2 = Value
        End Set
    End Property
    Public Property City() As String
        Get
            Return myCity
        End Get
        Set(ByVal Value As String)
            If Value.Length > 35 Then
                Throw New ArgumentException("City length can not exceed 35 characters.")
            Else
                myCity = Value
            End If
        End Set
    End Property
    Public Property State() As String
        Get
            Return myState
        End Get
        Set(ByVal Value As String)
            myState = Value
        End Set
    End Property
    Public Property Zip() As String
        Get
            Return myZip
        End Get
        Set(ByVal Value As String)
            myZip = Value
        End Set
    End Property
End Class

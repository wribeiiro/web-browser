VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Principal 
   Caption         =   "Web Browser"
   ClientHeight    =   9075
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15495
   LinkTopic       =   "Form1"
   ScaleHeight     =   9075
   ScaleWidth      =   15495
   StartUpPosition =   2  'CenterScreen
   Begin SHDocVwCtl.WebBrowser WebBrowser1 
      Height          =   8175
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   15375
      ExtentX         =   27120
      ExtentY         =   14420
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Carregar"
      Height          =   495
      Left            =   14400
      TabIndex        =   1
      Top             =   240
      Width           =   975
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Text            =   "http://www.google.com"
      Top             =   240
      Width           =   14175
   End
End
Attribute VB_Name = "Principal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    WebBrowser1.Navigate (Text1.Text)
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
 
    If KeyAscii = vbKeyReturn Then
        WebBrowser1.Navigate (Text1.Text)
    End If
End Sub

Private Sub Form_Load()

    Principal.WindowState = 2
    
    WebBrowser1.Width = Screen.Width
    WebBrowser1.Height = Screen.Width
      
    If Command$ <> "" Then
        WebBrowser1.Navigate (Command$)
        Text1.Text = Command$
    Else
        WebBrowser1.Navigate (Text1.Text)
    End If
End Sub

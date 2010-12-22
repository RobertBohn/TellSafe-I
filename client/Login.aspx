<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Login.aspx.vb" Inherits="TellSafevb.Login"%>
<%@ Register TagPrefix="TellSafe" TagName="PhoneNumber" Src="../controls/PhoneNumber.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Signin</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" HEIGHT="300">
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:10px;PADDING-LEFT:20px;PADDING-TOP:20px"><SPAN CLASS="txtH1">Member 
							Sign In</SPAN></TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:20px;PADDING-TOP:20px">
						<TABLE BORDER="0" CELLSPACING="3" CELLPADDING="0">
							<TR>
								<TD ALIGN="right">Username:</TD>
								<TD>
									<asp:TextBox id="txtUserName" runat="server" MaxLength="16" Width="150px" /></TD>
							</TR>
							<TR>
								<TD ALIGN="right">Password:</TD>
								<TD>
									<asp:TextBox id="txtPassword" runat="server" MaxLength="16" TextMode="Password" Width="150px" /></TD>
							</TR>
							<TR>
								<TD COLSPAN="2">&nbsp;</TD>
							</TR>
							<TR>
								<TD COLSPAN="2">
									<asp:Button id="btnSignin" runat="server" Text="Signin" OnClick="SignIn" /></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:10px;PADDING-LEFT:20px;PADDING-TOP:10px">
						<asp:Label id="lblMessageArea" runat="server"></asp:Label>
						<asp:RequiredFieldValidator id="rfvUserName" runat="server" ErrorMessage="You must enter a username." ControlToValidate="txtUserName" Display="None" />
						<asp:RequiredFieldValidator id="rfvPassword" runat="server" ErrorMessage="You must enter a password." ControlToValidate="txtPassword" Display="None" />
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" DisplayMode="List" /></TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:10px;PADDING-LEFT:20px;PADDING-TOP:50px"><SPAN CLASS="txtH1">Forget 
							your Username or Password?</SPAN></TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:10px;PADDING-LEFT:20px;PADDING-TOP:10px">Please 
						call
						<TellSafe:PhoneNumber ID="ctlPhoneNumber" Runat="Server" />
						to request your Username and Password.</TD>
				</TR>
				<TR>
					<TD HEIGHT="100%">&nbsp;</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>

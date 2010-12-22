<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mng.aspx.vb" Inherits="TellSafevb.mng"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="Logout" Src="../controls/Logout.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Tellsafe - Administration</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form2" method="post" runat="server">
			<TELLSAFE:LAYOUTTOP id="ctlLayoutTop" Runat="Server"></TELLSAFE:LAYOUTTOP>
			<TABLE height="300" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TR>
					<TD style="PADDING-RIGHT: 30px; PADDING-LEFT: 40px; PADDING-TOP: 30px" vAlign="top">
						<TABLE cellSpacing="0" cellPadding="5" width="100%" border="1">
							<TBODY>
								<TR>
									<TD>
										<TABLE cellSpacing="4" cellPadding="0" width="100%" border="0">
											<TR>
												<TD><B>Administration</B></TD>
												<TD align="right"><TELLSAFE:LOGOUT id="ctlLogout" Runat="Server"></TELLSAFE:LOGOUT></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<TABLE cellSpacing="3" cellPadding="0" width="100%" border="0">
											<TR>
												<TD><B>Company Information</B> (<asp:HyperLink id="HyperLink1" runat="server" NavigateUrl="~/client/mngCompany.aspx">Edit</asp:HyperLink>)</TD>
											</TR>
											<TR>
												<TD><asp:label id="lblCompanyName" runat="server">Company Name</asp:label></TD>
											</TR>
											<TR>
												<TD><asp:label id="lblCompanyAddress" runat="server">Company Address</asp:label></TD>
											</TR>
											<TR>
												<TD><asp:label id="lblCompanyCity" runat="server">City</asp:label>,&nbsp;
													<asp:label id="lblCompanyState" runat="server">State</asp:label>&nbsp;<asp:label id="lblCompanyZip" runat="server">Zip</asp:label></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD><asp:literal id="litContacts" Runat="server"></asp:literal></TD>
								</TR>
								<tr>
									<td><asp:literal id="litMessages" Runat="server"></asp:literal></td>
								</tr>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<TELLSAFE:LAYOUTBOTTOM id="ctlLayoutBottom" Runat="Server"></TELLSAFE:LAYOUTBOTTOM></form>
	</body>
</HTML>

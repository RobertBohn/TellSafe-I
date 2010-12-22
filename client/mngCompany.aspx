<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mngCompany.aspx.vb" Inherits="TellSafevb.mngCompany"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="Logout" Src="../controls/Logout.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="State" Src="../controls/State.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Tellsafe - Administration</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form2" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" HEIGHT="300">
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:30px;PADDING-LEFT:40px;PADDING-TOP:30px">
						<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
							<TR>
								<TD>
									<TABLE BORDER="0" CELLSPACING="4" CELLPADDING="0" WIDTH="100%">
										<TR>
											<TD>
												<A HREF="mng.aspx"><B>Administration</B></A><B> &gt; Company Information</B></TD>
											<TD ALIGN="right">&nbsp;
												<TellSafe:Logout ID="ctlLogout" Runat="Server" />
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE BORDER="0" CELLSPACING="4" CELLPADDING="0">
										<TR>
											<TD COLSPAN="3">&nbsp;</TD>
										</TR>
										<TR>
											<TD WIDTH="20">&nbsp;</TD>
											<TD ALIGN="right">Company Name:</TD>
											<TD><B>
													<asp:Label id="lblName" runat="server">Company Name</asp:Label></B></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">Company Phone Number:</TD>
											<TD><I>
													<asp:TextBox id="txtPhone" runat="server" Width="200px" MaxLength="20"></asp:TextBox>*Required</I></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">Company Website:</TD>
											<TD>
												<asp:TextBox id="txtWebsite" runat="server" Width="300px" MaxLength="150"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">Company Address:</TD>
											<TD>
												<asp:TextBox id="txtAddress" runat="server" Width="300px" MaxLength="100"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">Company City:</TD>
											<TD>
												<asp:TextBox id="txtCity" runat="server" Width="300px" MaxLength="35"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">State:</TD>
											<TD><TellSafe:State ID="ctlState" Runat="Server" /></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD ALIGN="right">Company Zip:</TD>
											<TD>
												<asp:TextBox id="txtZip" runat="server" Width="100px" MaxLength="10"></asp:TextBox></TD>
										</TR>
										<tr>
											<td colspan="3">&nbsp;</td>
										</tr>
										<TR>
											<TD COLSPAN="3">
												<TABLE BORDER="0" CELLSPACING="4" CELLPADDING="0">
													<TR>
														<TD WIDTH="165">&nbsp;</TD>
														<TD>
															<asp:Button id="btnCancel" runat="server" Text="Cancel"></asp:Button></TD>
														<TD WIDTH="30">&nbsp;</TD>
														<TD>
															<asp:Button id="btnUpdate" runat="server" Text="Update"></asp:Button></TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD HEIGHT="100%">&nbsp;</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>

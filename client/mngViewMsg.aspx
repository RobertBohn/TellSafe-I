<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mngViewMsg.aspx.vb" Inherits="TellSafevb.mngViewMsg"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="Logout" Src="../controls/Logout.ascx" %>
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
												<A HREF="mng.aspx"><B>Administration</B></A><B> &gt; <A HREF="mngreview.aspx">
														<B>Review Messages</B></A> &gt; Message #<asp:Label id="lblMsgID1" runat="server">Label</asp:Label></B>
											</TD>
											<TD ALIGN="right">&nbsp;
												<TellSafe:Logout ID="ctlLogout" Runat="Server" /></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD><TABLE BORDER="0" CELLSPACING="3" CELLPADDING="0" WIDTH="100%">
										<TR>
											<TD><B>Message Information</B></TD>
										</TR>
										<TR>
											<TD>Message #<asp:Label id="lblMsgID2" runat="server">Label</asp:Label></TD>
										</TR>
										<TR>
											<TD>Received
												<asp:Label id="lblDate" runat="server">Label</asp:Label></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
									<asp:Literal ID="litContactLog" Runat="server"></asp:Literal>
								</TD>
							</TR>
							<TR>
								<TD>
									<TABLE BORDER="0" CELLSPACING="5" CELLPADDING="0">
										<TR>
											<TD><B>Message Contents</B> (<A HREF="JavaScript:window.print();">click here to print</A>)</TD>
										</TR>
										<TR>
											<TD><asp:Literal ID="litMessageText" Runat="server"></asp:Literal>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
									<asp:Panel ID="pnlBack" visible="False" Runat="server">
										<TABLE cellSpacing="4" cellPadding="0" align="center" border="0">
											<TR>
												<TD>
													<asp:Button id="btnBack" runat="server" Text="Back"></asp:Button></TD>
											</TR>
										</TABLE>
									</asp:Panel>
									<asp:Panel ID="pnlConfirm" visible="false" Runat="server">
										<TABLE cellSpacing="4" cellPadding="0" border="0">
											<TR>
												<TD><B>Message Confirmation</B>
												</TD>
												<TD width="40">&nbsp;</TD>
												<TD>
													<asp:Button id="btnCancel" runat="server" Text="Cancel"></asp:Button></TD>
												<TD width="20">&nbsp;</TD>
												<TD>
													<asp:Button id="btnConfirm" runat="server" Text="Confirm Receipt"></asp:Button></TD>
											</TR>
										</TABLE>
									</asp:Panel>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>

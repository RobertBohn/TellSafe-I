<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Subscribe.aspx.vb" Inherits="TellSafevb.Subscribe"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="State" Src="../controls/State.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Subscribe</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<asp:Panel ID="pnlSubscribe1" Visible="True" Runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 100px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="2" cellPadding="0" width="100%" border="0">
								<TR>
									<TD><SPAN class="txtH1">Sarbanes-Oxley Compliant™ Solution - Subscription</SPAN></TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>Thank you for selecting the Compliant™ Solution. We appreciate your confidence 
										in TellSafe, and we look forward to providing our totally secure services to 
										you for many years to come.</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>
										<TABLE cellSpacing="4" cellPadding="0" border="0">
											<TR>
												<TD align="right">Company Name:</TD>
												<TD><I>
														<asp:TextBox id="txtComapnyName" runat="server" Width="200px"></asp:TextBox>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Number of Employees:</TD>
												<TD>
													<asp:TextBox id="txtEmployees" runat="server" Width="50px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD align="right">Corporate Website:</TD>
												<TD>
													<asp:TextBox id="txtCompanyWebsite" runat="server" Width="200px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD align="right">Phone Number:</TD>
												<TD><I>
														<asp:TextBox id="txtCompanyPhone" runat="server" Width="100px"></asp:TextBox>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Address:</TD>
												<TD>
													<asp:TextBox id="txtCompanyAddress" runat="server" Width="200px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD align="right">City:</TD>
												<TD>
													<asp:TextBox id="txtCompanyCity" runat="server" Width="200px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD align="right">State:</TD>
												<TD>
													<TellSafe:State id="ctlCompanyState" Runat="Server"></TellSafe:State></TD>
											</TR>
											<TR>
												<TD align="right">Zip:</TD>
												<TD>
													<asp:TextBox id="txtCompanyZip" runat="server" Width="100px"></asp:TextBox></TD>
											</TR>
											<TR>
												<TD colSpan="2">&nbsp;</TD>
											</TR>
											<TR>
												<TD></TD>
												<TD>
													<asp:Button id="btnSubscribe1" runat="server" Text="Continue..."></asp:Button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<asp:Panel ID="pnlSubscribe2" Visible="False" Runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 50px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="4" cellPadding="0" width="100%" border="0">
								<TR>
									<TD colSpan="2"><SPAN class="txtH1">Sarbanes-Oxley Compliant™ Solution - Primary 
											Contact</SPAN></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="2">Please enter information about your company's primary contact. This 
										person will immediately be notified whenever an anonymous report is submitted 
										for your company.</TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD align="right">Contact's Name:</B></TD>
									<TD><I>
											<asp:TextBox id="txtContactName" runat="server" Width="200px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Email Address:</TD>
									<TD><I>
											<asp:TextBox id="txtContactEmail" runat="server" Width="200px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Phone Number:</TD>
									<TD><I>
											<asp:TextBox id="txtContactPhone" runat="server" Width="100px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Contact's Address:</TD>
									<TD>
										<asp:TextBox id="txtContactAddress" runat="server" Width="200px"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD align="right">Contact's City:</TD>
									<TD>
										<asp:TextBox id="txtContactCity" runat="server" Width="200px"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD align="right">Contact's State:</TD>
									<TD>
										<TellSafe:State id="ctlContactState" Runat="Server"></TellSafe:State></TD>
								</TR>
								<TR>
									<TD align="right">Contact's Zip:</TD>
									<TD>
										<asp:TextBox id="txtContactZip" runat="server" Width="100px"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="2"><B>Username &amp; Password</B></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="2">Please select a Username and Password for your primary contact.</TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD align="right">Username:</TD>
									<TD><I>
											<asp:TextBox id="txtUsername" runat="server" Width="150px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Password:</TD>
									<TD><I>
											<asp:TextBox id="txtPassword" runat="server" Width="150px" TextMode="Password"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Reenter Password:</TD>
									<TD><I>
											<asp:TextBox id="txtPassword2" runat="server" Width="150px" TextMode="Password"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="2"><B>Security Question &amp; Answer</B></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD colSpan="2">Please select your primary contact's security question and answer 
										for the primary contact. These will be used to verify the contact's identity.</TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD align="right">Question:</TD>
									<TD><I>
											<asp:TextBox id="txtQuestion" runat="server" Width="150px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD align="right">Answer:</TD>
									<TD><I>
											<asp:TextBox id="txtAnswer" runat="server" Width="150px"></asp:TextBox>*Required</I></TD>
								</TR>
								<TR>
									<TD colSpan="2">&nbsp;</TD>
								</TR>
								<TR>
									<TD></TD>
									<TD>
										<TABLE cellSpacing="0" cellPadding="0" border="0">
											<TR>
												<TD>
													<asp:Button id="btnBack" runat="server" Text="Back"></asp:Button></TD>
												<TD width="15">&nbsp;</TD>
												<TD>
													<asp:Button id="btnSubscribe2" runat="server" Text="Continue..."></asp:Button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<asp:Panel ID="pnlThankYou" Visible="False" Runat="server">
				<TABLE height="300" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 100px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="2" cellPadding="0" width="100%" border="0">
								<TR>
									<TD><SPAN class="txtH1">Sarbanes-Oxley Compliant™ Solution - Order Confirmation</SPAN></TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>TellSafe welcomes you as a Subscriber to the Compliant™ Solution. We are sure 
										that you will be pleased with our services.</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>Your campany's name has been added to our list for employee access. You will 
										receive, via e-mail, files containing brochures and posters suitable for 
										distribution to your employees.</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>A TellSafe officer will contact you shortly to confirm the final pricing 
										applicable to your company.</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD align="middle"><B>Many thanks for your business...</B></TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD align="middle">
										<asp:Button id="btnFinished" runat="server" Text="Finished"></asp:Button></TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD height="100%">&nbsp;</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AppLogin.aspx.cs" Inherits="AppLogin" %>

<!DOCTYPE html>

<html>
	<HEAD>
		<title>AppLogin</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<script language="javascript">
			    function validateLength(oSrc, args) {
			        args.IsValid = args.Value.length == 6
			    }
			</script>
			<TABLE id="Table1" style="Z-INDEX: 103; LEFT: 0px; WIDTH: 1176px; POSITION: absolute; TOP: 0px; HEIGHT: 508px"
				cellSpacing="0" cellPadding="1" width="1176" border="0">
				<TR>
					<TD style="WIDTH: 311px" colSpan="4"><asp:image id="Image1" runat="server" ImageUrl="~/pictures/bannerfinal.jpg"></asp:image></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 247px"></TD>
					<TD style="WIDTH: 1052px" colSpan="3"><asp:image id="Image4" runat="server" ImageUrl="~\pictures\create_new_login.jpg"></asp:image></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 247px; HEIGHT: 15px" vAlign="top" align="center">
						<P><STRONG>
								<TABLE id="Table4" cellSpacing="1" cellPadding="1" width="246" border="0" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; WIDTH:246px; BORDER-BOTTOM:#c0c0c0 1px solid; HEIGHT:330px"
									align="center">
									<TR>
										<TD align="center" vAlign="top"><STRONG>
												<asp:HyperLink id="hlHome" runat="server" ImageUrl="~\pictures\HOME.jpg" Width="164px" NavigateUrl="Home.aspx"
													Font-Bold="True">Home</asp:HyperLink></STRONG>
										</TD>
									</TR>
								</TABLE>
							</STRONG>
						</P>
					</TD>
					<TD style="WIDTH: 1052px; HEIGHT: 15px" vAlign="top" align="center" colSpan="3">
						<TABLE id="Table3" style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; BORDER-BOTTOM: #c0c0c0 1px solid"
							cellSpacing="0" cellPadding="1" width="100%" border="0">
							<TR class="heading">
								<TD align="center" colSpan="2"><asp:label id="lblAppTitle" runat="server" Height="14px" Font-Size="Larger" Font-Bold="True"
										Width="100%">Create Your Account for Uploading Your Particulars</asp:label></TD>
							</TR>
							<TR>
								<TD>
									<DIV id="DIV1" style="WIDTH: 464px; HEIGHT: 184px" align="justify" runat="server"><FONT face="Century Gothic" color="#000066" size="2"><B>Thank 
												you for deciding to apply for job at CIIT, Islamabad.</B>
											<BR>
											<BR>
											<HR>
											<BR>
											Enter the <B>Login</B> and <B>Password</B> you want to use and confirm the 
											same.
											<BR>
											<BR>
											<HR>
											<BR>
											You can then login to CIIT, Islamabad job protal and submit your particulars. </FONT>
									</DIV>
								</TD>
								<TD><asp:panel id="plAppLogin" runat="server" Height="240px" Width="309px" BorderStyle="Double"
										HorizontalAlign="Center">
										<P>&nbsp;</P>
										<P>
											<TABLE id="Table2" style="WIDTH: 300px; HEIGHT: 208px" cellSpacing="1" cellPadding="1"
												width="300" border="0">
												<TR>
													<TD>Applicant Username</TD>
													<TD>
														<asp:TextBox id="txtAppID" runat="server" Width="138px" MaxLength="10"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD align="center" colSpan="2">
														<asp:RequiredFieldValidator id="rfvAppID" runat="server" ControlToValidate="txtAppID" Display="Dynamic" ErrorMessage="Enter Applicant ID"></asp:RequiredFieldValidator></TD>
												</TR>
												<TR>
													<TD colSpan="2">
														<P align="center">
															<asp:CustomValidator id="cvAppID" runat="server" ControlToValidate="txtAppID" Display="Dynamic" ErrorMessage="Applicant ID lenght should be less or equal to 10"
																EnableClientScript="False"></asp:CustomValidator></P>
													</TD>
												</TR>
												<TR>
													<TD>Password</TD>
													<TD>
                                                        <asp:TextBox ID="TextBox1" runat="server" Width="130px" TextMode="Password"></asp:TextBox>
                                                    </TD>
												</TR>
												<TR>
													<TD align="center" colSpan="2">
														<asp:RequiredFieldValidator id="rfvPassword" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
															ErrorMessage="Enter Password"></asp:RequiredFieldValidator></TD>
												</TR>
												<TR>
													<TD colSpan="2">
														<P align="center">
															<asp:CustomValidator id="cvPassword" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
																ErrorMessage="Password should be 6 characters" ClientValidationFunction="validateLength"></asp:CustomValidator></P>
													</TD>
												</TR>
												<TR>
													<TD>Confirm Password</TD>
													<TD><INPUT id="txtCfPassword" style="WIDTH: 138px; HEIGHT: 22px" type="password" maxLength="6"
															size="17" name="txtCfPassword" runat="server"></TD>
												</TR>
												<TR>
													<TD align="center" colSpan="2">
														<asp:RequiredFieldValidator id="rfvConfirmPassword" runat="server" ControlToValidate="txtCfPassword" Display="Dynamic"
															ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator></TD>
												</TR>
												<TR>
													<TD align="center" colSpan="2">
														<asp:CompareValidator id="cmvPassword" runat="server" ControlToValidate="txtCfPassword" Display="Dynamic"
															ErrorMessage="Password and Confirm Password should be same" ControlToCompare="TextBox1"></asp:CompareValidator></TD>
												</TR>
											</TABLE>
										</P>
										<P>
											<asp:Button id="btnAppLogin" runat="server" Font-Bold="True" Text="Create Login" OnClick="btnAppLogin_Click"></asp:Button></P>
									</asp:panel></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 250px" colSpan="2"></TD>
					<TD style="WIDTH: 788px"><asp:label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:label></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 250px" colSpan="2"></TD>
					<TD style="WIDTH: 261px" colSpan="2">
						<asp:Image id="Image5" runat="server" ImageUrl="~\pictures\botton1 copy.jpg"></asp:Image></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</html>

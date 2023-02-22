<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppInformation.aspx.cs" Inherits="AppInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image3" runat="server" ImageUrl="~\pictures\per_Information.JPG"></asp:Image></td>
        </tr>
        <tr>
            <td><asp:Panel id="plAppInformation" runat="server" BorderStyle="Solid" Height="582px" Width="691px"
							HorizontalAlign="Center">
							<TABLE id="Table2" style="HEIGHT: 525px; width: 100%;" cellSpacing="1" cellPadding="1" border="0">
								<TR>
									<TD class="heading" style="HEIGHT: 23px" align="center" colSpan="3"><STRONG>Personal 
											Information</STRONG></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 23px" colSpan="3">
										<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label>
										<asp:Label id="Label1" runat="server" ForeColor="Red"></asp:Label></TD>
								</TR>
								<TR>
									<TD style="HEIGHT: 23px">
										<DIV align="center" style="font-weight: 700">First Name</DIV>
									</TD>
									<TD style="WIDTH: 171px; HEIGHT: 23px">
										<asp:TextBox id="txtAppFName" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="HEIGHT: 23px; width: 369px;">
										<P>
											<asp:RequiredFieldValidator id="rfvAppFName" runat="server" ErrorMessage="Enter Your First Name" Display="Dynamic"
												ControlToValidate="txtAppFName"></asp:RequiredFieldValidator></P>
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Middle Name</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppMNAme" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="width: 369px"></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Last Name</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppLName" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="width: 369px">
										<P>
											<asp:RequiredFieldValidator id="rfvAppLName" runat="server" ErrorMessage="Enter Your Last Name" Display="Dynamic"
												ControlToValidate="txtAppLName"></asp:RequiredFieldValidator></P>
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Res. Phone</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppResPhone" runat="server" Width="138px"></asp:TextBox><BR>
										(<FONT color="#3300ff">city</FONT>-number)</TD>
									<TD style="width: 369px"><SPAN style="WIDTH: 171px">
											<asp:RequiredFieldValidator id="rfvAppResPhone" runat="server" ErrorMessage="Enter Your Phone Number" Display="Dynamic"
												ControlToValidate="txtAppResPhone"></asp:RequiredFieldValidator></SPAN><SPAN style="WIDTH: 171px">
											<asp:RegularExpressionValidator id="revEmpPhone" runat="server" ErrorMessage="Enter Correct Phone Number (i.e 042-2261196)"
												Display="Dynamic" ControlToValidate="txtAppResPhone" ValidationExpression="\d{3}-\d{7}"></asp:RegularExpressionValidator></SPAN></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Cell Phone</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppCellPhone" runat="server" Width="138px" DESIGNTIMEDRAGDROP="61"></asp:TextBox><BR>
										(<FONT color="#3300ff">code</FONT>-number)</TD>
									<TD style="width: 369px"><SPAN style="WIDTH: 171px">
											<asp:RegularExpressionValidator id="revEmpCellPhone" runat="server" ErrorMessage="Enter Correct Cell Phone Number (i.e 0300-5991055)"
												Display="Dynamic" ControlToValidate="txtAppCellPhone" ValidationExpression="\d{4}-\d{7}"></asp:RegularExpressionValidator></SPAN></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Date of Birth</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppDOB" runat="server" Width="138px"></asp:TextBox><BR>
										(<STRONG><FONT color="#3300ff">mm/dd/</FONT></STRONG><STRONG><FONT color="#3300ff">yyyy</FONT></STRONG>)</TD>
									<TD style="width: 369px"><SPAN style="WIDTH: 171px">
											<asp:RequiredFieldValidator id="rfvAppDOB" runat="server" ErrorMessage="Enter Your Date Of Birth" Display="Dynamic"
												ControlToValidate="txtAppDOB"></asp:RequiredFieldValidator>
											<asp:RegularExpressionValidator id="revAppDOB" runat="server" ErrorMessage="Enter Correct Date (i.e mm/dd/yyyy)"
												Display="Dynamic" ControlToValidate="txtAppDOB" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator></SPAN></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">NIC No</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppNIC" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="width: 369px"><SPAN style="WIDTH: 171px">
											<asp:RequiredFieldValidator id="rfvAppNIC" runat="server" ErrorMessage="Enter Your NIC Number" Display="Dynamic"
												ControlToValidate="txtAppNIC"></asp:RequiredFieldValidator>
											<asp:RegularExpressionValidator id="revAppNIc" runat="server" ErrorMessage="Enter Correct NIC (i.e 17105-822160-5)"
												Display="Dynamic" ControlToValidate="txtAppNIC" ValidationExpression="\d{5}-\d{6}-\d{1}"></asp:RegularExpressionValidator></SPAN></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Email ID</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppEmail" runat="server" Width="138px" DESIGNTIMEDRAGDROP="76" Height="22px"></asp:TextBox></TD>
									<TD style="width: 369px">
										<asp:RegularExpressionValidator id="revAppEmail" runat="server" ErrorMessage="Email ID Not Correct" Display="Dynamic"
											ControlToValidate="txtAppEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" designtimedragdrop="78"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Hobbies</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppHobbies" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="width: 369px"></TD>
								</TR>
								<TR>
									<TD>
										<DIV align="center" style="font-weight: 700">Interest</DIV>
									</TD>
									<TD style="WIDTH: 171px">
										<asp:TextBox id="txtAppInterest" runat="server" Width="138px"></asp:TextBox></TD>
									<TD style="width: 369px"></TD>
								</TR>
							</TABLE>
							<P></P>
							<asp:Button id="btnAppSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnAppSubmit_Click"></asp:Button>
						</asp:Panel></td>
        </tr>
    </table>
</asp:Content>


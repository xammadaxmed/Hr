<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisal03.aspx.cs" Inherits="emplyee_EmpAppraisal03" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    eeeee<table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal form c.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 17px; font-family: arial; font-size: 12px;" align="center">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
				</tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px;">
									<asp:Label id="Label1" runat="server" Font-Bold="True" Font-Size="Small" CssClass="heading"
										Font-Names="Arial">Recommendatins</asp:Label></TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" style="WIDTH: 785px; HEIGHT: 221px" cellSpacing="1" cellPadding="1"
										width="785" border="0">
										<TR class="heading">
											<TD class="auto-style1"><STRONG>a</STRONG></TD>
											<TD style="HEIGHT: 3px" colSpan="2"><STRONG>Increment (s)/ Honorarium:</STRONG></TD>
											<TD style="HEIGHT: 3px" align="center"><STRONG>Rating</STRONG></TD>
										</TR>
										<TR>
											<TD class="auto-style2">&nbsp;</TD>
											<TD style="HEIGHT: 7px">i</TD>
											<TD style="HEIGHT: 7px; font-family: arial; font-size: 12px;">Normal Increment <FONT color="#ff0000"><STRONG>*</STRONG></FONT></TD>
											<TD tabIndex="0" align="center" colSpan="1" rowSpan="1">
												<asp:RadioButtonList id="rbl1" runat="server" Width="421px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="Recommended">Recommended</asp:ListItem>
													<asp:ListItem Value="Not Recommended">Not Recommended</asp:ListItem>
													<asp:ListItem Value="Not Applicable">Not Applicable</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">&nbsp;</TD>
											<TD style="HEIGHT: 5px">ii</TD>
											<TD style="HEIGHT: 5px; font-family: arial; font-size: 12px;">Normal Increment + honorarium <FONT color="#ff0000">
													<STRONG>**</STRONG></FONT></TD>
											<TD style="HEIGHT: 5px">
												<asp:RadioButtonList id="rbl2" runat="server" Width="421px" Font-Bold="True" AutoPostBack="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="Recommended">Recommended</asp:ListItem>
													<asp:ListItem Value="Not Recommended">Not Recommended</asp:ListItem>
													<asp:ListItem Value="Not Applicable">Not Applicable</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">&nbsp;</TD>
											<TD style="HEIGHT: 10px">iii</TD>
											<TD style="HEIGHT: 10px; font-family: arial; font-size: 12px;">Normal Increment + additional Increment (s) <FONT color="#ff0000">
													<STRONG>***</STRONG></FONT></TD>
											<TD style="HEIGHT: 10px">
												<asp:RadioButtonList id="rbl3" runat="server" Width="421px" Font-Bold="True" AutoPostBack="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="Recommended">Recommended</asp:ListItem>
													<asp:ListItem Value="Not Recommended">Not Recommended</asp:ListItem>
													<asp:ListItem Value="Not Applicable">Not Applicable</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;"><STRONG>b</STRONG></TD>
											<TD style="HEIGHT: 1px" colSpan="2"><STRONG>Extension of Contract</STRONG></TD>
											<TD style="HEIGHT: 1px">
												<asp:RadioButtonList id="rbl4" runat="server" Width="421px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="Recommended">Recommended</asp:ListItem>
													<asp:ListItem Value="Not Recommended">Not Recommended</asp:ListItem>
													<asp:ListItem Value="Not Applicable">Not Applicable</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;"><STRONG>c</STRONG></TD>
											<TD style="HEIGHT: 16px" colSpan="2"><STRONG>Appointment in Grade/ Higher Grade</STRONG></TD>
											<TD style="HEIGHT: 16px">
												<asp:RadioButtonList id="rbl5" runat="server" Width="421px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="Recommended">Recommended</asp:ListItem>
													<asp:ListItem Value="Not Recommended">Not Recommended</asp:ListItem>
													<asp:ListItem Value="Not Applicable">Not Applicable</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">&nbsp;</TD>
											<TD style="HEIGHT: 1px"><STRONG><FONT color="#ff0000">*</FONT></STRONG></TD>
											<TD style="HEIGHT: 1px" colSpan="2"><STRONG><FONT color="#ff0000" size="2">Normal 
																increment is not applicable if service period in the grade is less than six 
																months</FONT></STRONG></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;"></TD>
											<TD style="HEIGHT: 5px"><STRONG><FONT color="#ff0000">
														<asp:Label id="lblHonorariumSt" runat="server" Visible="False">**</asp:Label></FONT></STRONG></TD>
											<TD style="HEIGHT: 5px"><STRONG><FONT color="#ff0000" size="2">
														<asp:Label id="lblHonorariumAmount" runat="server" Visible="False">Please specify the amount of Honorarium.</asp:Label></FONT></STRONG></TD>
											<TD style="HEIGHT: 5px">
												<asp:TextBox id="TextBox1" runat="server" Visible="False"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD class="auto-style1"></TD>
											<TD style="HEIGHT: 3px"><STRONG><FONT color="#ff0000">
														<asp:Label id="lblAdditionalAmountSt" runat="server" Visible="False">***</asp:Label></FONT></STRONG></TD>
											<TD style="HEIGHT: 3px"><STRONG><FONT color="#ff0000" size="2">
														<asp:Label id="lblAdditionalAmount" runat="server" Visible="False">Please specify the amount of additional increment</asp:Label></FONT></STRONG></TD>
											<TD style="HEIGHT: 3px">
												<asp:TextBox id="TextBox2" runat="server" Visible="False"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="4">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button></TD>
										</TR>
									</TABLE>
									</td>
    </tr>
    <tr>
        <td>
									<asp:Label id="lblDate" runat="server" Visible="False">Label</asp:Label></td>
    </tr>
    <tr>
        <td style="text-align: center">&nbsp;</td>
    </tr>
    <tr>
        <td>
						<asp:HyperLink id="hlStep4" runat="server" ImageUrl="~/pictures\step4button.jpg" Font-Bold="True"
							NavigateUrl="EmpAppraisal04.aspx">STEP : 4</asp:HyperLink></td>
    </tr>
</table>
</asp:Content>


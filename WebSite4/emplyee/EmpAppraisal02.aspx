<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisal02.aspx.cs" Inherits="emplyee_EmpAppraisal02" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal fomr b.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 3px; font-family: arial; font-size: 12px; background-color: #0099FF;" align="center">
						<asp:Label CssClass="heading" Font-Bold="True" ForeColor="Red" id="lblMessage" runat="server"></asp:Label></TD>
				</tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px; background-color: #0099FF;">Enter Your Remarks</TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" style="WIDTH: 931px; HEIGHT: 566px" cellSpacing="1" cellPadding="1"
										width="931" border="0">
										<TR class="heading">
											<TD align="center"><STRONG>Sr</STRONG></TD>
											<TD style="WIDTH: 355px" align="center"><STRONG>Assesment Criterion</STRONG></TD>
											<TD align="center"><STRONG>Rating</STRONG></TD>
										</TR>
										<TR>
											<TD>1</TD>
											<TD style="WIDTH: 355px">
												<P><STRONG>Communication Skills:</STRONG></P>
												<P><FONT size="2">(Expresses ideas clearly both orally and in writing, listens well and 
														responds appropriately)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl1" runat="server" Width="588px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 97px">2</TD>
											<TD style="WIDTH: 355px; HEIGHT: 97px">
												<P><STRONG>Interpersonal Skills:</STRONG></P>
												<P>(<FONT size="2">Works effectively and cooperatively with others: acts as a unifying 
														force; demonstrates consideration and maintains rapport with others, expresses 
														disagrement in an appropriate way)</FONT></P>
											</TD>
											<TD style="HEIGHT: 97px">
												<asp:RadioButtonList id="rbl2" runat="server" Width="588px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD>3</TD>
											<TD style="WIDTH: 355px">
												<P><STRONG>Initiative:</STRONG></P>
												<P><FONT size="2">(Seeks and assumes greater responsibility, monitors projects 
														independently and follows through appropriately)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl3" runat="server" Width="588px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD>4</TD>
											<TD style="WIDTH: 355px">
												<P><STRONG>Judgment:</STRONG></P>
												<P><FONT size="2">(Effectively analyzes problems, determins appropraite action for 
														solutions and exhibits decisive action, thinks logically)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl4" runat="server" Width="588px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD>5</TD>
											<TD style="WIDTH: 355px">
												<P><STRONG>Reliability:</STRONG></P>
												<P><FONT size="2">(Can be depended upon in day-to-day activities and in matters of 
														highly important or confidential nature. Meets promised deadlines without 
														sacrifice of accuracy or quality, reports unavoidable delays in advance od 
														deadlines)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl5" runat="server" Width="588px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 376px" align="center" colSpan="2"><STRONG>Column Score</STRONG></TD>
											<TD>
												<asp:Label id="lblOutstandingSum" runat="server" Width="100px" Font-Bold="True">Label</asp:Label><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</STRONG>
												<asp:Label id="lblVeryGoodSum" runat="server" Width="68px" Font-Bold="True">Label</asp:Label><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												</STRONG>
												<asp:Label id="lblGoodSum" runat="server" Width="44px" Font-Bold="True">Label</asp:Label><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;
												</STRONG>
												<asp:Label id="lblAverageSum" runat="server" Width="76px" Font-Bold="True">Label</asp:Label><STRONG>&nbsp;&nbsp;&nbsp;
												</STRONG>
												<asp:Label id="lblBelowAverage" runat="server" Width="92px" Font-Bold="True">Label</asp:Label></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 376px" align="center" colSpan="2"><STRONG>Score (b)</STRONG></TD>
											<TD align="center">
												<asp:Label id="lblScoreB" runat="server" Width="100px" Font-Bold="True">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</TD>
										</TR>
										<TR>
											<TD align="center" colSpan="3">
												<asp:Button id="btnSum" runat="server" Font-Bold="True" Text="Sum" OnClick="btnSum_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="3">
												<asp:Label id="lblDate" runat="server" Visible="False">Label</asp:Label></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>
						<asp:HyperLink id="HlStep3" runat="server" Font-Bold="True" NavigateUrl="EmpAppraisalSummery0102.aspx"
							ImageUrl="~/pictures\step3 button.jpg">STEP : 3</asp:HyperLink></td>
    </tr>
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


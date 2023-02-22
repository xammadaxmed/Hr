<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisal01.aspx.cs" Inherits="emplyee_EmpAppraisal01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal form a.jpg"></asp:Image></td>
        </tr>
        <tr>
					<TD style="HEIGHT: 4px; font-family: arial; font-size: 12px; background-color: #0099FF;" align="center">&nbsp;
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>&nbsp;</TD>
				</tr>
        <tr>
            <td style="height: 23px">
                <table class="auto-style2">
                    <tr>
                        <td>&nbsp;</td>
                        <td style="width: 230px; font-weight: 700">Select Employee</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EmpFName" DataValueField="EmpID" Height="16px" Width="172px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [EmpFName], [EmpID] FROM [EmpData]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
								<TD align="center" style="font-weight: 700; font-size: medium; background-color: #0099FF">
									<asp:Label id="lblTitle" runat="server" Font-Bold="True" Font-Size="Small" DESIGNTIMEDRAGDROP="31"
										Font-Names="Arial">Performance Factors</asp:Label></TD>
							</tr>
        <tr>
            <td>
									<TABLE id="Table2" style="WIDTH: 804px; HEIGHT: 523px" cellSpacing="1" cellPadding="1"
										width="804" border="0">
										<TR class="heading">
											<TD><STRONG>Sr</STRONG></TD>
											<TD style="WIDTH: 281px" align="center"><STRONG>Assesment Criteria</STRONG></TD>
											<TD align="center"><STRONG>Rating</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG>1</STRONG></TD>
											<TD style="WIDTH: 281px">
												<P><STRONG>Professional Knowledge/ Experience:</STRONG></P>
												<P><FONT size="2">(Possesses information, skills, related systems and procedures and 
														understanding of the work)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl1" runat="server" Width="506px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 61px"><STRONG>2</STRONG></TD>
											<TD style="WIDTH: 281px; HEIGHT: 61px">
												<P><STRONG>Quality:</STRONG></P>
												<P><FONT size="2">(Accuracy, timeliness, recognizing problems, and catching errors)</FONT></P>
											</TD>
											<TD style="HEIGHT: 61px">
												<asp:RadioButtonList id="rbl2" runat="server" Width="506px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD><STRONG>3</STRONG></TD>
											<TD style="WIDTH: 281px">
												<P><STRONG>Productivity:</STRONG></P>
												<P><FONT size="2">(Amount of work turned out, work pace, completeness, thoroughness 
														with which instructions and duties are carried out)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl3" runat="server" Width="506px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD><STRONG>4</STRONG></TD>
											<TD style="WIDTH: 281px">
												<P><STRONG>Planning and Organizing:</STRONG></P>
												<P><FONT size="2">(Effictive at developing goals and strategies for future action and 
														scheduling/assigning work resources (people equipment) in related to tasks or 
														goals)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl4" runat="server" Width="506px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD><STRONG>5</STRONG></TD>
											<TD style="WIDTH: 281px">
												<P><STRONG>Work Habits:</STRONG></P>
												<P><FONT size="2">(Willing to switch assignments, take on or perform more difficult or 
														less desirable tasks when necessary, take initative to find wirk when normal 
														work pressure decreases, acceptance of guidance and correction and benefiting 
														from it)</FONT></P>
											</TD>
											<TD>
												<asp:RadioButtonList id="rbl5" runat="server" Width="506px" Font-Bold="True" RepeatDirection="Horizontal">
													<asp:ListItem Value="5">Outstanding</asp:ListItem>
													<asp:ListItem Value="4">Very Good</asp:ListItem>
													<asp:ListItem Value="3">Good</asp:ListItem>
													<asp:ListItem Value="2">Average</asp:ListItem>
													<asp:ListItem Value="1">Below Average</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2"><STRONG>Column Score</STRONG></TD>
											<TD>
												<asp:Label id="lblOutstandingSum" runat="server" Width="100px" Font-Bold="True">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:Label id="lblVeryGoodSum" runat="server" Width="68px" Font-Bold="True">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:Label id="lblGoodSum" runat="server" Width="44px" Font-Bold="True">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:Label id="lblAverageSum" runat="server" Width="76px" Font-Bold="True">Label</asp:Label>&nbsp;&nbsp;&nbsp;
												<asp:Label id="lblBelowAverage" runat="server" Width="92px" Font-Bold="True">Label</asp:Label></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 12px" align="center" colSpan="2"><STRONG>Score (a)</STRONG></TD>
											<TD style="HEIGHT: 12px" align="center">
												<asp:Label id="lblScoreA" runat="server" Width="100px" Font-Bold="True" ForeColor="Blue">Label</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</TD>
										</TR>
										<TR>
											<TD align="center" colSpan="3">
												<asp:Button id="btnSum" runat="server" Font-Bold="True" Text="Sum" OnClick="btnSum_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button></TD>
										</TR>
									</TABLE>
									</td>
        </tr>
        <tr>
            <td>
									<asp:Label id="lblDate" runat="server" Visible="False" DESIGNTIMEDRAGDROP="112" style="text-align: center">Label</asp:Label></td>
        </tr>
        <tr>
            <td>
						<asp:HyperLink id="hlStep2" runat="server" Font-Bold="True" NavigateUrl="EmpAppraisal02.aspx" Width="56px"
							ImageUrl="~/pictures\Step2button.jpg">STEP : 2</asp:HyperLink></td>
        </tr>
    </table>
</asp:Content>


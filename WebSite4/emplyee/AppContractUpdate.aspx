<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="AppContractUpdate.aspx.cs" Inherits="emplyee_EmpContract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
									<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\Modify employee contract details.jpg"></asp:Image></td>
        </tr>
        <tr>
					<TD align="center" style="WIDTH: 559px; HEIGHT: 14px; font-family: arial; font-size: 12px; background-color: #0099FF;">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" Visible="False" ForeColor="Red"></asp:Label>&nbsp;</TD>
				</tr>
        <tr>
									<TD align="center" style="font-family: arial; font-size: medium; background-color: #0099FF;"><strong>Add Employee Contract Details</strong></TD>
								</tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
										<TABLE id="Table3" style="WIDTH: 340px; HEIGHT: 445px" cellSpacing="1" cellPadding="1"
											width="340" border="0" align="center">
											<TR class="heading">
												<TD colSpan="3" style="text-align: center; background-color: #0099FF"><STRONG><span style="color: #000000">Joining Information-</span><FONT color="#3300ff">--</FONT></STRONG></TD>
											</TR>
											<TR class="heading">
												<TD colSpan="2" style="text-align: center; background-color: #FFFFFF; height: 70px;">Select Employee</TD>
											<TD  style="text-align: center; background-color: #FFFFFF; width: 218px; height: 70px;">
                                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="username" DataValueField="EmpID" Height="16px" Width="160px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [EmpID], [username] FROM [EmpLog]"></asp:SqlDataSource>
                                                </TD>
                                            </TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px; font-family: arial; font-size: 12px;">Date of Joining</TD>
												<TD style="width: 218px">
													<asp:TextBox id="txtEmpDateOfJoining" runat="server"></asp:TextBox>
													<asp:Button id="btnCalender" runat="server" Font-Bold="True" ForeColor="White" Width="16px"
														BackColor="Black" Height="15px" Text="-" OnClick="btnCalender_Click1"></asp:Button></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px"></TD>
												<TD style="width: 218px">
													<asp:Calendar id="Calendar1" runat="server" Font-Size="8pt" Visible="False" ForeColor="#003399"
														Width="153px" BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
														DayNameFormat="FirstLetter" BorderWidth="1px" VisibleDate="2007-10-12" SelectedDate="2007-10-12" OnSelectionChanged="Calendar1_SelectionChanged1">
														<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
														<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
														<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
														<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
														<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
														<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
															BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
														<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
														<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
													</asp:Calendar></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px; font-family: arial; font-size: 12px;">Regularization Date</TD>
												<TD style="width: 218px">
													<asp:TextBox id="txtEmpRegularizationDate" runat="server"></asp:TextBox>
													<asp:Button id="btnCalender2" runat="server" Font-Bold="True" Width="27px" BackColor="Black"
														Height="15px" Text="-" OnClick="btnCalender2_Click1"></asp:Button></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px"></TD>
												<TD style="width: 218px">
													<asp:Calendar id="Calendar2" runat="server" Font-Size="8pt" Visible="False" ForeColor="#003399"
														Width="153px" BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
														DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar2_SelectionChanged1">
														<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
														<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
														<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
														<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
														<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
														<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
															BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
														<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
														<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
													</asp:Calendar></TD>
											</TR>
											<TR class="heading">
												<TD colSpan="3"><STRONG><FONT color="#3300ff">Contract Information---</FONT></STRONG></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px; font-family: arial; font-size: 12px;">Contract Start Date</TD>
												<TD style="width: 218px">
													<asp:TextBox id="txtEmpContractStartDate" runat="server" DESIGNTIMEDRAGDROP="75"></asp:TextBox>
													<asp:Button id="btnCalendar3" runat="server" Width="16px" BackColor="Black" Height="15px" Text="Button"
														DESIGNTIMEDRAGDROP="76" OnClick="btnCalendar3_Click1"></asp:Button></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px"></TD>
												<TD style="width: 218px">
													<asp:Calendar id="Calendar3" runat="server" Font-Size="8pt" Visible="False" ForeColor="#003399"
														Width="153px" BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
														DayNameFormat="FirstLetter" BorderWidth="1px" DESIGNTIMEDRAGDROP="84" OnSelectionChanged="Calendar3_SelectionChanged1">
														<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
														<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
														<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
														<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
														<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
														<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
															BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
														<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
														<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
													</asp:Calendar></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px; font-family: arial; font-size: 12px;">Contract End Date</TD>
												<TD style="width: 218px">
													<asp:TextBox id="txtEmpContractEndDate" runat="server" DESIGNTIMEDRAGDROP="92"></asp:TextBox>
													<asp:Button id="btnCalendar4" runat="server" Width="16px" BackColor="Black" Height="15px" Text="Button"
														DESIGNTIMEDRAGDROP="93" OnClick="btnCalendar4_Click1"></asp:Button></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px"></TD>
												<TD style="width: 218px">
													<asp:Calendar id="Calendar4" runat="server" Font-Size="8pt" Visible="False" ForeColor="#003399"
														Width="153px" BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
														DayNameFormat="FirstLetter" BorderWidth="1px" DESIGNTIMEDRAGDROP="101" OnSelectionChanged="Calendar4_SelectionChanged1">
														<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
														<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
														<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
														<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
														<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
														<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
															BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
														<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
														<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
													</asp:Calendar></TD>
											</TR>
											<TR class="heading">
												<TD colSpan="3"><STRONG><FONT color="#3300ff">Increment Information---</FONT></STRONG></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px; font-family: arial; font-size: 12px;">Date of Next Increment</TD>
												<TD style="width: 218px">
													<asp:TextBox id="txtEmpDateOfNextIncrement" runat="server" DESIGNTIMEDRAGDROP="116" style="width: 128px"></asp:TextBox>
													<asp:Button id="btnCalendar5" runat="server" Width="16px" BackColor="Black" Height="15px" Text="Button"
														DESIGNTIMEDRAGDROP="117" OnClick="btnCalendar5_Click1"></asp:Button></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD style="WIDTH: 155px"></TD>
												<TD style="width: 218px">
													<asp:Calendar id="Calendar5" runat="server" Font-Size="8pt" Visible="False" ForeColor="#003399"
														Width="153px" BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
														DayNameFormat="FirstLetter" BorderWidth="1px" DESIGNTIMEDRAGDROP="125" OnSelectionChanged="Calendar5_SelectionChanged1">
														<TodayDayStyle ForeColor="White" BackColor="#99CCCC"></TodayDayStyle>
														<SelectorStyle ForeColor="#336666" BackColor="#99CCCC"></SelectorStyle>
														<NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF"></NextPrevStyle>
														<DayHeaderStyle Height="1px" ForeColor="#336666" BackColor="#99CCCC"></DayHeaderStyle>
														<SelectedDayStyle Font-Bold="True" ForeColor="#CCFF99" BackColor="#009999"></SelectedDayStyle>
														<TitleStyle Font-Size="10pt" Font-Bold="True" Height="25px" BorderWidth="1px" ForeColor="#CCCCFF"
															BorderStyle="Solid" BorderColor="#3366CC" BackColor="#003399"></TitleStyle>
														<WeekendDayStyle BackColor="#CCCCFF"></WeekendDayStyle>
														<OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
													</asp:Calendar></TD>
											</TR>
											<TR>
												<TD align="center" colSpan="3">
												<asp:Button id="btnUpdate" runat="server" Font-Bold="True" Text="Update" OnClick="btnUpdate_Click"></asp:Button>
												<asp:Button id="btnDelete" runat="server" Font-Bold="True" Text="Delete" OnClick="btnDelete_Click"></asp:Button></TD>
											</TR>
										</TABLE>
									</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


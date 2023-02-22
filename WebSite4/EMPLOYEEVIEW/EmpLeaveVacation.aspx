<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEEVIEW/emp.master" AutoEventWireup="true" CodeFile="EmpLeaveVacation.aspx.cs" Inherits="EMPLOYEEVIEW_EmpLeaveVacation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\leave vacation.jpg"></asp:Image></td>
    </tr>
    <tr>
        <td style="text-align: center; background-color: #0099FF">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" Width="795px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #0099FF;">Apply for Leave/Vacation</TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" align="center" border="0" style="width: 316px">
										<TR>
											<TD align="left" style="WIDTH: 136px; font-family: arial; font-size: 12px;">Leave Type</TD>
											<TD>
												<asp:DropDownList id="ddlEmpLeaveType" runat="server" Width="138px" DataSourceID="SqlDataSource1" DataTextField="LeaveVacationType" DataValueField="LeaveVacationType"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [leaveId], [LeaveVacationType] FROM [Leave_Vacation]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD align="left" style="WIDTH: 136px; font-family: arial; font-size: 12px;">Grade</TD>
											<TD>
												<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Grade" DataValueField="Grade" Height="43px" Width="165px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [Grade] FROM [Position]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD align="left" style="WIDTH: 136px; font-family: arial; font-size: 12px;">Position </TD>
											<TD>
												<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="PositionDescription" DataValueField="PositionID" Height="23px" Width="146px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [PositionID], [PositionDescription] FROM [Des]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD align="left" style="WIDTH: 136px; font-family: arial; font-size: 12px;">Application Date</TD>
											<TD>
												<asp:TextBox id="txtEmpApplicationDate" runat="server" Width="138px"></asp:TextBox>
												<asp:Button id="btnEmpApplicationDate" runat="server" Width="16px" BackColor="Black" Height="15px" OnClick="btnEmpApplicationDate_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD align="left" style="WIDTH: 136px"></TD>
											<TD>
												<asp:Calendar id="Calendar1" runat="server" Width="153px" Visible="False" ForeColor="#003399"
													BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
													Font-Size="8pt" DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar1_SelectionChanged">
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
											<TD style="WIDTH: 136px; HEIGHT: 28px; font-family: arial; font-size: 12px;" align="left">Start&nbsp;Date</TD>
											<TD style="HEIGHT: 28px">
												<asp:TextBox id="txtEmpStartDate" runat="server" Width="138px"></asp:TextBox>
												<asp:Button id="btnEmpStartDate" runat="server" Width="16px" BackColor="Black" Height="15px" OnClick="btnEmpStartDate_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 136px; HEIGHT: 28px" align="left"></TD>
											<TD style="HEIGHT: 28px">
												<asp:Calendar id="Calendar2" runat="server" Width="153px" Visible="False" ForeColor="#003399"
													BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
													Font-Size="8pt" DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar2_SelectionChanged">
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
											<TD align="left" style="WIDTH: 136px; font-family: arial; font-size: 12px;">End Date</TD>
											<TD>
												<asp:TextBox id="txtEmpEndDate" runat="server" Width="138px"></asp:TextBox>
												<asp:Button id="btnEmpEndDate" runat="server" Width="16px" BackColor="Black" Height="15px" OnClick="btnEmpEndDate_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD align="left" style="WIDTH: 136px"></TD>
											<TD>
												<asp:Calendar id="Calendar3" runat="server" Width="153px" Visible="False" ForeColor="#003399"
													BackColor="White" Height="64px" CellPadding="1" BorderColor="#3366CC" Font-Names="Verdana"
													Font-Size="8pt" DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar3_SelectionChanged">
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
											<TD align="center" colSpan="2">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                                <asp:Button ID="Button1" runat="server" Text="Update" style="font-weight: 700" OnClick="Button1_Click" />
                                                <asp:Button ID="Button2" runat="server" Text="Delete" style="font-weight: 700" OnClick="Button2_Click" />
                                            </TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        
    </tr>
</table>
</asp:Content>


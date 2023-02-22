<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpLoan.aspx.cs" Inherits="emplyee_EmpLoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td style="height: 45px">
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\Loan Section.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD align="center" style="HEIGHT: 2px; font-family: arial; font-size: 12px; background-color: #0099FF;">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
				</tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="710px">
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
        <td>&nbsp;</td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px; font-weight: 700; background-color: #0099FF;">Add Employee Load Details</TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="WIDTH: 136px; font-family: arial; font-size: 12px;">Department</TD>
											<TD>
												<asp:DropDownList id="ddlDepartment" runat="server" Width="138px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DeptName" DataValueField="DeptID" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [DeptID], [DeptName] FROM [Dep]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 136px; font-family: arial; font-size: 12px;">Employee ID</TD>
											<TD>
												<asp:DropDownList id="ddlEmployeeID" runat="server" Width="138px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EmpID" DataValueField="EmpID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [EmpID] FROM [EmpData]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 136px; font-family: arial; font-size: 12px;">Amount</TD>
											<TD>
												<asp:TextBox id="txtAmount" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD class="auto-style1">Issue Date</TD>
											<TD class="auto-style2">
												<asp:TextBox id="txtIssueDate" runat="server" Width="138px"></asp:TextBox>
												<asp:Button id="Button1" runat="server" Width="26px" ForeColor="Black" BackColor="Black" BorderColor="Transparent"
													Height="15px" OnClick="Button1_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 136px">&nbsp;</TD>
											<TD>
												<asp:Calendar id="Calendar1" runat="server" Width="153px" ForeColor="#003399" BackColor="White"
													BorderColor="#3366CC" Height="64px" Visible="False" CellPadding="1" Font-Names="Verdana" Font-Size="8pt"
													DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar1_SelectionChanged">
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
											<TD style="WIDTH: 136px; font-family: arial; font-size: 12px;">Return Date</TD>
											<TD>
												<asp:TextBox id="txtReturnDate" runat="server" Width="138px"></asp:TextBox>
												<asp:Button id="Button2" runat="server" Width="16px" ForeColor="Black" BackColor="Black" BorderColor="Transparent"
													Height="15px" OnClick="Button2_Click"></asp:Button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 136px">&nbsp;</TD>
											<TD>
												<asp:Calendar id="Calendar2" runat="server" Width="153px" ForeColor="#003399" BackColor="White"
													BorderColor="#3366CC" Height="64px" Visible="False" CellPadding="1" Font-Names="Verdana" Font-Size="8pt"
													DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar2_SelectionChanged">
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
											<TD align="center" colSpan="2"><STRONG>
													<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-weight: 700" Text="Update" />
                                                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="font-weight: 700" Text="Delete" />
                                                </STRONG></TD>
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


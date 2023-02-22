<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppJob.aspx.cs" Inherits="AppJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image1" runat="server" ImageUrl="~\pictures\advertise_job.jpg"></asp:Image></td>
        </tr>
        <tr>
            <td><asp:Label id="lblMessage" runat="server" Visible="False" ForeColor="Red" Font-Bold="True"></asp:Label></td>
        </tr>
        <TR class="heading">
								<TD align="center" style="font-size: medium">Jobs Advertised</TD>
							</TR>
							<TR>
								<TD align="center" style="HEIGHT: 40px">
									&nbsp;</TD>
							</TR>
        <TD align="center">
									<P align="center">
										<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                                    </P>
								</TD>
        <TR class="heading">
								<TD align="center" style="font-size: medium">Enter Detail for new Job to Advertise</TD>
							</TR>



        <TR >
								<TD align="center"><asp:Panel id="plAppJob" runat="server"  BorderStyle="Groove" BorderColor="#C1C1C1">
										<P>
											<TABLE id="Table1" "
												border="0">
												<TR>
													<TD style="WIDTH: 85px">Title</TD>
													<TD>
														<asp:TextBox id="txtJobTitle" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator id="rfvJobTitle" runat="server" ControlToValidate="txtJobTitle" Display="Dynamic"
															ErrorMessage="Enter Job Title"></asp:RequiredFieldValidator></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 85px">Description</TD>
													<TD>
														<asp:TextBox id="txtJobDescription" runat="server" TextMode="MultiLine"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 85px">No. of Seats</TD>
													<TD>
														<asp:TextBox id="txtJobvacancies" runat="server"></asp:TextBox>
														<asp:RequiredFieldValidator id="rfvVacanvy" runat="server" ControlToValidate="txtJobvacancies" Display="Dynamic"
															ErrorMessage="Enter the Number of Vacancies"></asp:RequiredFieldValidator></TD>
												</TR>
												<TR>
													<TD style="WIDTH: 85px">Last Date to Apply</TD>
													<TD>
														<asp:TextBox id="txtJobDate" runat="server"></asp:TextBox>
														<asp:Button id="btnDate" runat="server" Width="20px" Font-Bold="True" ForeColor="Black" Height="22px"
															Text="." Font-Size="Medium" OnClick="btnDate_Click1"></asp:Button>
														<asp:Calendar id="Calendar1" runat="server" Width="220px" ForeColor="#003399" Visible="False"
															BackColor="White" BorderColor="#3366CC" Height="200px" Font-Size="8pt" CellPadding="1" Font-Names="Verdana"
															DayNameFormat="FirstLetter" BorderWidth="1px" OnSelectionChanged="Calendar1_SelectionChanged1">
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
													<TD colSpan="2">
														<P align="center">
															<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click1"></asp:Button>
                                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Update" />
                                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Delete" />
                                                        </P>
													</TD>
												</TR>
											</TABLE>
										</P>
									</asp:Panel></TD>
							</TR>



    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppShortList.aspx.cs" Inherits="AppShortList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/pictures\short list applicant for test.jpg" />
            </td>
        </tr>
        <tr>
            <td>
								<DIV align="center">&nbsp;</DIV>
								</td>
        </tr>
        <tr>
            <td style="text-align: center; background-color: #3333CC"><strong><span style="font-size: medium">Select the Job Reference ID and Selection Criteria to Select Applicants for Test</span></strong></td>
        </tr>
        <tr>
            <td>
											<DIV align="center">
												<asp:panel id="plApplicant" runat="server" Width="184px" BorderStyle="Solid" BorderColor="Silver"
													BorderWidth="1px">
													<CENTER><B>Job ID:
															<asp:DropDownList id="ddlJobID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="JobTiitle" DataValueField="JobID"></asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [JobID], [JobTiitle] FROM [Job]"></asp:SqlDataSource>
                                                        </B></CENTER>
													<CENTER>&nbsp;</CENTER>
													<CENTER><B>Degree:</B>
														<asp:DropDownList id="ddlDegree" runat="server" AutoPostBack="True">
															<asp:ListItem Value="Matric">Matric</asp:ListItem>
															<asp:ListItem Value="Intermediate">Intermediate</asp:ListItem>
															<asp:ListItem Value="Bachelor">Bachelor</asp:ListItem>
															<asp:ListItem Value="Masters">Masters</asp:ListItem>
															<asp:ListItem Value="MS /M Phil">MS /M Phil</asp:ListItem>
															<asp:ListItem Value="Ph.D">Ph.D</asp:ListItem>
														</asp:DropDownList></CENTER>
													<CENTER>&nbsp;</CENTER>
													<CENTER><B>Division:</B>
														<asp:DropDownList id="ddlDivision1" runat="server" AutoPostBack="True">
															<asp:ListItem Value="First">First</asp:ListItem>
															<asp:ListItem Value="Second">Second</asp:ListItem>
															<asp:ListItem Value="Third">Third</asp:ListItem>
														</asp:DropDownList></CENTER>
													<CENTER>&nbsp;</CENTER>
													<CENTER><B>Or:</B></CENTER>
													<CENTER><STRONG></STRONG>&nbsp;</CENTER>
													<CENTER>&nbsp;
														<asp:DropDownList id="ddlDivision2" runat="server">
															<asp:ListItem Value="First">First</asp:ListItem>
															<asp:ListItem Value="Second">Second</asp:ListItem>
															<asp:ListItem Value="Third">Third</asp:ListItem>
														</asp:DropDownList></CENTER>
													<P align="center">
														<asp:button id="btnSubmit" onclick="SelectApplicant" runat="server" Font-Bold="True" Text="Select"></asp:button></P>
												</asp:panel></DIV>
										</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table id="Table5" border="0" cellpadding="1" cellspacing="0" height="100" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid" width="1207">
                    <tr class="heading">
                        <td align="center" height="1">Now Click SELECT to opt for applicant</td>
                    </tr>
                    <tr>
                        <td height="6" valign="middle">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="589px">
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
                </table>
            </td>
        </tr>
        <tr>
            <td style="height: 17px"></td>
        </tr>
        <tr>
            <td>
								<DIV align="center">
									<TABLE id="Table7" cellSpacing="0" cellPadding="1" width="100%" border="0" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid">
										<TR>
											<TD align="center" class="heading">Now Click SHORT LIST to Shortlist Specific 
												Applicant</TD>
										</TR>
										<TR>
											<TD align="center">
												<asp:Label id="lblMessage" runat="server" Visible="False" ForeColor="Red"></asp:Label></TD>
										</TR>
										<TR>
											<TD>
												<TABLE id="Table2" cellSpacing="0" cellPadding="1" align="center" border="0" style="height: 249px; width: 303px">
													<TR>
														<TD>
															<asp:Label id="Label8" runat="server" Visible="False">Applicant ID</asp:Label></TD>
														<TD>
															<DIV align="left">
																<asp:Label id="lblBCValues" runat="server" Font-Bold="True" Visible="False"></asp:Label></DIV>
														</TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label10" runat="server" Visible="False">First Name</asp:Label></TD>
														<TD>
															<DIV align="left">
																<asp:Label id="lblFNameSR" runat="server" Font-Bold="True" Visible="False" style="text-align: center"></asp:Label></DIV>
														</TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label11" runat="server" Visible="False">Middle Name</asp:Label></TD>
														<TD align="left">
															<asp:Label id="lblMNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label12" runat="server" Visible="False">Last Name</asp:Label></TD>
														<TD>
															<asp:Label id="lblLNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label13" runat="server" Visible="False">Home Phone</asp:Label></TD>
														<TD>
															<asp:Label id="lblHPhoneSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label1" runat="server" Visible="False">Cell Phone</asp:Label></TD>
														<TD>
															<asp:Label id="lblCellSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label14" runat="server" Visible="False">NIC Number</asp:Label></TD>
														<TD>
															<asp:Label id="lblNICSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label15" runat="server" Visible="False">E-mail ID</asp:Label></TD>
														<TD>
															<asp:Label id="lblEmailSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></TD>
													</TR>
													<TR>
														<TD>
															<asp:Label id="Label9" runat="server" Visible="False">Degree</asp:Label></TD>
														<TD>
															<DIV align="left">
																<asp:Label id="lbl2" runat="server" Font-Bold="True" Visible="False"></asp:Label></DIV>
														</TD>
													</TR>
													<TR>
														<TD align="center" colSpan="2">
															<asp:Button id="btnShortList" runat="server" Font-Bold="True" Text="Short List" Visible="False" OnClick="btnShortList_Click1"></asp:Button></TD>
													</TR>
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</DIV>
								</td>
        </tr>
        <tr> <td><DIV align="center">
									<asp:Label id="lblDate" runat="server" Width="282px" Visible="False"></asp:Label>
								</DIV></td></tr>
    </table>
</asp:Content>


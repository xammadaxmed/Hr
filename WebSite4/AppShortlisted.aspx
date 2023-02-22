<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppShortlisted.aspx.cs" Inherits="AppShortlisted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\sending email to shortlisted appliacants.jpg"></asp:Image></td>
        </tr>
        <tr>
            <td style="text-align: center; font-weight: 700; background-color: #6666FF">Select the Date on which Applicants were Short Listed</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="ddlDate" runat="server" AutoPostBack="True" Width="84px" OnSelectedIndexChanged="ddlDate_SelectedIndexChanged">
                    <asp:ListItem Value="Selected Item"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
						<TABLE id="Table4" cellSpacing="0" cellPadding="1" width="100%" border="0" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid">
							<TR class="heading">
								<TD align="center">Click on <STRONG>Select</STRONG> to Send E-mail&nbsp;to 
									Applicant for Interview Schedule&nbsp;</TD>
							</TR>
							<TR>
								<TD align="center">
									<asp:GridView ID="dbgMyGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dbgMyGrid_SelectedIndexChanged1" Width="553px">
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
                                </TD>
							</TR>
						</TABLE>
					</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
						<TABLE id="Table5" cellSpacing="1" cellPadding="1" width="100%" border="0" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid">
							<TR class="heading">
								<TD align="center">Select the Status of Applicant for Interview</TD>
							</TR>
							<TR>
								<TD align="center">
									<TABLE id="Table6" cellSpacing="0" cellPadding="1" width="300" align="center" border="0">
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
													<asp:Label id="lblFNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label></DIV>
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
											<TD style="HEIGHT: 17px">
												<asp:Label id="Label15" runat="server" Visible="False">E-mail ID</asp:Label></TD>
											<TD style="HEIGHT: 17px">
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
											<TD align="center" colSpan="2"></TD>
										</TR>
									</TABLE>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD>From</TD>
											<TD>
												<asp:Label id="lblEmailFrom" runat="server">tosifabbas321@gmail.com</asp:Label></TD>
										</TR>
										<TR>
											<TD>To</TD>
											<TD>
												<asp:Label id="lblEmailTo" runat="server" Width="138px"></asp:Label></TD>
										</TR>
										<TR>
											<TD>Subject</TD>
											<TD>
												<asp:TextBox id="txtEmailSubject" runat="server" Width="200px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD>Message</TD>
											<TD>
												<asp:TextBox id="txtEmailMessage" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD align="center">
												<asp:RadioButtonList id="rblSelection" runat="server">
													<asp:ListItem Value="Selected">Selected</asp:ListItem>
													<asp:ListItem Value="Rejected">Rejected</asp:ListItem>
												</asp:RadioButtonList></TD>
										</TR>
										<TR>
											<TD></TD>
											<TD align="center">
												<asp:Label id="lblStatus" runat="server" Font-Bold="True" Visible="False" ForeColor="Red"></asp:Label></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
						</TABLE>
					</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Send" OnClick="btnSubmit_Click1" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNewMessage" runat="server" Text="New Message" />
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="addqual.aspx.cs" Inherits="addqual" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Label id="lblTestMessage" runat="server" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td class="heading">
                <asp:Label ID="lblQualificationdbg" runat="server" Font-Bold="True" Width="100%">Your Experience</asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Width="460px">
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
            <td style="height: 12px"><asp:Label id="lblAppQualification" runat="server" Font-Bold="True" Font-Size="Larger" Width="100%">Enter Your Qualification</asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
									<asp:Panel id="plAppQualification" runat="server" Width="535px" Height="356px" HorizontalAlign="Center"
										BorderStyle="Solid">
										<P>&nbsp;</P>
										<P>
											<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0">
												<TR>
													<TD style="HEIGHT: 14px">Degree</TD>
													<TD style="HEIGHT: 14px">
														<asp:DropDownList id="ddlAppDegree" runat="server" Width="136px">
															<asp:ListItem Value="Matric">Matric</asp:ListItem>
															<asp:ListItem Value="Intermediate">Intermediate</asp:ListItem>
															<asp:ListItem Value="Bachelor">Bachelor</asp:ListItem>
															<asp:ListItem Value="Masters">Masters</asp:ListItem>
															<asp:ListItem Value="MS /M Phil">MS /M Phil</asp:ListItem>
															<asp:ListItem Value="Ph.D">Ph.D</asp:ListItem>
														</asp:DropDownList></TD>
												</TR>
												<TR>
													<TD>University</TD>
													<TD>
														<asp:TextBox id="txtAppUniversity" runat="server" Width="138px"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD>Major</TD>
													<TD>
														<asp:TextBox id="txtAppMajor" runat="server" Width="138px"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD>Completed In</TD>
													<TD>
														<asp:TextBox id="txtAppCompletedIn" runat="server" Width="69px"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD style="HEIGHT: 4px"></TD>
													<TD style="HEIGHT: 4px">
														<asp:RegularExpressionValidator id="revAppCompletedIn" runat="server" ValidationExpression="\d{4}" ErrorMessage="Enter Correct Date(i.e yyyy)"
															Display="Dynamic" ControlToValidate="txtAppCompletedIn"></asp:RegularExpressionValidator></TD>
												</TR>
												<TR>
													<TD>Division</TD>
													<TD>
														<asp:DropDownList id="ddlAppDivision" runat="server" Width="69px">
															<asp:ListItem Value="First">First</asp:ListItem>
															<asp:ListItem Value="Second">Second</asp:ListItem>
															<asp:ListItem Value="Third">Third</asp:ListItem>
														</asp:DropDownList></TD>
												</TR>
												<TR>
													<TD colSpan="2">
														<P align="center">
															<asp:RequiredFieldValidator id="rfvAppUniversity" runat="server" ErrorMessage="Enter University Name" Display="Dynamic"
																ControlToValidate="txtAppUniversity"></asp:RequiredFieldValidator></P>
														<P align="center">
															<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Main Subject Name(s)"
																Display="Dynamic" ControlToValidate="txtAppMajor"></asp:RequiredFieldValidator></P>
													</TD>
												</TR>
											</TABLE>
										</P>
										<P>
											<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Update" />
                                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Delete " />
                                        </P>
									</asp:Panel></td>
        </tr>
    </table>
</asp:Content>


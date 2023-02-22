<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppExperience.aspx.cs" Inherits="AppExperience" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image1" runat="server" ImageUrl="~\pictures\personal_experience_add.bmp"
							Width="944px"></asp:Image></td>
        </tr>
        <TR>
					
					<TD style="WIDTH: 310px; HEIGHT: 3px">
						<asp:label id="lblTestMessage" runat="server" Font-Bold="True" Width="192px"></asp:label></TD>
				</TR>
        <TR>
					
					<TD style="WIDTH: 310px; HEIGHT: 3px">
						<asp:Label id="lblMessage2" runat="server" ForeColor="Red"></asp:Label></TD>
				</TR>
        <TR>
					
					<td><asp:label id="lblExperience" runat="server" Font-Bold="True">Your Experience</asp:label></td>
				</TR>
        <TR>
					
					<td>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="437px">
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
				</TR>
        <TR>
					
					<td><asp:label id="lblMessage" runat="server" ForeColor="Red"></asp:label></td>
				</TR>
        <tr>
            <td>
										<TABLE id="Table2" style="WIDTH: 435px; HEIGHT: 285px" cellSpacing="1" cellPadding="1" border="0">
											<TR>
												<TD width="90">Job Title</TD>
												<TD width="255">
													<P>
														<asp:textbox id="txtJobTitle" runat="server"></asp:textbox>
														<asp:RequiredFieldValidator id="rfvAppJobTitle" runat="server" ControlToValidate="txtJobTitle" Display="Dynamic"
															ErrorMessage="Enter Job Title"></asp:RequiredFieldValidator></P>
												</TD>
											</TR>
											<TR>
												<TD>From</TD>
												<TD>
													<asp:textbox id="txtAppFrom" runat="server"></asp:textbox>
													<asp:RequiredFieldValidator id="rfvAppFrom" runat="server" ControlToValidate="txtAppFrom" Display="Dynamic"
														ErrorMessage="Enter the Starting Year"></asp:RequiredFieldValidator></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD>
													<asp:RegularExpressionValidator id="revAppFrom" runat="server" ControlToValidate="txtAppFrom" Display="Dynamic"
														ErrorMessage="Enter Correct Year (i.e yyyy)" ValidationExpression="\d{4}"></asp:RegularExpressionValidator></TD>
											</TR>
											<TR>
												<TD>To</TD>
												<TD>
													<asp:textbox id="txtAppTo" runat="server"></asp:textbox>
													<asp:RequiredFieldValidator id="rfvAppTo" runat="server" ControlToValidate="txtAppTo" Display="Dynamic" ErrorMessage="Enter Ending Year"></asp:RequiredFieldValidator></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD>
													<asp:RegularExpressionValidator id="revAppTo" runat="server" ControlToValidate="txtAppTo" Display="Dynamic" ErrorMessage="Enter Correct Year (i.e yyyy)"
														ValidationExpression="\d{4}"></asp:RegularExpressionValidator></TD>
											</TR>
											<TR>
												<TD>Contract No</TD>
												<TD>
													<asp:textbox id="txtAppContract" runat="server"></asp:textbox></TD>
											</TR>
											<TR>
												<TD>Organization</TD>
												<TD>
													<asp:textbox id="txtAppOrg" runat="server"></asp:textbox>
													<asp:requiredfieldvalidator id="rfvAppOrg" runat="server" ControlToValidate="txtAppOrg" Display="Dynamic" ErrorMessage="Enter the Organization"></asp:requiredfieldvalidator></TD>
											</TR>
											<TR>
												<TD>Responsibilities</TD>
												<TD>
													<asp:TextBox id="txtAppResp" runat="server"></asp:TextBox>
													<asp:RequiredFieldValidator id="rfvAppRespon" runat="server" ControlToValidate="txtAppResp" Display="Dynamic"
														ErrorMessage="Enter Your Responsibilities"></asp:RequiredFieldValidator></TD>
											</TR>
											<TR>
												<TD align="center" colSpan="2">
													<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" Update" />
                                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete " />
                                                </TD>
											</TR>
										</TABLE>
									</td>
        </tr>
    </table>
</asp:Content>


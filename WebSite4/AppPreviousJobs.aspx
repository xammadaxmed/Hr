<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppPreviousJobs.aspx.cs" Inherits="AppPreviousJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <TR>
					
					<TD style="HEIGHT: 2px" colSpan="2">
						<asp:Image id="Image3" runat="server" ImageUrl="~\pictures\previous_announced_jobs.jpg"></asp:Image></TD>
				</TR>
       <TR class="heading">
								<TD align="center">List of Jobs Previously Announced</TD>
							</TR>
     <TR align="center">
								<TD align="center">
									<TABLE id="Table3" style="WIDTH: 585px; HEIGHT: 46px"  width="585"
										border="0">
										<TR>
											<TD align="center"><STRONG>
													<asp:Label id="lblJobID" runat="server">Job ID</asp:Label></STRONG></TD>
											<TD align="center"><STRONG>
													<asp:Label id="lblJobTitle" runat="server">Job Title</asp:Label></STRONG></TD>
											<TD style="WIDTH: 305px" align="center"><STRONG>
													<asp:Label id="lblDescription" runat="server">Description</asp:Label></STRONG></TD>
											<TD align="center"><STRONG>
													<asp:Label id="lblVacancies" runat="server">Vacancies</asp:Label></STRONG></TD>
											<TD align="center"><STRONG>
													<asp:Label id="lblLastDate" runat="server">Last Date</asp:Label></STRONG></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
        <TR align="center">
								<TD align="center">
									<asp:DataGrid id="dbgMyGrid" runat="server" Width="618px" ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingItemStyle BackColor="White" />
                                        <EditItemStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <ItemStyle BackColor="#EFF3FB" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    </asp:DataGrid></TD>
							</TR>
    </table>
</asp:Content>


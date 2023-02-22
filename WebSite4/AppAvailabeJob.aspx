﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AppAvailabeJob.aspx.cs" Inherits="AppAvailabeJobs" %>

<!DOCTYPE html>

<HTML>
	<HEAD>
		<title>AppAvailabeJobs</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="styles.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .auto-style1
            {
                font-size: medium;
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE id="Table1" style="Z-INDEX: 101; LEFT: 0px; WIDTH: 944px; POSITION: absolute; TOP: 0px; HEIGHT: 456px"
				cellSpacing="1" cellPadding="1" width="944" border="0">
				<TR>
					<TD style="HEIGHT: 101px" colSpan="3"><asp:image id="Image2" runat="server" Width="100%" ImageUrl="~\pictures\bannerfinal.jpg"></asp:image></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 5px; HEIGHT: 29px" align="left" class="sidebar"></TD>
					<TD style="WIDTH: 274px; HEIGHT: 29px" colSpan="3"><asp:image id="Image1" runat="server" ImageUrl="~\pictures\available_jobs.jpg"></asp:image></TD>
				</TR>
				<TR>
					<TD style="WIDTH: 5px; HEIGHT: 60px" align="center" vAlign="top" class="sidebar">
						<asp:HyperLink id="HLPanelHome" runat="server" ImageUrl="~\pictures\HOME.jpg"
							ForeColor="Black" Font-Bold="True" NavigateUrl="Home.aspx">HOME</asp:HyperLink></TD>
					<TD style="HEIGHT: 60px" align="center" colSpan="2">
						<TABLE id="Table2" style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; BORDER-BOTTOM: #c0c0c0 1px solid"
							cellSpacing="1" cellPadding="1" width="100%" align="center" border="0">
							<TR class="heading">
								<TD align="center" bgColor="#0099cc" class="auto-style1"><STRONG><FONT>List of Available Jobs</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD align="center">
									&nbsp;</TD>
							</TR>
							<TR>
								<TD align="center">
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="711px" >
                                        <AlternatingRowStyle BackColor="White" />
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
					</TD>
				</TR>
				<TR>
					<TD style="WIDTH: 5px; HEIGHT: 27px" align="left" class="sidebar"></TD>
					<TD style="HEIGHT: 27px" align="left" colSpan="2"><asp:image id="Image5" runat="server" Width="100%" ImageUrl="~\pictures\botton1 copy.jpg"></asp:image></TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

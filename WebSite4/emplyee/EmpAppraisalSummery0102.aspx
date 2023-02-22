<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisalSummery0102.aspx.cs" Inherits="emplyee_EmpAppraisalSummery0102" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal form a+b summary.jpg"
							Width="992px" Height="40px"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 15px; font-family: arial; font-size: 12px; background-color: #00CCFF;" colSpan="4" align="center">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
				</tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
						<TABLE id="Table5" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid">
							<TR>
								<TD colSpan="3" align="center" style="font-family: arial; font-size: 12px; font-weight: 700; background-color: #0099FF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									Summary&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</TD>
							</TR>
							<TR>
								<TD align="center">
									<TABLE id="Table3" style="WIDTH: 560px; HEIGHT: 94px" cellSpacing="1" cellPadding="1" width="560"
										border="0">
										<TR>
											<TD align="center"><STRONG>Performane Score</STRONG></TD>
											<TD align="center"><STRONG>Outstanding</STRONG></TD>
											<TD align="center"><STRONG>Very Good</STRONG></TD>
											<TD align="center"><STRONG>Good</STRONG></TD>
											<TD align="center"><STRONG>Average</STRONG></TD>
											<TD align="center"><STRONG>Below Average</STRONG></TD>
										</TR>
										<TR>
											<TD align="center"><STRONG>( a + b )</STRONG></TD>
											<TD align="center">
												<asp:Label id="lblOutstanding" runat="server" Width="138px" Font-Bold="True">Label</asp:Label></TD>
											<TD align="center">
												<asp:Label id="lblVeryGood" runat="server" Width="138px" Font-Bold="True">Label</asp:Label></TD>
											<TD align="center">
												<asp:Label id="lblGood" runat="server" Width="138px" Font-Bold="True">Label</asp:Label></TD>
											<TD align="center">
												<asp:Label id="lblAverage" runat="server" Width="138px" Font-Bold="True">Label</asp:Label></TD>
											<TD align="center">
												<asp:Label id="lblBelowAverage" runat="server" Width="138px" Font-Bold="True">Label</asp:Label></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="6">
												<asp:Label id="lblSum" runat="server" Font-Bold="True"></asp:Label></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="6">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>&nbsp;</TD>
										</TR>
									</TABLE>
									<asp:Label id="lblDate" runat="server" Visible="False"></asp:Label>
								</TD>
								<TD align="center">
									<TABLE id="Table2" style="WIDTH: 167px; HEIGHT: 171px" cellSpacing="1" cellPadding="1"
										width="167" border="0">
										<TR>
											<TD><STRONG>Maximum Score</STRONG></TD>
											<TD><STRONG>50</STRONG></TD>
										</TR>
										<TR>
											<TD colSpan="2"><STRONG>Performance Score</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG><FONT color="#00cc00">OutStanding</FONT></STRONG></TD>
											<TD><STRONG>&gt;=45</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG><FONT color="#009999">Very Good</FONT></STRONG></TD>
											<TD><STRONG>&gt;=35</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG><FONT color="#666699">Good</FONT></STRONG></TD>
											<TD><STRONG>&gt;=30</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG><FONT color="#ff6633">Average</FONT></STRONG></TD>
											<TD><STRONG>&gt;=25</STRONG></TD>
										</TR>
										<TR>
											<TD><STRONG><FONT color="#ff0033">Below Average</FONT></STRONG></TD>
											<TD><STRONG>&lt;25</STRONG></TD>
										</TR>
									</TABLE>
								</TD>
								<TD align="center">
								</TD>
							</TR>
						</TABLE>
					</td>
    </tr>
    <tr>
        <td>
						<asp:HyperLink id="HlStep5" runat="server" Font-Bold="True" Width="126px" NavigateUrl="EmpAppraisal03.aspx"
							ImageUrl="~/pictures\step5button.jpg">STEP : 5</asp:HyperLink></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


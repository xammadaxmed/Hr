<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEEVIEW/emp.master" AutoEventWireup="true" CodeFile="emphome.aspx.cs" Inherits="EMPLOYEEVIEW_emphome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<TABLE id="Table2" style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; WIDTH: 744px; BORDER-BOTTOM: #c0c0c0 1px solid; HEIGHT: 577px"
							cellSpacing="0" cellPadding="0" width="744" border="0">
							<TR class="heading">
								<TD colSpan="6" style="HEIGHT: 23px"><STRONG><FONT color="#000000" style="text-align: center">Personal Information---</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 31px"></TD>
								<TD style="WIDTH: 138px; HEIGHT: 31px; font-family: arial; font-size: 12px;"><b>Employee ID</b></TD>
								<TD align="left" style="HEIGHT: 31px"><asp:label id="lblEmpID" runat="server" ForeColor="DarkGoldenrod" style="color: #FF3300"></asp:label></TD>
								<TD style="WIDTH: 113px; HEIGHT: 31px; font-family: arial; font-size: 12px;"><b>Mailing Address</b></TD>
								<TD style="HEIGHT: 31px"><asp:label id="lblEmpMailingAddress" runat="server" Width="142px" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="HEIGHT: 31px"></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 33px"></TD>
								<TD style="WIDTH: 138px; HEIGHT: 33px; font-family: arial; font-size: 12px;"><b>Name</b></TD>
								<TD style="HEIGHT: 33px"><asp:label id="lblEmpFName" runat="server" ForeColor="DarkGoldenrod"></asp:label>&nbsp;<asp:label id="lblEmpMName" runat="server" ForeColor="DarkGoldenrod"></asp:label>&nbsp;<asp:label id="lblEmpLName" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; HEIGHT: 33px; font-family: arial; font-size: 12px;"><b>Postal Code</b></TD>
								<TD style="HEIGHT: 33px"><asp:label id="lblEmpPostalCode" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="HEIGHT: 33px"><asp:label id="lblEmpImage" runat="server" Height="28px"></asp:label></TD>
							</TR>
							<TR>
								<TD style="HEIGHT: 38px"></TD>
								<TD style="WIDTH: 138px; HEIGHT: 38px; font-family: arial; font-size: 12px;"><b>E-mail Address</b></TD>
								<TD style="HEIGHT: 38px"><asp:label id="lblEmpEmailAddress" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; HEIGHT: 39px; font-family: arial; font-size: 12px;"><b>City</b></TD>
								<TD style="HEIGHT: 39px"><asp:label id="lblEmpCity" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="HEIGHT: 39px"></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Gender</b></TD>
								<TD><asp:label id="lblEmpGender" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-family: arial; font-size: 12px;"><b>Province</b></TD>
								<TD><asp:label id="lblEmpProvince" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Phone</b></TD>
								<TD><asp:label id="lblEmpResPhone" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-family: arial; font-size: 12px;"><b>Country</b></TD>
								<TD><asp:label id="lblEmpCountry" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR class="heading">
								<TD colSpan="6" style="HEIGHT: 23px"><STRONG><FONT color="#000000">Profile---</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>NIC No.</b></TD>
								<TD><asp:label id="lblNICNo" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-family: arial; font-size: 12px; font-weight: 700;">Job Status</TD>
								<TD><asp:label id="lblEmpJobStatus" runat="server"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Passport No</b></TD>
								<TD><asp:label id="lblEmpPassportNo" runat="server"></asp:label></TD>
								<TD style="WIDTH: 113px">&nbsp;</TD>
								<TD></TD>
								<TD></TD>
							</TR>
							<TR class="heading">
								<TD colSpan="6" style="HEIGHT: 23px"><STRONG><FONT color="#000000">Particulars---</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px; font-weight: 700;">Position</TD>
								<TD><asp:label id="lblEmpPosition" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-weight: 700;">Department</TD>
								<TD><asp:label id="lblEmpDepartment" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR class="heading">
								<TD colSpan="6" style="HEIGHT: 23px"><STRONG><FONT color="#000000">Mile Stones---</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Joining Date</b></TD>
								<TD><asp:label id="lblEmpJoiningDate" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-family: arial; font-size: 12px;"><b>Regularization Date</b></TD>
								<TD><asp:label id="lblEmpRegularizationDate" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Contract Start</b></TD>
								<TD><asp:label id="lblEmpContractStart" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px; font-family: arial; font-size: 12px;"><b>Contract End</b></TD>
								<TD><asp:label id="lblEmpContractEnd" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD></TD>
							</TR>
							<TR>
								<TD></TD>
								<TD style="WIDTH: 138px; font-family: arial; font-size: 12px;"><b>Due Date Of Next Increment</b></TD>
								<TD><asp:label id="lblEmpNextIncrement" runat="server" ForeColor="DarkGoldenrod"></asp:label></TD>
								<TD style="WIDTH: 113px"></TD>
								<TD></TD>
								<TD></TD>
							</TR>
						</TABLE>
					</td>
    </tr>
</table>
</asp:Content>


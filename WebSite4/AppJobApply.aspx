<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppJobApply.aspx.cs" Inherits="AppJobApply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image3" runat="server" ImageUrl="~\pictures\select_job_apply.jpg"></asp:Image></td>
        </tr>
        <tr>
            <TD align="center" class="heading" style="HEIGHT: 7px">
						<asp:Label id="lblDatagridResult" runat="server" Font-Bold="True">Job Refeerence Number</asp:Label></TD
        </tr>
        <tr><TD align="center" colSpan="2"><div align="center"><STRONG>You have already applied for the 
								jobs mentioned below:</STRONG></div>
					</TD></tr>
        <tr><TD align="center" >
						<asp:DataGrid id="dbgMyGrid" runat="server" ForeColor="#000099" BackColor="#FFCC66" HorizontalAlign="Center">
							<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="#FF99FF" BackColor="#009999"></HeaderStyle>
						</asp:DataGrid></TD></tr>
        <TR>
					
					<TD colSpan="2" align="center" class="heading" style="HEIGHT: 14px">Select a Job, 
						you want to apply for</TD>
				</TR>
        <TR>
					
					<TD style="HEIGHT: 14px" align="center" colSpan="2">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></TD>
				</TR>
        <TR>
					
					<TD align="center" colSpan="2" style="HEIGHT: 203px">
						<P>
							<asp:DropDownList id="ddlJobID" runat="server" Width="138px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="JobTiitle" DataValueField="JobID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [JobID], [JobTiitle] FROM [Job]"></asp:SqlDataSource>
                        </P>
						<P>
							<asp:Button id="btnSubmit" runat="server" Text="Apply »" Font-Bold="True" OnClick="btnSubmit_Click"></asp:Button></P>
					</TD>
				</TR>
    </table>
</asp:Content>


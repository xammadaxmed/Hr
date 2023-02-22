<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppEmail.aspx.cs" Inherits="AppEmail" %>




<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image2" runat="server" ImageUrl="~\pictures\send_email.jpg" Width="100%"></asp:Image></td>
        </tr>
        <tr>
            <td><TABLE id="Table3" cellSpacing="1" cellPadding="1" width="626" border="0" height="234"
														align="center">
														<TR>
															<TD>
																<P align="left"><STRONG>From:</STRONG></P>
															</TD>
															<TD>
																<asp:Label id="labelFrom" runat="server">aamrakhalid55@gmail.com</asp:Label></TD>
														</TR>
														<TR>
															<TD height="15">
																<P align="left"><STRONG>To</STRONG>:&nbsp;</P>
															</TD>
															<TD height="15">
																<asp:TextBox id="textTo" runat="server" Width="262px"></asp:TextBox>
																<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="You must enter a recipient!"
																	ControlToValidate="textTo"></asp:RequiredFieldValidator>
																<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email address!"
																	ControlToValidate="textTo" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></TD>
														</TR>
														<TR>
															<TD align="center" colSpan="2"></TD>
														</TR>
														<TR>
															<TD align="center" colSpan="2"></TD>
														</TR>
														<TR>
															<TD>
																<P align="left"><STRONG>Subject:</STRONG></P>
															</TD>
															<TD>
																<asp:TextBox id="textSubject" runat="server" Width="398px"></asp:TextBox></TD>
														</TR>
														<TR>
															<TD><STRONG>Message:</STRONG></TD>
															<TD>
																<asp:TextBox id="textMessage" runat="server" Width="419px" Height="60px" TextMode="MultiLine"></asp:TextBox></TD>
														</TR>
														<TR>
															<TD align="center" colSpan="2">
																<P>
																	<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="You must enter a message!"
																		ControlToValidate="textMessage"></asp:RequiredFieldValidator></P>
															</TD>
														</TR>
														<TR>
															<TD align="center" colSpan="2">
																<asp:Button id="buttonSend"  runat="server" Text="Send" OnClick="buttonSend_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																<asp:Button id="buttonNewMessage"  runat="server" Text="New Message"></asp:Button></TD>
														</TR>
													</TABLE></td>
        </tr>
    </table>
    
</asp:Content>






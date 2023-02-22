<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppForInterview.aspx.cs" Inherits="AppForInterview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~\pictures\sending email for interview.jpg"></asp:Image></td>
        </tr>
        <tr>
            <td>C<strong><span style="font-size: small">lick SHORTLIST to send E-mail to an Applicant for Interview call</span></strong></td>
        </tr>
        <tr>
            <td style="height: 139px">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="751px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField HeaderText="ShortListed" SelectText="ShortListed" ShowSelectButton="True" />
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
            <td style="font-size: small"><strong>Enter Your Message and Select the Status</strong></td>
        </tr>
        <tr>
            <td>
                <table id="Table6" align="center" border="0" cellpadding="1" cellspacing="0" width="300">
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Visible="False">Applicant ID</asp:Label>
                        </td>
                        <td>
                            <div align="left">
                                <asp:Label ID="lblBCValues" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Visible="False">First Name</asp:Label>
                        </td>
                        <td>
                            <div align="left">
                                <asp:Label ID="lblFNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Visible="False">Middle Name</asp:Label>
                        </td>
                        <td align="left">
                            <asp:Label ID="lblMNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Visible="False">Last Name</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblLNameSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Visible="False">Home Phone</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblHPhoneSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Visible="False">Cell Phone</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCellSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Visible="False">NIC Number</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblNICSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="HEIGHT: 17px">
                            <asp:Label ID="Label15" runat="server" Visible="False">E-mail ID</asp:Label>
                        </td>
                        <td style="HEIGHT: 17px">
                            <asp:Label ID="lblEmailSR" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Visible="False">Degree</asp:Label>
                        </td>
                        <td>
                            <div align="left">
                                <asp:Label ID="lbl2" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2"></td>
                    </tr>
                </table>
                <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" width="300">
                    <tr>
                        <td>From</td>
                        <td>
                            <asp:Label ID="lblEmailFrom" runat="server">tosifabbas321@gmail.com</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>To</td>
                        <td>
                            <asp:Label ID="lblEmailTo" runat="server" Width="138px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Subject</td>
                        <td>
                            <asp:TextBox ID="txtEmailSubject" runat="server" style="text-align: center" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Message</td>
                        <td>
                            <asp:TextBox ID="txtEmailMessage" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center">
                            <asp:Label ID="lblStatus" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td align="center">
                            <asp:RadioButtonList ID="rblSelection" runat="server" Height="36px" Width="112px">
                                <asp:ListItem Value="Interview">Interview</asp:ListItem>
                                <asp:ListItem Value="NoInterview">No Interview</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td align="center">
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" OnClick="btnSubmit_Click" Text="Send" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnNewMessage" runat="server" Text="New Message" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


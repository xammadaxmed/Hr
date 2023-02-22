<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppTraining.aspx.cs" Inherits="AppTraining" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" style="width: 100%">
    <tr>
        <td>
						<asp:Image id="Image4" runat="server" ImageUrl="~/pictures\training_details_add.bmp"></asp:Image></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblTestMessage" runat="server" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbldbgTraining" runat="server" CssClass="heading" Font-Bold="True" Width="99%">Your Training Details</asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: right" Width="532px">
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
        <td>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblAppTraining" runat="server" CssClass="heading" Font-Bold="True" Font-Size="Larger" Width="100%"> Your Training Information</asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" width="300">
                <tr>
                    <td>Topic Subject</td>
                    <td>
                        <asp:TextBox ID="txtAppTopic" runat="server" Width="138px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAppTopic" runat="server" ControlToValidate="txtAppTopic" Display="Dynamic" ErrorMessage="Enter the Topic/ Subject"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Institute</td>
                    <td>
                        <asp:TextBox ID="txtAppInstitute" runat="server" Width="138px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAppInstitute" runat="server" ControlToValidate="txtAppInstitute" Display="Dynamic" ErrorMessage="Enter Institute Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Year&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtAppYear" runat="server" Width="138px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAppYear" runat="server" ControlToValidate="txtAppYear" Display="Dynamic" ErrorMessage="Enter The Year of Training"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RegularExpressionValidator ID="revAppYear" runat="server" ControlToValidate="txtAppYear" Display="Dynamic" ErrorMessage="Enter Correct Year (i.e yyyy)" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description&nbsp;&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtAppDescription" runat="server" TextMode="MultiLine" Width="138px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvAppDescription" runat="server" ControlToValidate="txtAppDescription" Display="Dynamic" ErrorMessage="Enter the Descriotion of Training"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
											<asp:Button id="btnAppTraining" runat="server" Font-Bold="True" Text="Submit" OnClick="btnAppTraining_Click"></asp:Button>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpData.aspx.cs" Inherits="emplyee_EmpData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    e<table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\employee personal information.jpg"></asp:Image></td>
        </tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; background-color: #0066FF;">&nbsp;</TD>
							</tr>
        <tr>
								<TD align="center" >
                                    &nbsp;</TD>
							</tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; background-color: #0066FF;"><strong>Add Employee Personal Details</strong></TD>
							</tr>
        <tr>
            <td>
                <table id="Table2" align="center" border="0" cellpadding="1" cellspacing="1" style="WIDTH: 441px; HEIGHT: 705px" width="441">
                    <tr>
                        <td align="center" class="heading" colspan="3">
                            <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr class="heading">
                        <td colspan="3" style="text-align: center"><strong><font color="#000000">Personal Information---</font></strong></td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">First Name</td>
                        <td>
                            <asp:TextBox ID="txtEmpFName" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; height: 23px;"></td>
                        <td class="menu" style="WIDTH: 123px; height: 23px;">Middle Name</td>
                        <td style="HEIGHT: 23px">
                            <asp:TextBox ID="txtEmpMName" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; "></td>
                        <td class="menu" style="WIDTH: 123px; ">Last Name</td>
                        <td>
                            <asp:TextBox ID="txtEmpLName" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="heading">
                        <td colspan="3"><strong><font color="#000000">Contact Information---</font></strong></td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">Mailing Address</td>
                        <td>
                            <asp:TextBox ID="txtEmpMailingAddress" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; "></td>
                        <td class="menu" style="WIDTH: 123px; ">City</td>
                        <td>
                            <asp:TextBox ID="txtEmpCity" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; height: 26px;"></td>
                        <td style="WIDTH: 123px; height: 26px;">Province</td>
                        <td style="HEIGHT: 26px">
                            <asp:TextBox ID="txtEmpProvince" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; HEIGHT: 11px"></td>
                        <td style="WIDTH: 123px; HEIGHT: 11px">Country</td>
                        <td style="HEIGHT: 11px">
                            <asp:DropDownList ID="ddlEmpCountry" runat="server" Width="138px">
                                <asp:ListItem Value="Select Country">&lt;Select Country&gt;</asp:ListItem>
                                <asp:ListItem Value="Afghanistan">Afghanistan</asp:ListItem>
                                <asp:ListItem Value="Bahrain">Bahrain</asp:ListItem>
                                <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                                <asp:ListItem Value="India">India</asp:ListItem>
                                <asp:ListItem Value="Kuwait">Kuwait</asp:ListItem>
                                <asp:ListItem Value="Qatar">Qatar</asp:ListItem>
                                <asp:ListItem Value="United States of America">United States of America</asp:ListItem>
                                <asp:ListItem Value="United Kingdom">United Kingdom</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; "></td>
                        <td class="menu" style="WIDTH: 123px; ">Res. Phone</td>
                        <td>
                            <asp:TextBox ID="txtEmpResPhone" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td style="WIDTH: 123px"></td>
                        <td>
                            <asp:RegularExpressionValidator ID="revEmpPhone" runat="server" ControlToValidate="txtEmpResPhone" Display="Dynamic" ErrorMessage="Enter Correct Phone Number (i.e 091-2261191)" ValidationExpression="\d{3}-\d{7}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">Cell Phone</td>
                        <td>
                            <asp:TextBox ID="txtEmpCellPhone" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td style="WIDTH: 123px"></td>
                        <td>
                            <asp:RegularExpressionValidator ID="revEmpCellPhone" runat="server" ControlToValidate="txtEmpCellPhone" Display="Dynamic" ErrorMessage="Enter Correct Cell Number (i.e 0300-5991055)" ValidationExpression="\d{4}-\d{7}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">E-Mail Address</td>
                        <td>
                            <asp:TextBox ID="txtEmpEmailAddress" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td style="WIDTH: 123px"></td>
                        <td>
                            <asp:RegularExpressionValidator ID="revEmpEmail" runat="server" ControlToValidate="txtEmpEmailAddress" Display="Dynamic" ErrorMessage="Enter Correct Email Address" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr class="heading">
                        <td colspan="3"><strong><font color="#000000">Other Particulars---</font></strong></td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">Gender</td>
                        <td>
                            <asp:RadioButtonList ID="rblEmpGender" runat="server">
                                <asp:ListItem Value="Male">Male</asp:ListItem>
                                <asp:ListItem Value="Female">Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">NIC No.</td>
                        <td>
                            <asp:TextBox ID="txtEmpNIC" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; height: 40px;"></td>
                        <td style="WIDTH: 123px; height: 40px;"></td>
                        <td style="HEIGHT: 40px">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmpNIC" Display="Dynamic" ErrorMessage="Enter Correct NIC Number (i.e 71015-8221601-5)" ValidationExpression="\d{5}-\d{7}-\d{1}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px; "></td>
                        <td class="menu" style="WIDTH: 123px; ">Domicile</td>
                        <td>
                            <asp:TextBox ID="txtEmpDomicile" runat="server" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td class="menu" style="WIDTH: 123px">Date of Birth</td>
                        <td>
                            <asp:TextBox ID="txtEmpDOB" runat="server" Width="138px"></asp:TextBox>
                            <font color="#ff3366"><strong>&nbsp;(mm/dd/yy)</strong></font></td>
                    </tr>
                    <tr>
                        <td style="WIDTH: 39px"></td>
                        <td style="WIDTH: 123px"></td>
                        <td>
                            <asp:RegularExpressionValidator ID="revEmpDOB" runat="server" ControlToValidate="txtEmpDOB" Display="Dynamic" ErrorMessage="Enter Correct Date Format (i.e mm/dd/yyyy)" ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                <table id="Table3" align="center" border="0" cellpadding="1" cellspacing="1" style="WIDTH: 425px; HEIGHT: 208px">
                    <tr>
                        <td class="menu">Employee&nbsp;UserName</td>
                        <td>
                            <asp:TextBox ID="txtEmpID" runat="server" MaxLength="10" Width="138px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:RequiredFieldValidator ID="rfvEmpID" runat="server" ControlToValidate="txtEmpID" Display="Dynamic" ErrorMessage="Enter Applicant ID"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">Password</td>
                        <td>
                            <input id="txtEmpPassword" runat="server" maxlength="6" name="txtEmpPassword" size="17" style="WIDTH: 138px; HEIGHT: 22px" type="password" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtEmpPassword" Display="Dynamic" ErrorMessage="Enter Password" style="color: #FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <p align="center">
                                <asp:CustomValidator ID="cvPassword" runat="server" ClientValidationFunction="validateLength" ControlToValidate="txtEmpPassword" Display="Dynamic" ErrorMessage="Password should be 6 characters" style="color: #FF3300"></asp:CustomValidator>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td class="menu">Confirm Password</td>
                        <td>
                            <input id="txtEmpConfirmPassword" runat="server" maxlength="6" name="txtEmpConfirmPassword" size="17" style="WIDTH: 138px; HEIGHT: 22px" type="password" /></td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtEmpConfirmPassword" Display="Dynamic" ErrorMessage="Enter Confirm Password" style="color: #FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
                            <asp:CompareValidator ID="cmvPassword" runat="server" ControlToCompare="txtEmpPassword" ControlToValidate="txtEmpConfirmPassword" Display="Dynamic" ErrorMessage="Password and Confirm Password should be same" style="color: #FF3300"></asp:CompareValidator>
                        </td>
                    </tr>
                    </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="WIDTH: 39px"></td>
                        <td align="center" colspan="2">
                            <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" OnClick="btnSubmit_Click" Text="Submit" />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
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


<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpQualificationUpdate.aspx.cs" Inherits="emplyee_EmpQualification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td style="height: 45px">
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\modify employee qualification.jpg"></asp:Image></td>
        </tr>
        <tr>
					<TD align="center" style="WIDTH: 464px; font-family: arial; font-size: 12px; background-color: #0099FF;">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></TD>
				</tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="569px">
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
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #0099FF;">Select Department and Employee ID to Add 
									Qualification</TD>
							</tr>
        <tr>
            <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Department ID</TD>
											<TD>
												<asp:DropDownList id="ddlDepartment" runat="server" Width="138px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DeptName" DataValueField="DeptID" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [DeptID], [DeptName] FROM [Dep]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Emloyee ID</TD>
											<TD>
												<asp:DropDownList id="ddlEmployeeID" runat="server" Width="138px" OnSelectedIndexChanged="ddlEmployeeID_SelectedIndexChanged"></asp:DropDownList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Degree</TD>
											<TD>
												<asp:DropDownList id="ddlEmpDegree" runat="server" Width="138px">
													<asp:ListItem Value="Choose Degree" Selected="True">&lt;Choose Degree&gt;</asp:ListItem>
													<asp:ListItem Value="Matric">Matric</asp:ListItem>
													<asp:ListItem Value="Intermediate">Intermediate</asp:ListItem>
													<asp:ListItem Value="Bachlor">Bachlor</asp:ListItem>
													<asp:ListItem Value="Masters">Masters</asp:ListItem>
													<asp:ListItem Value="MS \ M Phil">MS \ M Phil</asp:ListItem>
													<asp:ListItem Value="Ph.D">Ph.D</asp:ListItem>
												</asp:DropDownList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">University</TD>
											<TD>
												<asp:TextBox id="txtEmpUniversity" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Completed In</TD>
											<TD>
												<asp:DropDownList id="ddlEmpCompletedIn" runat="server" Width="138px">
													<asp:ListItem Value="Choose Year" Selected="True">&lt;Choose Year&gt;</asp:ListItem>
													<asp:ListItem Value="1949">1949</asp:ListItem>
													<asp:ListItem Value="1950">1950</asp:ListItem>
													<asp:ListItem Value="1951">1951</asp:ListItem>
													<asp:ListItem Value="1952">1952</asp:ListItem>
													<asp:ListItem Value="1953">1953</asp:ListItem>
													<asp:ListItem Value="1954">1954</asp:ListItem>
													<asp:ListItem Value="1955">1955</asp:ListItem>
													<asp:ListItem Value="1956">1956</asp:ListItem>
													<asp:ListItem Value="1957">1957</asp:ListItem>
													<asp:ListItem Value="1958">1958</asp:ListItem>
													<asp:ListItem Value="1959">1959</asp:ListItem>
													<asp:ListItem Value="1960">1960</asp:ListItem>
													<asp:ListItem Value="1961">1961</asp:ListItem>
													<asp:ListItem Value="1962">1962</asp:ListItem>
													<asp:ListItem Value="1963">1963</asp:ListItem>
													<asp:ListItem Value="1964">1964</asp:ListItem>
													<asp:ListItem Value="1965">1965</asp:ListItem>
													<asp:ListItem Value="1966">1966</asp:ListItem>
													<asp:ListItem Value="1967">1967</asp:ListItem>
													<asp:ListItem Value="1968">1968</asp:ListItem>
													<asp:ListItem Value="1969">1969</asp:ListItem>
													<asp:ListItem Value="1970">1970</asp:ListItem>
													<asp:ListItem Value="1971">1971</asp:ListItem>
													<asp:ListItem Value="1972">1972</asp:ListItem>
													<asp:ListItem Value="1973">1973</asp:ListItem>
													<asp:ListItem Value="1974">1974</asp:ListItem>
													<asp:ListItem Value="1975">1975</asp:ListItem>
													<asp:ListItem Value="1976">1976</asp:ListItem>
													<asp:ListItem Value="1977">1977</asp:ListItem>
													<asp:ListItem Value="1978">1978</asp:ListItem>
													<asp:ListItem Value="1979">1979</asp:ListItem>
													<asp:ListItem Value="1980">1980</asp:ListItem>
													<asp:ListItem Value="1981">1981</asp:ListItem>
													<asp:ListItem Value="1982">1982</asp:ListItem>
													<asp:ListItem Value="1983">1983</asp:ListItem>
													<asp:ListItem Value="1984">1984</asp:ListItem>
													<asp:ListItem Value="1985">1985</asp:ListItem>
													<asp:ListItem Value="1986">1986</asp:ListItem>
													<asp:ListItem Value="1987">1987</asp:ListItem>
													<asp:ListItem Value="1988">1988</asp:ListItem>
													<asp:ListItem Value="1989">1989</asp:ListItem>
													<asp:ListItem Value="1990">1990</asp:ListItem>
													<asp:ListItem Value="1991">1991</asp:ListItem>
													<asp:ListItem Value="1992">1992</asp:ListItem>
													<asp:ListItem Value="1993">1993</asp:ListItem>
													<asp:ListItem Value="1994">1994</asp:ListItem>
													<asp:ListItem Value="1995">1995</asp:ListItem>
													<asp:ListItem Value="1996">1996</asp:ListItem>
													<asp:ListItem Value="1997">1997</asp:ListItem>
													<asp:ListItem Value="1998">1998</asp:ListItem>
													<asp:ListItem Value="1999">1999</asp:ListItem>
													<asp:ListItem Value="2000">2000</asp:ListItem>
													<asp:ListItem Value="2001">2001</asp:ListItem>
													<asp:ListItem Value="2002">2002</asp:ListItem>
													<asp:ListItem Value="2003">2003</asp:ListItem>
													<asp:ListItem Value="2004">2004</asp:ListItem>
													<asp:ListItem Value="2005">2005</asp:ListItem>
													<asp:ListItem Value="2006">2006</asp:ListItem>
													<asp:ListItem Value="2007">2007</asp:ListItem>
												</asp:DropDownList></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Major</TD>
											<TD>
												<asp:TextBox id="txtEmpMajor" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Division</TD>
											<TD>
												<asp:DropDownList id="ddlEmpDivision" runat="server" Width="138px">
													<asp:ListItem Value="Choose Division">&lt;Choose Division&gt;</asp:ListItem>
													<asp:ListItem Value="First">First</asp:ListItem>
													<asp:ListItem Value="Second">Second</asp:ListItem>
													<asp:ListItem Value="Third">Third</asp:ListItem>
												</asp:DropDownList></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2">
												<asp:Button id="btnUpdate" runat="server" Font-Bold="True" Text="Update" OnClick="btnUpdate_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
												<asp:Button id="btnDelete" runat="server" Font-Bold="True" Text="Delete"></asp:Button></TD>
										</TR>
									</TABLE>
								</td>
        </tr>
        <tr>
            <td>
						<asp:Image id="Image3" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


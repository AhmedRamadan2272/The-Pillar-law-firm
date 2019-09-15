<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpDateSubPic.aspx.cs" Inherits="Amr_Groups.UpDateSubPic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                <div class="col-md-3">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="Arabic Name" HeaderText="Arabic Name" SortExpression="Arabic Name" />
                            <asp:BoundField DataField="English Name" HeaderText="English Name" SortExpression="English Name" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                   
 
                    <asp:SqlDataSource ID="Sql_Img" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT  [Destionation] FROM [tblMasterPic] WHERE ([UID] = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID"  DbType="Guid"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                   <table>
                       <thead> master Pic</thead>
                       <tr>
                            
                           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Sql_Img"> 
                                 <ItemTemplate>
                           <td>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Destionation") %>'  Height="200px" BorderColor="Green" BorderWidth="3px" BorderStyle="Solid"/>

                           </td>
                                   </ItemTemplate>
        
                           </asp:Repeater>
                       </tr>

                   </table>
 
                    <asp:SqlDataSource ID="Sql_SubPic" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT tblSubPic.Destionation, tblMasterPic.UID FROM tblMasterPic INNER JOIN tblSubPic ON tblMasterPic.IDPIC = tblSubPic.IDPIC WHERE (tblMasterPic.UID = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID" DbType="Guid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                   <table>
                       <thead> Sub Pic</thead>
                       <tr>
                           <asp:Image ID="Image2" Height="200px" runat="server"  BorderColor="Green" BorderWidth="3px" BorderStyle="Solid" Visible="False"/>
                           
                       </tr>

                   </table>
 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT [Name-Ar] AS 'Arabic Name', [Name-En] AS 'English Name' FROM [tblMasterPic] WHERE ([UID] = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID"  DbType="Guid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3">
                    <div class="form-group">
                        <div class="col-md-3"></div>
                         <div class="col-md-3">

                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDSubPic" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="Destionation" HeaderText="Destionation" SortExpression="Destionation" />
                            <asp:BoundField DataField="IDSubPic" HeaderText="IDSubPic" InsertVisible="False" ReadOnly="True" SortExpression="IDSubPic" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView></div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT tblSubPic.Destionation, tblSubPic.IDSubPic FROM tblSubPic INNER JOIN tblMasterPic ON tblSubPic.IDPIC = tblMasterPic.IDPIC WHERE (tblMasterPic.UID = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </div>
            </div>
                </div>
            <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="اختيـــار صوره جديده"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                    <br />
                     <asp:Button ID="Button1" runat="server" Text="صوره جديده" CssClass="btn btn-default" OnClick="Button1_Click1"   Height="42px" Width="116px"  />
                    
                 </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Red" Text="There is No Image !!" Visible="False"></asp:Label>
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Red" Text="Wrong Extension" Visible="False"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="تعديل" CssClass="btn btn-default" OnClick="btnAdd_Click"  Height="42px" Width="116px"    />
                    <asp:Button ID="btnAdd0" runat="server" CssClass="btn btn-default"  OnClientClick = "return confirm('هل تريد فعلا مسح هذا العنـــصر؟');" OnClick="btnAdd0_Click" Text="مسح" Height="42px" Width="116px" />
                </div>
            </div>
        </asp:Panel>
    </div>

    </div>

</asp:Content>

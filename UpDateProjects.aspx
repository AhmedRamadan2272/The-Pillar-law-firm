<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpDateProjects.aspx.cs" Inherits="Amr_Groups.UpDateProjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="نـــوع المشروع"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="-1">اختر</asp:ListItem>
                        <asp:ListItem Value="1">مشــاريع لاحقه</asp:ListItem>
                        <asp:ListItem Value="2">مشــاريع سابقه</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlType" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="مشــاريع"></asp:Label>
                <div class="col-md-3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IDPIC">
                        <Columns>
                            <asp:BoundField DataField="column1" HeaderText="column1" SortExpression="column1" />
                            <asp:BoundField DataField="column2" HeaderText="column2" SortExpression="column2" />
                            <asp:BoundField DataField="Destionation" HeaderText="Destionation" SortExpression="Destionation" />
                            <asp:BoundField DataField="IDPIC" HeaderText="IDPIC" InsertVisible="False" ReadOnly="True" SortExpression="IDPIC" />
                            <asp:BoundField DataField="UID" HeaderText="UID" SortExpression="UID" />
                            <asp:BoundField DataField="Desc" HeaderText="Desc" SortExpression="Desc" />
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
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT [Name-Ar] AS column1, [Name-En] AS column2, Destionation, IDPIC, UID, [Desc] FROM tblMasterPic WHERE ([Case] = @Case )">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlType" Name="Case" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="الصوره"></asp:Label>
                <div class="col-md-3">
                    <asp:Image ID="Image1" Visible="true" Height="200px"  Width="200px" runat="server" />
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="الاسم "></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TxtName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="الاسم بالانجليزي"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TxtName_En" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            
             <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="اختيار الصوره الاساسيه"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUploadMAster" CssClass="form-control" runat="server"  />
                </div>
            </div>
                        <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="اختيار الصوره الاساسيه"></asp:Label>
                <div class="col-md-3">
<asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="-1">اختر</asp:ListItem>
                        <asp:ListItem Value="1">مشــاريع لاحقه</asp:ListItem>
                        <asp:ListItem Value="2">مشــاريع سابقه</asp:ListItem>
                    </asp:DropDownList>                </div>
            </div>
                <div class="form-group">
                <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="الوصــف"></asp:Label>
                <div class="col-md-3">
                    <div id="sample">
     <script type="text/javascript" src="js/nicEdit-latest.js" ></script> <script type="text/javascript">
                                                                                                //<![CDATA[
                                                                                                bkLib.onDomLoaded(function () { nicEditors.allTextAreas() });
                                                                                                //]]>
  </script>
 
                    <textarea id="TextArea1" runat="server" cols="20"  
 name="S1" rows="2" style="width:800px;" ></textarea><br />
                        <br />
                        <br />
                        
                    </div>
            </div>
                    </div>
                <div class="form-group">
                <div class="col-md-2">
                    
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Red" Text="إمتداد الصوره خطأ" Visible="False"></asp:Label>
                    
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="تعــديل" CssClass="btn btn-default" OnClick="btnAdd_Click" Height="42px" Width="116px"   />
                    <asp:Button ID="btnDel" runat="server" Text="مســح" CssClass="btn btn-default"  OnClientClick = "return confirm('هل تريد فعلا مسح هذا العنـــصر؟');" OnClick="btnDel_Click" Height="42px" Width="116px"  />
                     <asp:Button ID="Button1" runat="server" Text="الصــور الفرعيه" CssClass="btn btn-default" OnClick="Button1_Click" Height="42px" Width="116px"   />

                </div>
                 
            </div>
                </asp:Panel>
            
                
        </div>
    </div>
 
</asp:Content>

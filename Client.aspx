<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="Ticketing.Client" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center">
        &nbsp;</p>
<p class="text-center" style="font-family: Arial; font-size: x-large">
    <strong>LISTE DES CLIENTS</strong></p>
    <p class="text-center" style="font-family: Arial; font-size: x-large">
        &nbsp;</p>
    <p class="text-center" style="font-family: Arial; font-size: x-large">
        &nbsp;</p>
   <div>
       <table class="nav-justified">
           <tr>
               <td style="width: 188px">&nbsp;</td>
               <td style="width: 41px">Nom</td>
               <td style="width: 225px">
                   <asp:TextBox ID="TxtNom" runat="server" CssClass="input-sm" Width="154px"></asp:TextBox>
               </td>
               <td style="width: 76px">Telephone</td>
               <td style="width: 218px">
                   <asp:TextBox ID="TxtTelephone" runat="server" CssClass="input-sm" style="margin-left: 0" Width="152px"  ></asp:TextBox>
               </td>
               <td style="width: 38px">Mail</td>
               <td style="width: 167px">
                   <asp:TextBox ID="TxtMail" runat="server"   CssClass="input-sm"  Width="144px" ></asp:TextBox>
               </td>
               <td>
                   <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Add.png" OnClick="ImageButton1_Click" />
               </td>
           </tr>
           <tr>
               <td style="width: 188px">&nbsp;</td>
               <td style="width: 41px">&nbsp;</td>
               <td style="width: 225px">
                   <br />
                   <br />
               </td>
               <td style="width: 76px">&nbsp;</td>
               <td style="width: 218px">&nbsp;</td>
               <td style="width: 38px">&nbsp;</td>
               <td style="width: 167px">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>
   </div>
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>
        <asp:GridView ID="GridViewListClient" runat="server" AutoGenerateColumns="False" Width="912px" OnRowEditing="GridViewListClient_RowEditing" DataKeyNames="ID" OnRowCancelingEdit="GridViewListClient_RowCancelingEdit" OnRowUpdating="GridViewListClient_RowUpdating" OnRowDeleting="GridViewListClient_RowDeleting" OnRowCommand="GridViewListClient_RowCommand" style="margin-left: 183px" BorderStyle="None" BorderWidth="0px" GridLines="None" ItemStyle-Height="50" HeaderStyle-Height="60" >
         
            <Columns>
                
                <asp:TemplateField AccessibleHeaderText="Nom" FooterText="Nom" HeaderText="Nom" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="20px" ItemStyle-Height="50">
                
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Nom") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtNom" Text='<%# Eval("Nom")%>' runat="server" CssClass="input-sm"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="Telephone" FooterText="Telephone" HeaderText="Telephone" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="20px">
            
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Telephone") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtTel" Text='<%# Eval("Telephone") %>' runat="server" CssClass="input-sm"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="Mail" FooterText="Mail" HeaderText="Mail" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="20px">
               
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Mail") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TxtMail" Text='<%# Eval("Mail") %>' runat="server" CssClass="input-sm"></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
              
                    <ItemTemplate>
                        <asp:Button runat="server" CommandName="Edit" ToolTip="Edit" CssClass="btn btn-primary btn-sm" Text="Modifier" />
                            <asp:Button  runat="server" CommandName="Delete" ToolTip="Delete" CssClass="btn btn-danger btn-sm" Text="Supprimer" OnClientClick="return confirm('Voulez vous vraiment supprimer ?')" />                 
                            <asp:Button runat="server" CommandName="Ticket" CommandArgument='<%# Eval("ID") %>' ToolTip="Plus sur le client" CssClass="btn btn-success btn-sm" Text="Plus" ForeColor="White"/>                                                                   
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button  runat="server" CommandName="Update" ToolTip="Update" Text="Savegarder" CssClass="btn btn-primary btn-sm"/>
                        <asp:Button  runat="server" CommandName="Cancel" ToolTip="Cancel"  CssClass="btn btn-info btn-sm" Text="Annuler"/>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
           
            <RowStyle BorderStyle="None" />
           
        </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
</asp:Content>

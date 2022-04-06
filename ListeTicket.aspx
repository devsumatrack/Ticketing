<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeTicket.aspx.cs" Inherits="Ticketing.ListeTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p class="text-center" style="font-family: Arial; font-weight: bold; font-size: x-large">
        TICKETING</p>
    <br />
    <div>

        <table class="nav-justified">
            <tr>
                <td style="width: 116px">
                    <asp:Button ID="Button1" runat="server" Text="CREER" OnClick="Button1_Click" CssClass="btn btn-success btn-sm" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="EXPORTER" Width="91px" CssClass="btn btn-default btn-sm"/>
                </td>
            </tr>
        </table>

    </div>
    <br />
    <br />
    <div>
        <asp:GridView ID="GridViewTicket" runat="server" Width="1252px" AutoGenerateColumns="False" OnRowCommand="GridViewTicket_RowCommand" GridLines="None" HeaderStyle-Height="50px" >
            <Columns>
               
                <asp:TemplateField HeaderText="CATEGORIE" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                     
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%# Eval("Categorie") %>'></asp:Label>
                    </ItemTemplate>                                     
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CLASSIFICATION" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Classification") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="STATUT" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Statut") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CREER PAR" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Creation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="GROUPE" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Groupe") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ATTRIBUE" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Attribue") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DATE CREATION" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("DateCreation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DATE FIN" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("DateFin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="DURE" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                         <asp:Label runat="server" Text='<%# Eval("Dure") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ACTION" HeaderStyle-ForeColor="OrangeRed" HeaderStyle-Font-Size="15px" ItemStyle-Height="50">
                    <ItemTemplate>
                        <asp:Button ID="TxtEdit" Text="MODIFIER" runat="server"  CommandName="EditTicket" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-primary btn-sm" />
                        <asp:Button ID="TxtDelete" Text="SUPPRIMER" runat="server" CommandName="DeleteTicket" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-danger btn-sm" OnClientClick="return confirm('Voulez vous vraiment supprimer?')"/>
                    </ItemTemplate>                   
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</div>
</asp:Content>


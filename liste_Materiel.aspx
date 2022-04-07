<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="liste_Materiel.aspx.cs" Inherits="Ticketing.liste_Materiel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <Link rel = "StyleSheet" href = " Styleclient.css" type = "text/css" />
    <p>
        <br />
    </p>
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" style="font-family: Arial; font-weight: bold; font-size: x-large" Text="LISTE MATERIEL CLIENT"></asp:Label>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-left">
        <asp:Button ID="Button1" runat="server" Text="AJOUTER" Width="99px" CssClass="btn btn-success btn-sm" OnClick="Button1_Click"/>
    </p>
    <p class="text-left">
        &nbsp;</p>
    <p class="text-left">
        &nbsp;</p>
    <div>

        <asp:GridView ID="GridViewMateriel" runat="server" AutoGenerateColumns="False" Width="1076px" GridLines="None" HeaderStyle-Height="60px" RowStyle-Height="50px" HeaderStyle-ForeColor="OrangeRed" OnRowCommand="GridViewMateriel_RowCommand">
            <Columns>
                <asp:TemplateField AccessibleHeaderText="DESIGNATION" HeaderText="DESIGNATION">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("DESIGNATION") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="MARQUE" HeaderText="MARQUE">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("MARQUE") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="MODELE" HeaderText="MODELE">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("MODELE") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="FONCTION" HeaderText="FONCTION">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("FONCTION") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="HYPERVISEUR" HeaderText="HYPERVISEUR">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("HYPERVISEUR") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="QUANTITE" HeaderText="QUANTITE">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("QUANTITE") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField AccessibleHeaderText="ANNEA" HeaderText="ANNE ACQUISITION">
                    <ItemTemplate >
                        <asp:Label Text='<%# Eval("QUANTITE") %>' runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField  HeaderText="ACTION">
                    <ItemTemplate >
                        <asp:Button Text="MODIFIER" runat="server" CssClass="btn btn-primary btn-sm" CommandName="Update"></asp:Button>
                        <asp:Button Text="SUPPRIMER" runat="server" CssClass="btn btn-danger btn-sm" CommandName="Del" CommandArgument='<%# Eval("ID") %>' OnClientClick="return confirm('Voulez vous vraiment supprimer?')"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>

        <!-- left debut -->

      <div class="left">  

         


 
    </div>
   <!-- left close -->
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ajout_Materiel.aspx.cs" Inherits="Ticketing.Ajout_Materiel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" style="font-family: Arial; font-weight: bold; font-size: x-large" Text="AJOUT MATERIEL"></asp:Label>
    </p>
    <p class="text-center">
        &nbsp;</p>
    <p class="text-center">
        &nbsp;</p>
    <div>

        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 215px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 215px">
                    <asp:Label ID="Label2" runat="server" Text="DESIGNATION"></asp:Label>
                    <asp:TextBox ID="txtDes" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td class="modal-sm" style="width: 97px">&nbsp;</td>
                <td style="width: 190px">
                    <asp:Label ID="Label3" runat="server" Text="MARQUE"></asp:Label>
                    <asp:TextBox ID="txtMarque" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td style="width: 76px">&nbsp;</td>
                <td style="width: 192px">
                    <asp:Label ID="Label4" runat="server" Text="MODELE"></asp:Label>
                    <asp:TextBox ID="txtModele" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td style="width: 89px">&nbsp;</td>
                <td style="width: 145px">
                    <asp:Label ID="Label5" runat="server" Text="FONCTION"></asp:Label>
                    <asp:TextBox ID="txtFonction" runat="server" Width="217px"></asp:TextBox>
                </td>
                <td style="width: 149px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 215px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 215px">
                    <br />
                    <br />
                </td>
                <td class="modal-sm" style="width: 97px">&nbsp;</td>
                <td style="width: 190px">&nbsp;</td>
                <td style="width: 76px">&nbsp;</td>
                <td style="width: 192px">&nbsp;</td>
                <td style="width: 89px">&nbsp;</td>
                <td style="width: 145px">&nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 215px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 215px">
                    <asp:Label ID="Label6" runat="server" Text="HYPERVISEUR"></asp:Label>
                    <asp:TextBox ID="txtHyp" runat="server" Width="199px"></asp:TextBox>
                </td>
                <td class="modal-sm" style="width: 97px">&nbsp;</td>
                <td style="width: 190px">
                    <asp:Label ID="Label7" runat="server" Text="QUANTITE"></asp:Label>
                    <asp:TextBox ID="txtQTU" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td style="width: 76px">&nbsp;</td>
                <td style="width: 192px">
                    <asp:Label ID="Label8" runat="server" Text="ANNE ACQUISITION"></asp:Label>
                    <asp:TextBox ID="txtAnne" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td style="width: 89px">&nbsp;</td>
                <td style="width: 145px">&nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 215px">&nbsp;</td>
                <td class="modal-sm" style="width: 215px">&nbsp;</td>
                <td class="modal-sm" style="width: 97px">&nbsp;</td>
                <td style="width: 190px">&nbsp;</td>
                <td style="width: 76px">&nbsp;</td>
                <td style="width: 192px">&nbsp;</td>
                <td style="width: 89px">
                    <br />
                    <br />
                    <br />
                </td>
                <td style="width: 145px">&nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 215px">
                    &nbsp;</td>
                <td class="modal-sm" style="width: 215px">
                    <asp:Button ID="Button1" runat="server" Text="ENREGISTRER" CssClass="btn btn-primary btn-sm" OnClick="Button1_Click" Width="137px" />
                </td>
                <td class="modal-sm" style="width: 97px">&nbsp;</td>
                <td style="width: 190px">&nbsp;</td>
                <td style="width: 76px">&nbsp;</td>
                <td style="width: 192px">&nbsp;</td>
                <td style="width: 89px">&nbsp;</td>
                <td style="width: 145px">&nbsp;</td>
                <td style="width: 149px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

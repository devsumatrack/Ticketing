<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="Ticketing.Accueil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 99px; height: 51px">Nom:</td>
            <td style="height: 51px; width: 311px">
                <asp:Label ID="LblNom" runat="server" ForeColor="#0000CC" Text="XXXXX"></asp:Label>
            </td>
            <td style="height: 51px; width: 331px">&nbsp;</td>
            <td style="height: 51px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 99px">Téléphone</td>
            <td class="modal-sm" style="width: 311px">
                <asp:Label ID="LblTéléphone" runat="server" ForeColor="#0000CC" Text="XXXXXXX"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 331px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 99px; height: 48px">
                <asp:Label ID="Label1" runat="server" Text="Mail"></asp:Label>
            </td>
            <td style="height: 48px; width: 311px">
                <asp:Label ID="lblMail" runat="server" ForeColor="Blue" Text="XXXX"></asp:Label>
            </td>
            <td style="height: 48px; width: 331px">&nbsp;</td>
            <td style="height: 48px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td class="modal-sm" style="width: 311px">
                <br />
                <br />
                <br />
            </td>
            <td class="modal-sm" style="width: 331px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 99px">&nbsp;</td>
            <td class="modal-sm" style="width: 311px">
                <asp:Button ID="Button1" runat="server" BackColor="#CC00FF" ForeColor="White" Height="129px" Text="CONTRAT" Width="227px" />
            </td>
            <td class="modal-sm" style="width: 331px">
                <asp:Button ID="Button2" runat="server" BackColor="Lime" CommandName="Ticket" Height="126px" OnCommand="Button2_Command" Text="ListeTicket" Width="228px" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#663300" ForeColor="White" Height="127px" Text="MATERIEL" Width="235px" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

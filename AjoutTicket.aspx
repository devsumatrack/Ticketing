<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AjoutTicket.aspx.cs" Inherits="Ticketing.AjoutTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" style="font-family: Arial; font-weight: bold; font-size: x-large" Text="AJOUT CLIENT"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td style="height: 20px; width: 82px"><span style="font-family: Arial; font-weight: bold; border-left-color: #A0A0A0; border-right-color: #C0C0C0; border-top-color: #A0A0A0; border-bottom-color: #C0C0C0">Categorie<asp:DropDownList ID="DropDownCategorie" runat="server" Height="30px" Width="164px">
                </asp:DropDownList>
                </span>
            </td>
            <td style="height: 20px; width: 171px">
                &nbsp;</td>
            <td style="height: 20px; width: 94px"><strong>Classification</strong><asp:TextBox ID="TxtClassification" runat="server" CssClass="input-sm" ></asp:TextBox>
            </td>
            <td style="height: 20px; width: 162px">
                &nbsp;</td>
            <td style="width: 55px"><strong>Statut</strong><asp:DropDownList ID="DropDownListStatut" runat="server" Width="125px" Height="30px">
                    <asp:ListItem>En cours</asp:ListItem>
                    <asp:ListItem>Suspendue</asp:ListItem>
                    <asp:ListItem>Close</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px; width: 132px">
                &nbsp;</td>
            <td style="height: 20px; width: 162px"><strong>Attribue</strong><asp:DropDownList ID="DropDownListAttribue" runat="server" style="margin-left: 0" Width="120px" Height="30px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>BBS</asp:ListItem>
                    <asp:ListItem>Cient</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 50px; width: 82px">
                <br />
            </td>
            <td style="height: 50px; width: 171px"></td>
            <td style="height: 50px; width: 94px"></td>
            <td style="height: 50px; width: 162px"></td>
            <td style="height: 50px; width: 55px"></td>
            <td style="height: 50px; width: 132px"></td>
            <td style="height: 50px; width: 162px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 82px"><strong>Date debut</strong></td>
            <td style="height: 20px; width: 171px">
                <asp:Label ID="DateD" runat="server" Text="XX/XX/XX"></asp:Label>
            </td>
            <td style="height: 20px; width: 94px"><strong>Date Fin</strong></td>
            <td style="height: 20px; width: 162px">
                <asp:Label ID="DateFin" runat="server" Text="XX/XX/XX"></asp:Label>
            </td>
            <td style="height: 20px; width: 55px"><strong>Dure</strong></td>
            <td style="height: 20px; width: 132px">
                <asp:Label ID="LblDure" runat="server" Text="0"></asp:Label>
            </td>
            <td style="height: 20px; width: 162px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 82px">
                <asp:Calendar ID="CalendarDebut" runat="server" DayNameFormat="Shortest" OnSelectionChanged="CalendarDebut_SelectionChanged"></asp:Calendar>
            </td>
            <td style="height: 20px; width: 171px">
                &nbsp;</td>
            <td style="height: 20px; width: 94px">
                <asp:Calendar ID="CalendarFin" runat="server" DayNameFormat="Shortest" OnSelectionChanged="CalendarFin_SelectionChanged"></asp:Calendar>
            </td>
            <td style="height: 20px; width: 162px">
                &nbsp;</td>
            <td style="height: 20px; width: 55px">&nbsp;</td>
            <td style="height: 20px; width: 132px">&nbsp;</td>
            <td style="height: 20px; width: 162px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 82px">&nbsp;</td>
            <td colspan="5" style="height: 20px">Commentaire</td>
            <td style="height: 20px; width: 162px">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; " colspan="7">
                <br />
                <asp:TextBox ID="TxtCommentaire" runat="server" Height="133px" Width="1013px" TextMode="MultiLine" style="margin-right: 61"></asp:TextBox>
                <br />
                <br />
            </td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 82px">
                <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click" Text="ENREGISTRER"  class="btn btn-primary btn-sm" Height="44px"/>
            </td>
            <td colspan="5" style="height: 20px">
                &nbsp;</td>
            <td style="height: 20px; width: 162px">&nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

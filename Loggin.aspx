<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Loggin.aspx.cs" Inherits="Ticketing.Loggin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="nav-justified">
        <tr>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center" >
                <asp:Label ID="Label1" runat="server" Text="Bienvenue" Font-Size="30px" Font-Bold="true"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center">Nom d&#39;utilisateur:<br />
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="btn-sm" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center">Passeword</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="btn-sm" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="LblMessage" runat="server" style="font-family: Arial; color: #FF0000" Text="Mot de passe incorecte" Visible="False"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" type="Password" OnClick="Button1_Click" Text="Connexion" CssClass="btn btn-primary btn-sm" />
            </td>
        </tr>
    </table>
    
</asp:Content>

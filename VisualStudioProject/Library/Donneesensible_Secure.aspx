<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Donneesensible_Secure.aspx.cs" Inherits="Library.Donneesensible_Secure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2>But:</h2>
                <p style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Essayer d'intercepter le message entre le serveur et le client! 
                </p>
                <asp:Label ID="Label1" runat="server" Text="Numéro carte bancaire: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Envoyer" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <br />

            </td>
        </tr>
    </table>
</asp:Content>

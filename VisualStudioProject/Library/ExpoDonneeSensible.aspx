<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ExpoDonneeSensible.aspx.cs" Inherits="Library.ExpoDonneeSensible" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2>Description :</h2>
                <p style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Beaucoup d'applications web ne protègent pas correctement les données sensibles 
                    telles que les cartes de crédit, identifiants d'impôt et informations d'authentification. 
                    Les pirates peuvent voler ou modifier ces données faiblement protégées pour effectuer un vol d'identité, 
                    de la fraude à la carte de crédit ou autres crimes. Les données sensibles méritent 
                    une protection supplémentaire tel un chiffrement statique ou en transit,
                    ainsi que des précautions particulières lors de l'échange avec le navigateur
                </p>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://localhost:44300/Donneesensible_Secure.aspx"
                    Target="_blank">solution avec Https: page sécurisée

                </asp:HyperLink>

            </td>
        </tr>
    </table>
</asp:Content>

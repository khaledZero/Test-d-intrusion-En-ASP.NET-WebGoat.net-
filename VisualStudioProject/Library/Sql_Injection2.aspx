<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Sql_Injection2.aspx.cs" Inherits="Library.Sql_Injection2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 218px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tableStandard">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LabelSQL_Injection" runat="server" Text="SQL INJECTION AFFICHAGE UTILISATEURS" Font-Bold="True" Font-Size="Larger" Width="100%" Style="text-align: center"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LabelDescription" runat="server" Text="Description" Font-Bold="True" Width="43%" Height="16px" Style="margin-top: 0px"></asp:Label></td>
            <td rowspan="2">
                <asp:TextBox ID="TbxDescSQL" runat="server" Rows="5" TextMode="MultiLine" Width="90%" AutoPostBack="True" ReadOnly="True">Une injection SQL est un type d&#39;exploitation d&#39;une faille de sécurité d&#39;une application interagissant avec une base de données, en injectant une requête SQL non prévue par le système et pouvant compromettre sa sécurité.</asp:TextBox>
                <br />
                <br />
                <br />
                <asp:TextBox ID="TbxDescBut" runat="server" Rows="3" TextMode="MultiLine" Width="90%" AutoPostBack="True" ReadOnly="True">Le but de cette injection est de récupérer toute la liste des utilisateurs avec leurs informations.</asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LabelBut" runat="server" Text="But" Font-Bold="True" Width="43%" Height="32px"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="BtnConnect" runat="server" Text="Valider" Width="50%" OnClick="BtnConnect_Click" />
            </td>
            <td>
                <asp:TextBox ID="TbxLogin" runat="server" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LblSucces" runat="server" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Lime"></asp:Label></td>
            <td>
                <asp:Label ID="LblErruer" runat="server" Width="100%" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./SqlInjectionCorrected.aspx">
                    Cliquez ici pour voir la version corrigée!
                </asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

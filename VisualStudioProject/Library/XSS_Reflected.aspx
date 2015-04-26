<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="XSS_Reflected.aspx.cs" Inherits="Library.XSS_Refered" ValidateRequest="false" %>

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
                <asp:Label ID="LblXSS_Ref" runat="server" Text="XSS REFLECTED" Font-Bold="True" Font-Size="Larger" Width="100%" Style="text-align: center"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LabelDescription" runat="server" Text="Description" Font-Bold="True" Width="43%" Height="16px" Style="margin-top: 0px"></asp:Label></td>
            <td rowspan="2">
                <asp:TextBox ID="TbxDesc" runat="server" Rows="5" TextMode="MultiLine" Width="90%" AutoPostBack="True" ReadOnly="True">Le XSS est un type de faille de sécurité des sites webs permettant d&#39;injecter du contenu dans une page, permettant ainsi de provoquer des actions sur les navigateurs web visitant la page.</asp:TextBox>
                <br />
                <br />
                <br />
                <asp:TextBox ID="TbxBut" runat="server" Rows="3" TextMode="MultiLine" Width="90%" AutoPostBack="True" ReadOnly="True">Le but de cette attaque est d&#39;executer du code jsp sur le navigateur du client</asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="LabelBut" runat="server" Text="But" Font-Bold="True" Width="43%" Height="32px"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="BtnXssRef" runat="server" Text="Envoyer" Width="50%" OnClick="BtnConnect_Click" />
            </td>
            <td>
                <asp:TextBox ID="TbxLogin" runat="server" Width="80%"></asp:TextBox>
                <%=msg %>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./XSS_Corrected.aspx">
                    Cliquez ici pour voir la version corrigée!
                </asp:HyperLink>
            </td>
        </tr>

    </table>
</asp:Content>

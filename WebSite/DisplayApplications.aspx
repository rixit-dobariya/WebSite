<%@ Page Title="" Language="C#" MasterPageFile="~/HDFCMasterPage.master" AutoEventWireup="true" CodeFile="DisplayApplications.aspx.cs" Inherits="DisplayApplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />

    <asp:GridView ID="LoanGridView" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="LoanNo">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("LoanNo") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AccountNo">
                 <ItemTemplate>
                     <asp:Label ID="Label2" runat="server" Text='<%# Eval("AccountNo") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ActHolderName">
                 <ItemTemplate>
                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("ActHolderName") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Profession">
                 <ItemTemplate>
                     <asp:Label ID="Label4" runat="server" Text='<%# Eval("Profession") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                 <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ContactNo">
                 <ItemTemplate>
                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("ContactNo") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LoanCategory">
                 <ItemTemplate>
                     <asp:Label ID="Label7" runat="server" Text='<%# Eval("LoanCategory") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LoanType">
                 <ItemTemplate>
                     <asp:Label ID="Label8" runat="server" Text='<%# Eval("LoanType") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IssueDate">
                 <ItemTemplate>
                     <asp:Label ID="Label9" runat="server" Text='<%# Eval("IssueDate") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount">
                 <ItemTemplate>
                     <asp:Label ID="Label10" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CurrentAddress">
                 <ItemTemplate>
                     <asp:Label ID="Label11" runat="server" Text='<%# Eval("CurrentAddress") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="LoanRemarks">
                 <ItemTemplate>
                     <asp:Label ID="Label11" runat="server" Text='<%# Eval("LoanRemarks") %>'></asp:Label>
                 </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>


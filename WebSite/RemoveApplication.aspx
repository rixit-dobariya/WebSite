<%@ Page Title="" Language="C#" MasterPageFile="~/HDFCMasterPage.master" AutoEventWireup="true" CodeFile="RemoveApplication.aspx.cs" Inherits="RemoveApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table width="100%">
    <thead>
        <tr>
            <td colspan="2">Remove Loan Application</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Loan No:</td>
            <td>
                <asp:TextBox ID="txtLoanNo" runat="server" ></asp:TextBox>
                <asp:Button ID="btnGetLoanDetails" CausesValidation="false" runat="server" Text="Get Loan Details"  OnClick="btnGetLoanDetails_Click" />
            </td>
        </tr>
        <tr>
            <td>Saving Account No:</td>
            <td>
                <asp:TextBox disabled ID="txtSavingAccNo" runat="server"></asp:TextBox>
                <asp:Label ID="lblSavingMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Account Holder Name:</td>
            <td>
                <asp:TextBox disabled  ID="txtHolderName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Loan Category:</td>
            <td>
                <asp:DropDownList ID="ddlLoanCategory" runat="server" disabled  >
                     <asp:ListItem>Home loan</asp:ListItem>
                     <asp:ListItem>Property Loan</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Loan Type:</td>
            <td>
                <asp:DropDownList ID="ddlLoanType" runat="server" disabled >
                    <asp:ListItem>Education Loan</asp:ListItem>
                    <asp:ListItem>Car loan</asp:ListItem>
                </asp:DropDownList>                    
            </td>
        </tr>
        <tr>
            <td>Loan Issue Date:</td>
            <td>
                <asp:TextBox ID="txtIssueDate" runat="server" disabled ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Loan Amount:</td>
            <td>
                <asp:TextBox ID="txtLoanAmount" runat="server" disabled ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Current Address:</td>
            <td>
                <asp:TextBox ID="txtCurrAddress" runat="server" disabled ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Loan Remarks:</td>
            <td>
                <asp:TextBox ID="txtLoanRemarks" runat="server" disabled ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnSubmit" runat="server" Text="Discard Application" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Label ID="lblResponse" runat="server" Text="" ForeColor="Green"></asp:Label>
            </td>
        </tr>
    </tbody>
</table>
</asp:Content>


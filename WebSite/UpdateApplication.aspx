<%@ Page Title="" Language="C#" MasterPageFile="~/HDFCMasterPage.master" AutoEventWireup="true" CodeFile="UpdateApplication.aspx.cs" Inherits="UpdateApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <thead>
        <tr>
            <td colspan="2">Update Loan Application</td>
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
                <asp:TextBox ID="txtSavingAccNo" runat="server" AutoPostBack="True" OnTextChanged="txtSavingAccNo_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Account No is required" ControlToValidate="txtSavingAccNo"></asp:RequiredFieldValidator>
                <asp:Label ID="lblSavingMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Account Holder Name:</td>
            <td>
                <asp:TextBox ID="txtHolderName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Account Holder Name No is required" ControlToValidate="txtHolderName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Loan Category:</td>
            <td>
                <asp:DropDownList ID="ddlLoanCategory" runat="server">
                     <asp:ListItem>Home loan</asp:ListItem>
                     <asp:ListItem>Property Loan</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Loan Type:</td>
            <td>
                <asp:DropDownList ID="ddlLoanType" runat="server">
                    <asp:ListItem>Education Loan</asp:ListItem>
                    <asp:ListItem>Car loan</asp:ListItem>
                </asp:DropDownList>                    
            </td>
        </tr>
        <tr>
            <td>Loan Issue Date:</td>
            <td>
                <asp:TextBox ID="txtIssueDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Issue Date is required" ControlToValidate="txtIssueDate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Loan Amount:</td>
            <td>
                <asp:TextBox ID="txtLoanAmount" runat="server"></asp:TextBox>
                <asp:RangeValidator CssClass="error" MinimumValue="50000" MaximumValue="200000" ID="RangeValidator1" runat="server" ControlToValidate="txtLoanAmount" ErrorMessage="Amount must be within 50000 to 200000." Type="Currency"></asp:RangeValidator>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLoanAmount" ErrorMessage="Amount is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Current Address:</td>
            <td>
                <asp:TextBox ID="txtCurrAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Current Address is required" ControlToValidate="txtCurrAddress"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Loan Remarks:</td>
            <td>
                <asp:TextBox ID="txtLoanRemarks" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Loan Remarks is required" ControlToValidate="txtLoanRemarks"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center">
                <asp:Button ID="btnSubmit" runat="server" Text="Update Application" OnClick="btnSubmit_Click" />
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


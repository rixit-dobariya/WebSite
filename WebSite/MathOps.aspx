<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MathOps.aspx.cs" Inherits="MathOps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .error{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Number 1: <asp:TextBox ID="txtNo1" runat="server"></asp:TextBox>  <br />
            <asp:RequiredFieldValidator CssClass="error" ControlToValidate="txtNo1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="First number must not be empty!"></asp:RequiredFieldValidator>
            <br />
            Number 2:<asp:TextBox ID="txtNo2" runat="server"></asp:TextBox>  <br />
            <asp:RequiredFieldValidator CssClass="error" ControlToValidate="txtNo2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Second number must not be empty"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnAdd" runat="server" Text="Addition" OnClick="btnAdd_Click" /> &nbsp;
            <asp:Button ID="btnSub" runat="server" Text="Subtraction" OnClick="btnSub_Click" style="height: 26px" /> &nbsp;
            <asp:Button ID="btnMul" runat="server" Text="Multiplication" OnClick="btnMul_Click" /> &nbsp;
            <asp:Button ID="btnDiv" runat="server" Text="Division" OnClick="btnDiv_Click" /> &nbsp;
            <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /> &nbsp;
            <br />
            <asp:Label ID="lblAnswer" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

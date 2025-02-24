<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
            <h2>User Login</h2>
            <table>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email must not be empty" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator CssClass="error" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password must not be empty" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblResponse" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFeedback.aspx.cs" Inherits="FeedbackSystem.AddFeedback" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add Feedback</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Add Feedback</h2>

        <asp:Label ID="lblMsg" runat="server" ForeColor="Green" /><br /><br />

        Student Name:
        <asp:TextBox ID="txtName" runat="server" /><br /><br />

        Course Name:
        <asp:TextBox ID="txtCourse" runat="server" /><br /><br />

        Comments:
        <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" /><br /><br />

        Phone:
        <asp:TextBox ID="txtPhone" runat="server" MaxLength="11" /><br />
        <asp:RegularExpressionValidator ID="revPhone" runat="server"
            ControlToValidate="txtPhone"
            ValidationExpression="^\d{11}$"
            ErrorMessage="Phone must be 11 digits."
            ForeColor="Red" /><br /><br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />

        <asp:HyperLink ID="lnkViewFeedback" runat="server" NavigateUrl="ViewFeedback.aspx"
                       Text="View Submitted Feedback" Visible="false" ForeColor="Blue" /><br /><br />

        <asp:HyperLink ID="lnkStats" runat="server" NavigateUrl="Stats.aspx"
                       Text="View Stats" ForeColor="Green" />
    </form>
</body>
</html>

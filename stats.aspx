<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stats.aspx.cs" Inherits="FeedbackSystem.Stats" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Feedback Statistics</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Feedback Statistics</h2>
        <asp:Label ID="lblTotal" runat="server" ForeColor="Blue" Font-Bold="true" /><br /><br />
        <asp:Label ID="lblLastUser" runat="server" ForeColor="Green" /><br /><br />
        <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="AddFeedback.aspx"
                       Text="Back to Add Feedback" ForeColor="Blue" />
    </form>
</body>
</html>

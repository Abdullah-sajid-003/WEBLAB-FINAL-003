<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="FeedbackSystem.ViewFeedback" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Feedback</title>
    <style>
        .gridview {
            border: 1px solid #ccc;
            width: 100%;
            font-family: Arial;
        }
        .gridview th {
            background-color: #007bff;
            color: white;
            padding: 8px;
        }
        .gridview td {
            background-color: #f9f9f9;
            padding: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Feedback List</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id"
            OnRowEditing="GridView1_RowEditing"
            OnRowUpdating="GridView1_RowUpdating"
            OnRowCancelingEdit="GridView1_RowCancelingEdit"
            OnRowDeleting="GridView1_RowDeleting"
            CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="StudentName" HeaderText="Student Name" ReadOnly="True" />
                <asp:BoundField DataField="CourseName" HeaderText="Course Name" />
                <asp:BoundField DataField="Comments" HeaderText="Comments" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" ReadOnly="True" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView><br />
        <asp:HyperLink ID="lnkBack" runat="server" NavigateUrl="AddFeedback.aspx"
                       Text="Back to Add Feedback" ForeColor="Green" />
    </form>
</body>
</html>

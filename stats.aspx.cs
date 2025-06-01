using System;

namespace FeedbackSystem
{
    public partial class Stats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = Application["TotalSubmissions"] != null ? (int)Application["TotalSubmissions"] : 0;
            lblTotal.Text = "Total Feedback Submissions: " + total;

            if (Session["LastStudentName"] != null)
            {
                lblLastUser.Text = "Your last submitted name: " + Session["LastStudentName"].ToString();
            }
        }
    }
}

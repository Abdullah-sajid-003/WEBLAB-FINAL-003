using System;
using System.Configuration;
using System.Data.SqlClient;

namespace FeedbackSystem
{
    public partial class AddFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.ValidationSettings.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack && Session["LastStudentName"] != null)
            {
                txtName.Text = Session["LastStudentName"].ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["FeedbackConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Feedback (StudentName, CourseName, Comments, Phone) VALUES (@name, @course, @comments, @phone)", con);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@course", txtCourse.Text);
                cmd.Parameters.AddWithValue("@comments", txtComments.Text);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            Session["LastStudentName"] = txtName.Text;

            if (Application["TotalSubmissions"] == null)
                Application["TotalSubmissions"] = 1;
            else
                Application["TotalSubmissions"] = (int)Application["TotalSubmissions"] + 1;

            lblMsg.Text = "Feedback submitted successfully!";
            txtName.Text = txtCourse.Text = txtComments.Text = txtPhone.Text = "";
            lnkViewFeedback.Visible = true;
        }
    }
}

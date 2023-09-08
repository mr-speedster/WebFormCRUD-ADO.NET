using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCRUD
{
    public partial class BookUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Back_to_Library(object sender, EventArgs e)
        {
            Response.Redirect("BookList.aspx");
        }
        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            string connectionString = "server=INL685;database=Soti;trusted_connection=true";
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand cmd = new SqlCommand(connectionString, sqlConnection);

            string bookId = BookIdTextBox.Text;
            string title = TitleTextBox.Text;
            string description = DescriptionTextBox.Text;
            string author = AuthorTextBox.Text;
            string price = PriceTextBox.Text;
            string rating = RatingTextBox.Text;

            string query = "update Books set " +
                "title = '" + title + "', " +
                "description = '" + description + "', " +
                "author = '" + author + "', " +
                "price = '" + price + "', " +
                "rating = '" + rating + "' " +
                "where id = " + Int32.Parse(bookId);


            cmd.CommandText = query;
            int row = cmd.ExecuteNonQuery();
            ResultLable.Text = "(" + row + " rows) affected";
            sqlConnection.Close();
        }
    }
}
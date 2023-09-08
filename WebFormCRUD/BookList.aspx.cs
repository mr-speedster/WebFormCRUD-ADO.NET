using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormCRUD
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "server=INL685;database=Library;trusted_connection=true";
            SqlConnection sqlConnection = new SqlConnection(connectionString);

            SqlDataAdapter dataAdapter = new SqlDataAdapter("select * from Books", sqlConnection);
            DataSet ds = new DataSet();
            dataAdapter.Fill(ds);

            BookGridView.DataSource = ds.Tables[0];
            BookGridView.DataBind();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookAdd.aspx");
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookUpdate.aspx");
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookDelete.aspx");
        }

        protected void BookGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
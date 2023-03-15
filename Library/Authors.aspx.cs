using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;

namespace Library
{
    public partial class Authors : Page
    {
        /*private const string ConnectionString = @"data source=(LocalDB)\MSSQLLocalDB;integrated security=True;";
        readonly SqlConnection sqlCon = new SqlConnection(ConnectionString);*/

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        /*void getData()
        {
            if (sqlCon.State == ConnectionState.Closed) {
                sqlCon.Open();
            }

            SqlDataAdapter sqlData = new SqlDataAdapter("PRC_AUTHORS_VIEW", sqlCon);
            sqlData.SelectCommand.CommandType = CommandType.StoredProcedure; 
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            sqlCon.Close();
            gv_authors.DataSource = dataTable;
            gv_authors.DataBind();
        }*/
    }
}
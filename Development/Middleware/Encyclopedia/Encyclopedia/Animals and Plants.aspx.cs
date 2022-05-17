using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Encyclopedia
{
    public partial class Animals_and_Plants : System.Web.UI.Page
    {

        MySqlConnection connection = new MySqlConnection("datasource=10.145.0.233;port=3306;username=user;password=123456");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void FollowBtn_Click(object sender, EventArgs e)
		{
            string selectQuery = "SELECT * FROM encyclopedia.user_category";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();

            {

                string connectionString = "datasource=10.145.0.233;port=3306;username=user;password=123456; database=encyclopedia;";
                string iquery = "INSERT INTO user_category(CategoryID,UserID) VALUES (1,2)";

                MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                commandDatabase.CommandTimeout = 60;

                try
                {
                    databaseConnection.Open();
                    MySqlDataReader myReader = commandDatabase.ExecuteReader();
                    databaseConnection.Close();
                }
                catch (Exception ex)
                {
                    // Show any error message.
                    MessageBox.Show(ex.Message);
                }

                MessageBox.Show("followed category sucessfully");
            }

            connection.Close();
        }
	}
}
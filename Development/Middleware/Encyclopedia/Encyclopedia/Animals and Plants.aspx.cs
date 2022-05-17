using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

using System.Windows.Forms;
namespace Encyclopedia
{
    public partial class Animals_and_Plants : System.Web.UI.Page
    {
        public static int UserID;

        public static int CatID = 4;
        MySqlCommand command;
        MySqlDataReader mdr;
        static string connstring = "datasource=10.145.0.233;port=3306;username=user;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
            string Date = "";
            var followedCat = new Dictionary<int, string>();
            UserID = 16;
            connection.Open();
            string selectQuery = string.Format("SELECT LoginDate FROM user WHERE UserID = {0};", UserID);
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                string logindate = mdr.GetString(0);
                Date = logindate.Substring(0, 9);
            }
            mdr.Close();

            string selectQuery1 = string.Format("SELECT user_category.CategoryID, category.type FROM user_category INNER join category on user_category.CategoryID = category.CategoryID WHERE user_category.UserID = {0};", UserID);
            command = new MySqlCommand(selectQuery1, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                followedCat.Add(mdr.GetInt32(0), mdr.GetString(1));
            }
            mdr.Close();

            string selectQuery2 = string.Format("Select article.Name,content.categoryID from article INNER join content on article.ContentID = content.ContentID WHERE PublishedDate > '{0}';", Date);
            command = new MySqlCommand(selectQuery2, connection);
            mdr = command.ExecuteReader();
            if (mdr.HasRows)
                Notifications.Items.Add("New Articles are Added");
            while (mdr.Read())
            {
                if (followedCat.ContainsKey(mdr.GetUInt16(1)))
                {
                    Notifications.Items.Add("New Article added to " + followedCat[mdr.GetUInt16(1)] + " titled: " + mdr.GetString(0));
                }
            }
            mdr.Close();

        }

        protected void FollowBtn_Click(object sender, EventArgs e)
        {
            followSpecificCategory();
        }
        protected void followSpecificCategory()
        {
            string selectQuery = "SELECT * FROM encyclopedia.user_category";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();

            {

                string connectionString = "datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;";
                string iquery = "INSERT INTO user_category(CategoryID,UserID) VALUES (" + CatID + "," + UserID + ")";

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
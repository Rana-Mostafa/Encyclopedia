using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;

namespace Encyclopedia
{
    public partial class Publish_Article : System.Web.UI.Page
    {
        public static int UserID = 16;
        MySqlCommand command;
        MySqlDataReader mdr;
        static string connstring = "datasource=10.145.0.233;port=3306;username=user;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
            string selectQuery = string.Format("SELECT type FROM category;");
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                categorey.Items.Add(mdr.GetString(0));
            }
            mdr.Close();
        }

        protected void PostBtn_Click(object sender, EventArgs e)
        {
            Session["LoginDate"] = DateTime.Now.ToString();
            HtmlTextArea ArtContent = (HtmlTextArea)(form1.FindControl("ArtContent"));
            string AContent = ArtContent.Value;
            string ATitle = AName.Text;
            int ACatID = 0;
            string Language = "English";
            int ContentID = 0;
            //Get ContentID
            string selectQuery = string.Format("SELECT Max(ContentID) from content;");
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                if (mdr["Max(ContentID)"] == DBNull.Value)
                    ContentID = 1;

                else
                {
                    ContentID = mdr.GetInt16(0);
                    ContentID++;
                }
            }
            mdr.Close();

            //CategoryID
            string selectQuery1 = string.Format("SELECT CategoryID from category where type= '{0}';", categorey.SelectedItem.ToString());
            command = new MySqlCommand(selectQuery1, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                ACatID = mdr.GetInt16(0);
            }
            mdr.Close();

            string selectQuery2 = string.Format("INSERT INTO `content`( `ContentID`,`name`, `UserID`, `CategoryID`) VALUES({0}, '{1}', {2},{3})", ContentID, ATitle, UserID, ACatID);
            command = new MySqlCommand(selectQuery2, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
            }
            mdr.Close();

            string selectQuery3 = string.Format("INSERT INTO `article`( `Name`, `ArticleContent`, `Language`,`PublishedDate`, `ContentID`) VALUES ('{0}','{1}','{2}','{3}',{4});", ATitle, AContent, Language, Session["LoginDate"], ContentID);
            command = new MySqlCommand(selectQuery3, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                MessageBox.Show("Article Added Successful!");
            }
            mdr.Close();
        }
    }
}
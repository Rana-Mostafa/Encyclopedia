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
    public partial class Publish_Article1 : System.Web.UI.Page
    {
        MySqlCommand command;
        MySqlDataReader mdr;
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            categorey.Items.Clear();
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

            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            Session["LoginDate"] = DateTime.Now.ToString();
            HtmlTextArea ArtContent = (HtmlTextArea)(form1.FindControl("ArtContent"));
            string AContent = ArtContent.Value;
            string ATitle = ArtName.Text;
            int ACatID = 0;
            string Language = "English";
            int ContentID = 0;
            int AID = 0;

            if (AContent == "" || ATitle == "")
                MessageBox.Show("Please enter all the required fields", "Error");

            else
            {
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

                string selectQuery5 = string.Format("SELECT Max(ArticleID) from article;");
                command = new MySqlCommand(selectQuery5, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                    if (mdr["Max(ArticleID)"] == DBNull.Value)
                        AID = 1;

                    else
                    {
                        AID = mdr.GetInt16(0);
                        AID++;
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
                 mdr.Close();

                string selectQuery3 = string.Format("INSERT INTO `article`(`ArticleID`,  `Name`, `ArticleContent`, `Language`,`PublishedDate`, `ContentID`) VALUES ({0},'{1}','{2}','{3}','{4}',{5});", AID,ATitle, AContent, Language, Session["LoginDate"], ContentID);
                command = new MySqlCommand(selectQuery3, connection);
                mdr = command.ExecuteReader();
                if (mdr.RecordsAffected==1)
                {
                    MessageBox.Show("Article Added Successful!");
                }
                mdr.Close();
                    }
        }
    
        

        protected void Birds_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Birds and Parrots' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Birds and Parrots.aspx?CATID=" + CatID + "&USERID=" + UserID);

        }

        protected void History_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'History' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());

            }
            Response.Redirect("History.aspx?CATID=" + CatID + "&USERID=" + UserID);
            mdr.Close();
        }

        protected void Space_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Space and Universe' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Space and Universe.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void Animals_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Animal and Plants' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Animals and Plants.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void pubArt_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            Response.Redirect("Publish Article.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void upVideo_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            mdr.Close();
            Response.Redirect("Upload Video.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void upRecord_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            Response.Redirect("Upload Record.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            Response.Redirect("Home Page.aspx?USERID=" + UserID);
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Looged out successfully");
            Response.Redirect("Unregisterd-Home.aspx");

        }

    }
}
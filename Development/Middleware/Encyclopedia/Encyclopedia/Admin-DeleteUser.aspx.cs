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
    public partial class Admin_DeleteUser : System.Web.UI.Page
    {
        MySqlCommand command;
        MySqlDataReader mdr;
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            string userName = username.Text;
            string userEmail = useremail.Text;
            int UserID = 0;
            List<int> ContentID = new List<int>();
            string selectQuery = string.Format("SELECT UserID FROM user WHERE Username = '{0}' and Email = '{1}';", userName, userEmail);
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                UserID = mdr.GetInt16(0);
            }
            mdr.Close();

            string selectQuery1 = string.Format("DELETE FROM `user_category` WHERE UserID = '{0}';", UserID);
            command = new MySqlCommand(selectQuery1, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
                UserID = mdr.GetInt16(0);
            }
            mdr.Close();

            string selectQuery2 = string.Format("SELECT `ContentID` FROM `content` WHERE `UserID`='{0}'", UserID);
            command = new MySqlCommand(selectQuery2, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                ContentID.Add(mdr.GetInt16(0));
            }
            mdr.Close();

            string selectQuery3, selectQuery4;
            for (int i = 0; i < ContentID.Count; i++)
            {
                selectQuery3 = string.Format("select ArticleID FROM `article` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                command = new MySqlCommand(selectQuery3, connection);
                mdr = command.ExecuteReader();
                if (mdr.HasRows)
                {
                    mdr.Close();
                    selectQuery4 = string.Format("DELETE FROM `article` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                    command = new MySqlCommand(selectQuery4, connection);
                    mdr = command.ExecuteReader();
                    mdr.Read();
                    mdr.Close();
                    continue;
                }

                else
                {

                    mdr.Close();
                    selectQuery3 = string.Format("select VideoID FROM `video` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                    command = new MySqlCommand(selectQuery3, connection);
                    mdr = command.ExecuteReader();
                    if (mdr.HasRows)
                    {
                        mdr.Close();
                        selectQuery4 = string.Format("DELETE FROM `video` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                        command = new MySqlCommand(selectQuery4, connection);
                        mdr = command.ExecuteReader();
                        mdr.Read();
                        mdr.Close();
                        continue;
                    }

                    else
                    {

                        mdr.Close();

                        selectQuery3 = string.Format("select VoiceRecID FROM `voice_rec` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                        command = new MySqlCommand(selectQuery3, connection);
                        mdr = command.ExecuteReader();
                        if (mdr.HasRows)
                        {
                            mdr.Close();
                            selectQuery4 = string.Format("DELETE FROM `voice_rec` WHERE `ContentID` = '{0}'", ContentID.ElementAt(i));
                            command = new MySqlCommand(selectQuery4, connection);
                            mdr = command.ExecuteReader();
                            mdr.Read();
                            mdr.Close();
                            continue;
                        }
                    }
                }
                mdr.Close();


            }

            string selectQuery5 = string.Format("DELETE FROM  `content` WHERE `UserID`='{0}'", UserID);
            command = new MySqlCommand(selectQuery5, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
            }
            mdr.Close();

            string selectQuery6 = string.Format("DELETE FROM  `user` WHERE `UserID`='{0}'", UserID);
            command = new MySqlCommand(selectQuery6, connection);
            mdr = command.ExecuteReader();
            if (mdr.Read())
            {
            }
            mdr.Close();

            MessageBox.Show("User Deleted sucessfully");
        }

        protected void Birds_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Birds and Parrots' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Admin-Birds and Parrots.aspx?CATID=" + CatID);

        }

        protected void History_Click(object sender, EventArgs e)
        {
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'History' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                int CatID = int.Parse(mdr[0].ToString());
                Response.Redirect("Admin-History.aspx?CATID=" + CatID);

            }
            mdr.Close();
        }

        protected void Space_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Space and Universe' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Admin-Space and Universe.aspx?CATID=" + CatID);
        }

        protected void Animals_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Animal and Plants' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Admin-Plants and Animals.aspx?CATID=" + CatID);
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-Home.aspx");

        }

        protected void DeleteContent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-Delete.aspx");
        }

        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-DeleteUser.aspx");
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Looged out successfully");
            Response.Redirect("Unregisterd-Home.aspx");

        }
    }
}

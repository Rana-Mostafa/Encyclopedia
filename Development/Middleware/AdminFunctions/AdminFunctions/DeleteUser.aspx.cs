using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace AdminFunctions
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        MySqlCommand command;
        MySqlDataReader mdr;
        static string connstring = "datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string userName = username.Text;
            string userEmail = useremail.Text;
            int UserID = 0;
            List <int> ContentID = new List<int>();
            connection.Open();
            string selectQuery = string.Format("SELECT UserID FROM user WHERE Username = '{0}' and Email = '{1}';", userName,userEmail);
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
            for (int i=0;i<ContentID.Count;i++)
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
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System;
using System.Windows.Forms;

namespace Encyclopedia
{
    public partial class Upload_Record : System.Web.UI.Page
    {

        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
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
        protected void UploadRecordedVoice()
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            string ATitle = audioname.Text;
            int ACatID = 0;
            int AID = 0;
            int ContentID = 0;
            if (ATitle == "")
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

                string selectQuery3 = string.Format("SELECT Max(VoiceRecID) from voice_rec;");
                command = new MySqlCommand(selectQuery3, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                    if (mdr["Max(VoiceRecID)"] == DBNull.Value)
                        AID = 1;

                    else
                    {
                        AID = mdr.GetInt16(0);
                        AID++;
                    }
                }
                mdr.Close();
                if (FileUpload1.HasFile)

                {
                    string Extent = System.IO.Path.GetExtension(FileUpload1.FileName);
                    int s = FileUpload1.PostedFile.ContentLength;

                    //ystem.Windows.Forms.MessageBox.Show(s.ToString());

                    if (Extent.ToLower() == ".mp3")
                    {

                        if (s > 1048576 && s < 444444)
                        {
                            //20971520
                            //ystem.Windows.Forms.MessageBox.Show(s.ToString());

                            System.Windows.Forms.MessageBox.Show("The process of uploading the voice failed please try again");

                        }
                        else
                        {
                            //  FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                            string iquery = string.Format("INSERT INTO `voice_rec`(`VoiceRecID`, `VoiceRecName`, `VoiceContent`, `Player_Type`, `ContentID`) VALUES({0},'{1}','{2}','{3}',{4});", AID, ATitle, FileUpload1.FileName, " ", ContentID);

                            MySqlConnection databaseConnection = new MySqlConnection(connstring);
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
                                System.Windows.Forms.MessageBox.Show(ex.Message);
                            }

                            //   System.Windows.Forms.MessageBox.Show("followed category sucessfully");

                            System.Windows.Forms.MessageBox.Show("The voice is uploaded successfully");
                        }


                    }
                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Only mp3 extension");

                    }
                }
                else
                {

                    System.Windows.Forms.MessageBox.Show("Please choose a recorded voice");

                }
            }
        }


        protected void PostBtn_Click(object sender, EventArgs e)
        {
            UploadRecordedVoice();
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
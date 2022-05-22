using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Encyclopedia
{
    public partial class Upload_Video : System.Web.UI.Page
    {
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring); MySqlCommand command;
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

        protected void PostBtn_Click(object sender, EventArgs e)
        {
            UploadVideo();
        }

        protected void UploadVideo()
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            string VTitle = videoname.Text;
            int VCatID = 0;
            int VID = 0;
            int ContentID = 0;
            if (VTitle == "")
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
                    VCatID = mdr.GetInt16(0);
                }
                mdr.Close();

                string selectQuery2 = string.Format("INSERT INTO `content`( `ContentID`,`name`, `UserID`, `CategoryID`) VALUES({0}, '{1}', {2},{3})", ContentID, VTitle, UserID, VCatID);
                command = new MySqlCommand(selectQuery2, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                }
                mdr.Close();

                string selectQuery3 = string.Format("SELECT Max(VideoID) from video;");
                command = new MySqlCommand(selectQuery3, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                    if (mdr["Max(VideoID)"] == DBNull.Value)
                        VID = 1;

                    else
                    {
                        VID = mdr.GetInt16(0);
                        VID++;
                    }
                }
                mdr.Close();

                if (FileUpload1.HasFile)

                {
                    string Extent = System.IO.Path.GetExtension(FileUpload1.FileName);
                    int s = FileUpload1.PostedFile.ContentLength;

                    //ystem.Windows.Forms.MessageBox.Show(s.ToString());

                    if (Extent.ToLower() == ".mp4" || Extent.ToLower() == ".mkv")
                    {

                        if (s > 667552589988 && s < 56666)
                        {
                            //20971520
                            System.Windows.Forms.MessageBox.Show(s.ToString());

                            System.Windows.Forms.MessageBox.Show("The process of uploading the video failed please try again");

                        }
                        else
                        {
                            string iquery = string.Format("INSERT INTO `video` (`VideoID`, `VideoName`, `VideoContent`, `Resolution`, `ContentID`) VALUES({0},'{1}','{2}','{3}',{4});", VID, VTitle, FileUpload1.FileName, " ", ContentID);

                            MySqlConnection databaseConnection = new MySqlConnection(connstring);
                            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                            commandDatabase.CommandTimeout = 60;

                            try
                            {
                                databaseConnection.Open();
                                MySqlDataReader myReader = commandDatabase.ExecuteReader();
                                databaseConnection.Close();
                                System.Windows.Forms.MessageBox.Show("The video is uploaded successfully");

                            }
                            catch (Exception ex)
                            {
                                // Show any error message.
                                System.Windows.Forms.MessageBox.Show(ex.Message);
                            }


                        }


                    }
                    else
                    {
                        System.Windows.Forms.MessageBox.Show("Please select a video only");

                    }
                }
                else
                {

                    System.Windows.Forms.MessageBox.Show("Please select a video only");

                }
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System;

namespace Encyclopedia
{
    public partial class Upload_Record : System.Web.UI.Page
    {

        public static int UserID = 16;
        MySqlConnection connection = new MySqlConnection("datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;");
        MySqlCommand command;
        MySqlDataReader mdr;
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
        protected void UploadRecordedVoice()
        {
            string ATitle = audioname.Text;
            int ACatID = 0;
            int AID = 0;
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

                        System.Windows.Forms.MessageBox.Show("the process of uploading the voice failed please try again");

                    }
                    else
                    {
                        //  FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        string connectionString = "datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;";
                        string iquery = string.Format("INSERT INTO `voice_rec`(`VoiceRecID`, `VoiceRecName`, `VoiceContent`, `Player_Type`, `ContentID`) VALUES({0},'{1}','{2}','{3}',{4});", AID, ATitle, FileUpload1.FileName, " ", ContentID);

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
                            System.Windows.Forms.MessageBox.Show(ex.Message);
                        }

                        //   System.Windows.Forms.MessageBox.Show("followed category sucessfully");

                        System.Windows.Forms.MessageBox.Show("the voice is uploaded successfully");
                    }


                }
                else
                {
                    System.Windows.Forms.MessageBox.Show("only mp3 extension");

                }
            }
            else
            {

                System.Windows.Forms.MessageBox.Show("Please choose a recorded voice");

            }
        }


        protected void PostBtn_Click(object sender, EventArgs e)
        {
            UploadRecordedVoice();
        }
    }
}
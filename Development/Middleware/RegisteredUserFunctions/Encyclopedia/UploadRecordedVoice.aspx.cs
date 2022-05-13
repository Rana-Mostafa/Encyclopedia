
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
    public partial class WebForm2 : System.Web.UI.Page
    {
        MySqlConnection connection = new MySqlConnection("datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UploadRecordedVoice()
        {
            connection.Open();
            string selectQuery = "SELECT * FROM encyclopedia.voice_rec";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
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
                        string iquery = "INSERT INTO voice_rec(VoiceRecName ,VoiceContent,VoiceRecID,ContentID) VALUES ('" + TextBox1.Text.ToString() + "','" + FileUpload1.FileName + "',2002,1)";

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            UploadRecordedVoice();
        }
    }
}
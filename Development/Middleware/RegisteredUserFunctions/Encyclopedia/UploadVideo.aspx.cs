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
    public partial class WebForm3 : System.Web.UI.Page
    {

        MySqlConnection connection = new MySqlConnection("datasource = 10.145.0.233; port=3306;username=user;password=123456;database=encyclopedia;");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UploadVideo()
        {
            connection.Open();
            string selectQuery = "SELECT * FROM encyclopedia.video";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
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

                        System.Windows.Forms.MessageBox.Show("the process of uploading the video failed please try again");

                    }
                    else
                    {
                        //  FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                        string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=encyclopedia;";
                        string iquery = "INSERT INTO video(VideoName,VideoContent,VideoID,ContentID) VALUES ('" + TextBox1.Text.ToString() + "','" + FileUpload1.FileName + "',2002,1)";

                        MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                        MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                        commandDatabase.CommandTimeout = 60;

                        try
                        {
                            databaseConnection.Open();
                            MySqlDataReader myReader = commandDatabase.ExecuteReader();
                            databaseConnection.Close();
                            System.Windows.Forms.MessageBox.Show("the video is uploaded successfully");

                        }
                        catch (Exception ex)
                        {
                            // Show any error message.
                            System.Windows.Forms.MessageBox.Show(ex.Message);
                        }

                        //   System.Windows.Forms.MessageBox.Show("followed category sucessfully");

                    }


                }
                else
                {
                    System.Windows.Forms.MessageBox.Show("please select a video only");

                }
            }
            else
            {

                System.Windows.Forms.MessageBox.Show("please select a video only");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UploadVideo();
        }
    }
 }

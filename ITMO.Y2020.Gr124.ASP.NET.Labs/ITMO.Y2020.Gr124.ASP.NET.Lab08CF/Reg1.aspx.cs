using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using ITMO.Y2020.Gr124.ASP.NET.Lab08CF;

namespace ITMO.Y2020.Gr124.ASP.NET.Lab08CF
{
    public partial class Reg1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (IsPostBack)
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;

                GuestResponse rsvp = new GuestResponse(name.Text,
                email.Text, phone.Text, CheckBoxYN.Checked);

                if (CheckBoxYN.Checked)
                {
                    Report report1 = new Report(TextBoxTitle.Text, TextBoxTextAnnot.Text);
                    rsvp.Reports.Add(report1);
                }
                if (TextBoxTitle2.Text != "" || TextBoxTextAnnot2.Text != "")
                {
                    Report report2 = new Report(TextBoxTitle2.Text, TextBoxTextAnnot2.Text);
                    rsvp.Reports.Add(report2);
                }

                try
                {
                   
                    SampleContext context = new SampleContext();
                    context.GuestResponses.Add(rsvp);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    Response.Redirect("Ошибка " + ex.Message);
                }


                //ResponseRepository.GetRepository().AddResponse(rsvp);

                //if (rsvp.WillAttend.HasValue && rsvp.WillAttend.Value)
                //{
                //    Response.Redirect("seeyouthere1.aspx");
                //}
                //else
                //{
                //    Response.Redirect("sorryyoucantcome1.aspx");
                //}

            }
        }
    }


    //public class SampleContext : DbContext
    //{
    //    public SampleContext() : base("SeminarBD")
    //    {

    //    }
    //    public DbSet<GuestResponse> GuestResponses { get; set; }
    //    public DbSet<Report> Reports { get; set; }

    //}

}
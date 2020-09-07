using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMO.Y2020.Gr124.ASP.NET.Lab05
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

                ResponseRepository.GetRepository().AddResponse(rsvp);

                if (rsvp.WillAttend.HasValue && rsvp.WillAttend.Value)
                {
                    Response.Redirect("seeyouthere1.aspx");
                }
                else
                {
                    Response.Redirect("sorryyoucantcome1.aspx");
                }

            }
        }
    }
}
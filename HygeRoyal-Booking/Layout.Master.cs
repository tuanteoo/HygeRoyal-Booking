using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HygeRoyal_Booking
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["IsSignIn"] != null && (bool)Session["IsSignIn"] == true)
            {
                button.Style["display"] = "none";
                avatar.Style["display"] = "flex";
                username.InnerText = HttpContext.Current.Session["UserName"].ToString();
            }

            string currentPage = System.IO.Path.GetFileName(Request.Path);

            if (currentPage.Equals("ZenVilla.aspx", StringComparison.OrdinalIgnoreCase))
            {
                ReplaceBackground("url(\"../../Content/images/zenvilla-landingpage.png\") no-repeat", "none", "cover", "white");
                username.Style["color"] = "white";
                person.Style["border-color"] = "white";
                person.Style["color"] = "white";
                heading.InnerHtml = "Your Home Away From<br>Home";
                paragraph.InnerHtml = "Zen Villas offers a warm and inviting retreat, providing the perfect blend of comfort and hospitality for a memorable stay.";
            }
            else if (currentPage.Equals("HygeResort.aspx", StringComparison.OrdinalIgnoreCase))
            {
                ReplaceBackground("url(\"../../Content/images/hygeresort-landingpage.png\") no-repeat", "none", "cover", "white");
                username.Style["color"] = "white";
                person.Style["border-color"] = "white";
                person.Style["color"] = "white";
                heading.InnerHtml = "Your Home Away From<br>Home";
                paragraph.InnerHtml = "Hyge Royal offers a warm and inviting retreat, providing the perfect blend of comfort and hospitality for a memorable stay.";
            }
            else if (currentPage.Equals("ZenVillaRooms.aspx", StringComparison.OrdinalIgnoreCase))
            {
                ReplaceBackground("none", "url(\"../../Content/images/zenroom-landingpage.png\") no-repeat !important", "cover !important", "black");
                banner__landingpade.Style["border-radius"] = "50px";
                heading.InnerHtml = "Experience the Serenity of<br>Our Zen Villa Rooms";
                paragraph.InnerHtml = "";
            }
            else if (currentPage.Equals("HygeResortRooms.aspx", StringComparison.OrdinalIgnoreCase))
            {
                ReplaceBackground("none", "url(\"../../Content/images/hyge-banner.png\") no-repeat !important", "cover !important", "black");
                banner__landingpade.Style["border-radius"] = "50px";
                heading.InnerHtml = "Experience the Serenity of<br>Our Hyge Royal Rooms";
                paragraph.InnerHtml = "";
            }
            else if (currentPage.Equals("BookingPayment.aspx", StringComparison.OrdinalIgnoreCase))
            {
                banner__landingpade.Style["display"] = "none";
            }
        }

        protected void ReplaceBackground(string backheader, string backbanner, string backsize, string color)
        {
            header.Style["background"] = backheader;
            header.Style["background-size"] = backsize;
            banner__landingpade.Style["background"] = backbanner;
            banner__landingpade.Style["background-size"] = backsize;
            nav_item1.Style["color"] = color;
            nav_item2.Style["color"] = color;
            nav_item3.Style["color"] = color;
            nav_item4.Style["color"] = color;
            nav_item5.Style["color"] = color;
        }

        protected void SignOut(object sender, EventArgs e)
        {
            Session["IsSignIn"] = false;
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }
    }
}
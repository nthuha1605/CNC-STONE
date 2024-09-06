using ASPSnippets.FaceBookAPI;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.GoogleAPI;
using System.Text.RegularExpressions;
using FShop.Models;

public partial class WebsiteMasterPage : System.Web.UI.MasterPage
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    cls_Alert alert = new cls_Alert();
    public string tencongty, phone, diachi, title1;
    protected void Page_Load(object sender, EventArgs e)
    {
        // Title 1

        var getprogroup = from tb in db.tbProductCates
                          where tb.productcate_parent == 0
                          orderby tb.productcate_position
                          select tb;
        rpdanhmucmobi.DataSource = getprogroup;
        rpdanhmucmobi.DataBind();
        // menu desktop
        rpMenuCha.DataSource = from tb in db.tbProductCates
                               where tb.productcate_parent == 0
                               orderby tb.productcate_position_menu
                               select new
                               {
                                   hidden = (from p in db.tbProductCates where tb.productcate_id == p.productcate_parent select p).Count() > 0 ? "" : "hidden",
                                   fa = (from p in db.tbProductCates where tb.productcate_id == p.productcate_parent select p).Count() > 0 ? "fa fa-angle-right" : "",
                                   tb.productcate_id,
                                   tb.productcate_parent,
                                   tb.productcate_title,
                                   tb.link_seo
                               };
        rpMenuCha.DataBind();
        rpMenuCon.DataSource = from tb in db.tbProductCates
                               where tb.productcate_parent == 0
                               orderby tb.productcate_position_menu
                               select new
                               {
                                   hidden = (from p in db.tbProductCates where tb.productcate_id == p.productcate_parent select p).Count() > 0 ? "" : "hidden",
                                   fa = (from p in db.tbProductCates where tb.productcate_id == p.productcate_parent select p).Count() > 0 ? "fa fa-angle-right" : "",
                                   tb.productcate_id,
                                   tb.productcate_parent,
                                   tb.productcate_title,
                                   tb.link_seo
                               };
        rpMenuCon.DataBind();
        rpdanhmucmobile.DataSource = from tb in db.tbProductCates
                                     where tb.productcate_parent != 0 && tb.productcate_show == true
                                     orderby tb.productcate_position

                                     select tb;
        rpdanhmucmobile.DataBind();
        var listDiachi = (from dc in db.tbHomeContacts where dc.contact_id == 1 select dc).SingleOrDefault();
        tencongty = listDiachi.contact_hotline;
        phone = listDiachi.contact_phone;
        diachi = listDiachi.contact_address;

    }
    protected void rpdanhmucmobi_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpcatemobi = e.Item.FindControl("rpcatemobi") as Repeater;
        int _id = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "productcate_id").ToString());
        rpcatemobi.DataSource = from tb in db.tbProductCates
                                where tb.productcate_parent == _id
                                select tb;
        rpcatemobi.DataBind();
    }
    protected void rpdanhmuc_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpcate = e.Item.FindControl("rpcate") as Repeater;
        int _id = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "productcate_id").ToString());
        rpcate.DataSource = from tb in db.tbProductCates
                            where tb.productcate_parent == _id
                            select tb;
        rpcate.DataBind();
    }
    protected void rpMenuCha_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpMenuCon = e.Item.FindControl("rpMenuCon") as Repeater;
        int prcID = int.Parse(DataBinder.Eval(e.Item.DataItem, "productcate_id").ToString());
        rpMenuCon.DataSource = from tb in db.tbProductCates
                               where tb.productcate_parent == prcID && tb.productcate_position_submenu !=null
                               orderby tb.productcate_position_submenu
                               select new
                               {
                                   tb.productcate_title,
                                   tb.productcate_id,
                                   tb.link_seo
                               };
        rpMenuCon.DataBind();
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    public string giagiam, bnlink, bnimage, popup, divhoasinh, divbanhsinh;
    string danhmuc = "", tinh = "", huyen = "";
    public string seo_keyword, seo_des, seo_link, seo_title, seo_image;
    protected void Page_Load(object sender, EventArgs e)
    {
        var listSeo = (from s in db.tbSEOs where s.seo_id == 1 select s).SingleOrDefault();
        seo_keyword = listSeo.seo_keyworld;
        seo_des = listSeo.seo_description;
        seo_link = listSeo.seo_link;
        seo_title = listSeo.seo_title;
        seo_image = listSeo.seo_image;
        rpslide.DataSource = from sl in db.tbHomeSlides select sl;
        rpslide.DataBind();
        //var getprogroup = from tb in db.tbProductCates
        //                  where tb.productcate_parent == 0
        //                  orderby tb.productcate_position
        //                  select new { 
        //                    tb.productcate_title,
        //                    tb.productcate_id,
        //                    tb.link_seo,
        //                    down = (from c in db.tbProductCates where c.productcate_parent == tb.productcate_id select c).Count()>0 ?"fa fa-angle-down":""
        //                  };
        //rpMenuTrai_Cate.DataSource = getprogroup;
        //rpMenuTrai_Cate.DataBind();
        var getProductTieuBieu = (from tb in db.tbProducts
                                  orderby tb.product_tieubieu descending
                                  select new
                                  {
                                      tb.product_id,
                                      tb.product_title,
                                      tb.product_image,
                                      tb.product_price,
                                      tb.link_seo
                                  }).Take(20);
        //rphotdeal.DataSource = getProductTieuBieu;
        //rphotdeal.DataBind();
        var getProductNoiBat = (from tb in db.tbProducts
                                  orderby tb.product_tieubieu descending
                                  select new
                                  {
                                      tb.product_id,
                                      tb.product_title,
                                      tb.product_image,
                                      tb.product_price,
                                      tb.link_seo
                                  }).Take(6);
        //rpSanPhamNoiBat.DataSource = getProductNoiBat;
        //rpSanPhamNoiBat.DataBind();
        // List danh sách các loại sản phẩm
        var list = from c in db.tbProductCates
                       //join g in db.tbProductGroups on c.productgroup_id equals g.productgroup_id
                   where c.productcate_HienThiTrangChu == true
                   orderby c.productcate_position
                   select c;
        rpParent.DataSource = list;
        rpParent.DataBind();
        //  // List tin tức
        //  rpTinTuc.DataSource = (from tt in db.tbNews orderby tt.news_createdate descending select tt).Take(4);
        //  rpTinTuc.DataBind();
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
    protected void rpParent_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpSanPham = e.Item.FindControl("rpSanPham") as Repeater;
        int _id = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "productcate_id").ToString());
        var listSanPham = (from tb in db.tbProducts
                                  where tb.productcate_id == _id
                                  orderby tb.product_position
                                  select new
                                  {
                                      tb.product_id,
                                      tb.product_title,
                                      tb.product_image,
                                      tb.product_price,
                                      tb.link_seo
                                  }).Take(10);
        rpSanPham.DataSource = listSanPham;
        rpSanPham.DataBind();
    }
    protected void rpMenuCha_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater rpMenuCon = e.Item.FindControl("rpMenuCon") as Repeater;
        int prcID = int.Parse(DataBinder.Eval(e.Item.DataItem, "productcate_id").ToString());
        rpMenuCon.DataSource = from tb in db.tbProductCates
                               where tb.productcate_parent == prcID
                               orderby tb.productcate_position
                               select new
                               {
                                   tb.productcate_title,
                                   tb.productcate_id,

                               };
        rpMenuCon.DataBind();
    }
}
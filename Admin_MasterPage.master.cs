using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    dbcsdlDataContext db = new dbcsdlDataContext();
    public string adminName;
    public int count=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminLogined"] != null)
        {
            admin_User getusername = Session["AdminLogined"] as admin_User;
            adminName = getusername.username_fullname;
            loadMenu();
            count = (from c in db.tbTheoYeuCaus where c.yeucau_status == false select c).Count();
        }
        else
        {
            Response.Redirect("/admin-login");
        }
        //ScriptManager.RegisterClientScriptBlock(Page, this.GetType(), "Alert", "alert('" + HttpContext.Current.Request.RawUrl.ToString() + "');", true);
    }
    protected void btnLogout_ServerClick(object sender, EventArgs e)
    {
        Session["AdminLogined"] = null;
        Response.Redirect("/admin-login");
    }
    private void loadMenu()
    {
        admin_User logedMember = (admin_User)Session["AdminLogined"];

        int _idUser = Convert.ToInt32(logedMember.username_id);
        int _idGUer = Convert.ToInt32(logedMember.groupuser_id);

        var getMenu = from gum in db.admin_AccessGroupUserModules
                      join m in db.admin_Modules on gum.module_id equals m.module_id
                      where gum.groupuser_id == _idGUer
                      && gum.gum_active == true
                      && (from f in db.admin_Forms
                          join guf in db.admin_AccessGroupUserForms on f.form_id equals guf.form_id
                          join uf in db.admin_AccessUserForms on guf.form_id equals uf.form_id
                          where f.module_id == m.module_id
                          && guf.groupuser_id == _idGUer
                          && guf.guf_active == true
                          && uf.uf_active == true
                          && uf.username_id == _idUser
                          select f).Count() > 0
                      select new
                      {
                          gum.module_id,
                          m.module_name
                      };

        rpModule.DataSource = getMenu;
        rpModule.DataBind();
    }
    protected void rpModule_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        admin_User logedMember = (admin_User)Session["AdminLogined"];
        int _idGUser = Convert.ToInt32(logedMember.groupuser_id);
        int _idUser = Convert.ToInt32(logedMember.username_id);
        Repeater rpForm = e.Item.FindControl("rpForm") as Repeater;
        int _idForm = Convert.ToInt32(DataBinder.Eval(e.Item.DataItem, "module_id").ToString());

        var getForm = from tb in db.admin_Forms
                      join gu in db.admin_GroupUsers on _idGUser equals gu.groupuser_id
                      join guf in db.admin_AccessGroupUserForms on tb.form_id equals guf.form_id
                      join uf in db.admin_AccessUserForms on tb.form_id equals uf.form_id
                      where tb.module_id == _idForm
                      && tb.form_active == true
                      && guf.groupuser_id == gu.groupuser_id
                      && guf.guf_active == true
                      && uf.username_id == _idUser
                      && uf.uf_active == true
                      select tb;

        rpForm.DataSource = getForm;
        rpForm.DataBind();
    }
}

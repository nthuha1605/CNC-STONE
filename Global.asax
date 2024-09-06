<%@ Application Language="C#" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        cls_routes routes = new cls_routes();
        routes.RegisterRoutes(System.Web.Routing.RouteTable.Routes);
        // Code that runs on application startup
      
    }
    DateTime getWeek(DateTime date)
    {
        var dayOfwe = date.DayOfWeek;
        if (dayOfwe == DayOfWeek.Sunday)
        {
            return date.AddDays(-6);
        }
        int offset = dayOfwe - DayOfWeek.Monday;
        return date.AddDays(-offset);
    }
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }
    //protected void Application_BeginRequest(Object sender, EventArgs e)
    //{
     
    //    if (HttpContext.Current.Request.Url.AbsolutePath.ToString().ToLower() == "/home")
    //    {
    //        HttpContext.Current.Response.Status = "301 Moved Permanently";
    //        HttpContext.Current.Response.AddHeader("Location", Request.Url.ToString().ToLower().Replace("/home", ""));
    //    }
    //    HttpApplication app = (HttpApplication)sender;
    //    string acceptEncoding = app.Request.Headers["Accept-Encoding"];
    //    System.IO.Stream prevUncompressedStream = app.Response.Filter;

    //    if (acceptEncoding == null || acceptEncoding.Length == 0)
    //        return;

    //    acceptEncoding = acceptEncoding.ToLower();

    //    if (acceptEncoding.Contains("gzip"))
    //    {
    //        // gzip
    //        app.Response.Filter = new System.IO.Compression.GZipStream(prevUncompressedStream,
    //            System.IO.Compression.CompressionMode.Compress);
    //        app.Response.AppendHeader("Content-Encoding",
    //            "gzip");
    //    }
    //    else if (acceptEncoding.Contains("deflate"))
    //    {
    //        // defalte
    //        app.Response.Filter = new System.IO.Compression.DeflateStream(prevUncompressedStream,
    //            System.IO.Compression.CompressionMode.Compress);
    //        app.Response.AppendHeader("Content-Encoding",
    //            "deflate");
    //    }
    //}
    void Session_Start(object sender, EventArgs e) 
    {
        //dbcsdlDataContext countTC = new dbcsdlDataContext();
        //var checkTC = from tb in countTC.TB_ThongKes
        //              where tb.ThoiGian == DateTime.Now
        //              select tb;
        //if (checkTC.Count() <= 0)
        //{
        //    TB_ThongKe addTK = new TB_ThongKe();
        //    addTK.SoTruyCap = 1;
        //    addTK.ThoiGian = DateTime.Now.Date;
        //    countTC.TB_ThongKes.InsertOnSubmit(addTK);
        //    countTC.SubmitChanges();
        //}
        //else
        //{
        //    TB_ThongKe addTk = checkTC.FirstOrDefault();
        //    addTk.SoTruyCap = addTk.SoTruyCap + 1;
        //    countTC.SubmitChanges();
        //}
        //// Code that runs when a new session is started
        //Session.Timeout = 150;
        //Application.Lock();
        //Application["visitors_online"] = Convert.ToInt32(Application["visitors_online"]) + 1;
        //Application.UnLock();

        //dbcsdlDataContext db = new dbcsdlDataContext();
        //var thongKe = from tb in db.TB_ThongKes
        //              select tb;
        //Application["HomNay"] = thongKe.Where(x => x.ThoiGian == DateTime.Now).Single().SoTruyCap;
        //Application["TuanNay"] = thongKe.Where(x => x.ThoiGian >= getWeek(DateTime.Now) && x.ThoiGian <= DateTime.Now).Sum(tong => tong.SoTruyCap);
        //Application["ThangNay"] = thongKe.Where(x => x.ThoiGian.Value.Month == DateTime.Now.Month).Sum(tong => tong.SoTruyCap);
        //Application["Tong"] = thongKe.Sum(tong => tong.SoTruyCap);
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        //Application.Lock();
        //Application["visitors_online"] = Convert.ToUInt32(Application["visitors_online"]) - 1;
        //Application.UnLock();

    }
       
</script>

<%@ Page Language="C#" %>
<script runat=server>
    Response.Clear();
    Response.ContentType = "text/xml; charset=utf-8";
    using (var client = new System.Net.WebClient())
    {
        var data = client.DownloadData("https://raw.githubusercontent.com/cake-build/example/master/tools/packages.config");
        Response.BinaryWrite(data);
    }
    Response.End();
</script>
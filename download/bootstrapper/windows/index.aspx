<%@ Page Language="C#" %>
<script runat=server>
    Response.Clear();
    Response.ContentType = "text/plain; charset=utf-8";
    using (var client = new System.Net.WebClient())
    {
        var data = client.DownloadData("https://raw.githubusercontent.com/cake-build/resources/master/build.ps1");
        Response.BinaryWrite(data);
    }
    Response.End();
</script>
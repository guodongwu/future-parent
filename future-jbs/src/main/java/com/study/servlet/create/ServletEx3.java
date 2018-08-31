package com.study.servlet.create;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.swing.border.TitledBorder;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;


public class ServletEx3 extends HttpServlet {
    private static final String UPLOAD_DIRECTORY = "upload";

    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB

    public  ServletEx3(){}



    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("哈哈");
        try {
            upload(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //doGet(req, resp);
    }

    public boolean upload(HttpServletRequest request,HttpServletResponse response) throws Exception {
        PrintWriter writer = response.getWriter();

        if(!ServletFileUpload.isMultipartContent(request)){
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();
            return false;
        }
        DiskFileItemFactory factory=new DiskFileItemFactory();
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload=new ServletFileUpload(factory);
        upload.setSizeMax(MAX_REQUEST_SIZE);
        upload.setHeaderEncoding("UTF-8");
        String uploadPath=request.getSession().getServletContext().getContextPath()+File.separator+UPLOAD_DIRECTORY;
        File uploadDir=new File(uploadPath);
        if(!uploadDir.exists()){
            uploadDir.mkdir();
        }
        List<FileItem> formItems = upload.parseRequest(request);

        if (formItems != null && formItems.size() > 0) {
            // 迭代表单数据
            for (FileItem item : formItems) {
                // 处理不在表单中的字段
                if (!item.isFormField()) {
                    String fileName = new File(item.getName()).getName();
                    String filePath = uploadPath + File.separator + fileName;
                    File storeFile = new File(filePath);
                    // 在控制台输出文件的上传路径
                    System.out.println(filePath);
                    // 保存文件到硬盘
                    item.write(storeFile);
                    request.setAttribute("message",
                            "文件上传成功!");
                }
            }
        }
        return true;


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        //==============================================

        String title = "使用 GET 方法读取表单数据";
        //=================Cookie========================
        Cookie cookie=new Cookie("user", URLEncoder.encode(req.getParameter("name"),"UTF-8"));
        cookie.setMaxAge(60*60);
        resp.addCookie(cookie);
        //=================Session=======================
        HttpSession session=req.getSession();
        Date createTime = new Date(session.getCreationTime());
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        Integer visitCount=new Integer(0);
        String key=new String(req.getParameter("name"));
        if(session.getAttribute("visitCount")==null){
            session.setAttribute("visitCount",new Integer(0));
        }
        if(session.isNew()){
            session.setAttribute("user",key);
        }else{
            visitCount= (Integer) session.getAttribute("visitCount");
            visitCount=visitCount+1;
            key= (String) session.getAttribute("user");
        }
        session.setAttribute("visitCount",visitCount);
        //===============================================
        resp.addIntHeader("Refresh",5);
        Calendar calendar=Calendar.getInstance();
        Date taskTime=calendar.getTime();

        String nowTime=sdf.format(taskTime);
        PrintWriter out = resp.getWriter();
        out.println(nowTime);

        // 处理中文
        String name =req.getParameter("name");
        String docType = "<!DOCTYPE html> \n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                "  <li><b>站点名</b>："
                + name + "\n" +
                "  <li><b>网址</b>："
                + req.getParameter("url") + "\n" +
                "<li><b>复选框</b></li>"+
                req.getParameter("java")+"\n"+
                req.getParameter("net")+"\n"+
                req.getParameter("python")+"\n"+
                "</ul>\n" +
                "<table><tr><td>参数名称</td><td>参数值</td></tr>");


        Enumeration params=req.getParameterNames();
        while (params.hasMoreElements()){
            String param= (String) params.nextElement();
            out.println("<tr><td>"+param+"</td>");
            String [] value=req.getParameterValues(param);
            if(value.length==1){ //单个值
                String pvalue=value[0];
                if(pvalue.length()==0)
                    out.println("<td><i>没有值</i></td>");
                else
                    out.println("<td>"+pvalue+"</td>");
            }else{
                out.println("<td><ul>");
                for (int i=0;i<value.length;i++){
                    out.println("<li>"+value[i]);
                }
            }
            out.println("</tr>");
        }
        out.println("</table>");
        out.println("<h3>Header Info</h3>");
        params=req.getHeaderNames();
        while (params.hasMoreElements()){
            String pName= (String) params.nextElement();
            out.println("<div>"+pName);
            String value=req.getHeader(pName);
            out.println(":"+value+"</div>");
        }

        out.println(  "<h2 align=\"center\">Session 信息</h2>\n" +
                "<table border=\"1\" align=\"center\">\n" +
                "<tr bgcolor=\"#949494\">\n" +
                "  <th>Session 信息</th><th>值</th></tr>\n" +
                "<tr>\n" +
                "  <td>id</td>\n" +
                "  <td>" + session.getId() + "</td></tr>\n" +
                "<tr>\n" +
                "  <td>创建时间</td>\n" +
                "  <td>" +  sdf.format(createTime) +
                "  </td></tr>\n" +
                "<tr>\n" +
                "  <td>最后访问时间</td>\n" +
                "  <td>" + sdf.format(lastAccessTime) +
                "  </td></tr>\n" +
                "<tr>\n" +
                "  <td>用户 ID</td>\n" +
                "  <td>" + key +
                "  </td></tr>\n" +
                "<tr>\n" +
                "  <td>访问统计：</td>\n" +
                "  <td>" + visitCount + "</td></tr>\n" +
                "</table>\n");
        out.println(" </body> ");
        out.println("</html>");
    }
}

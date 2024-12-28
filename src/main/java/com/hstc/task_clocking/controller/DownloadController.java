package com.hstc.task_clocking.controller;

import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

@Controller
@RequestMapping("Download")
public class DownloadController {
    /**
     * 下载文件
     *
     * @param fileName 文件名字
     * @param response 请求协议
     * @throws Exception
     */
    @RequestMapping("getFile")
    public void getFile(@RequestParam("fileName") String fileName, @RequestParam(value = "identification", required = false) String identification,
                        HttpServletResponse response) throws Exception {

        String fileDirectory;
        fileDirectory = "C:/Users/heiyu/learning/java/task_clocking/src/main/webapp/document/student-submits/";

        if ("teacher".equals(identification)) {
            fileDirectory = "C:/Users/heiyu/learning/java/task_clocking/src/main/webapp/document/teacher-uploads/";
        }

        // 组合完整文件路径
        File readFile = new File(fileDirectory + fileName);
        if (!readFile.exists()) {
            response.sendError(404, "File not found!");
            return;
        }

        // 设置文件下载方式
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(fileName, "utf-8"));
        response.setContentType("application/octet-stream"); // 通用下载类型

        // 文件流传输
        FileInputStream fileInputStream = new FileInputStream(readFile);
        ServletOutputStream outputStream = response.getOutputStream();

        byte[] bytes = new byte[1024 * 10];
        int read;
        while ((read = fileInputStream.read(bytes)) != -1) {
            outputStream.write(bytes, 0, read);
        }

        // 关闭资源
        IOUtils.closeQuietly(fileInputStream);
        IOUtils.closeQuietly(outputStream);
    }
}

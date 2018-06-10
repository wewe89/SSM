package com.soecode.lyf.web;

import com.soecode.lyf.entity.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/licence")
public class LicenceController {
    @RequestMapping(value = "/common.html", method = RequestMethod.GET)
    private String htmlCommon(Model model) {

        return "linence_common";// WEB-INF/jsp/"list".jsp
    }
    @RequestMapping(value = "/common_add", method = RequestMethod.POST)
    private String common_add(HttpServletRequest request,
                             @RequestParam("name1") String name1,@RequestParam("name2") String name2,
                             @RequestParam("file1") MultipartFile file) throws Exception{
        System.out.println(name1);
        //如果文件不为空，写入上传路径
        if(!file.isEmpty()) {
            //上传文件路径
            String path = request.getServletContext().getRealPath("/upload/");
            System.out.println(path);
            //上传文件名
            String filename = file.getOriginalFilename();
            File filepath = new File(path,filename);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            file.transferTo(new File(path + File.separator + filename));
            return "linence_common";
        } else {
            return "error";
        }
    }
}

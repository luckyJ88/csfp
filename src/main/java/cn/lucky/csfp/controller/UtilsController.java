package cn.lucky.csfp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author:蒋凌鹏
 * @Date:2019/11/9
 * @Explain:csfp
 */
@Controller
public class UtilsController {

    /**
     *
     * @param idPhoto
     * @param request
     * @return
     * @throws IOException
     */
    @PostMapping(value = "/upload")
    @ResponseBody
    public Map<String, Object> upload(@RequestParam("idPhoto") MultipartFile idPhoto, HttpServletRequest request) throws IOException {


        //判断文件是否为空
        if (!idPhoto.isEmpty()) {
            //上传文件路径
            String uploadPath = request.getServletContext().getRealPath("/uploadfile");
            System.out.println(uploadPath+"=============================");
            //上传文件的文件名
            String fileName = idPhoto.getOriginalFilename();
            File uploadRealFile = new File(uploadPath, fileName);
            String fileUrl = uploadPath + "\\" + fileName;
            //判断路径是否存在，不存在就创建一个
            if (!uploadRealFile.getParentFile().exists()) {
                uploadRealFile.getParentFile().mkdirs();
            }
            idPhoto.transferTo(uploadRealFile);
            Map<String,Object> map = new HashMap<>();
            map.put("msg","文件上传成功");
            map.put("code",1);
            Map<String,Object> data = new HashMap<>();
            data.put("src",fileUrl);
            map.put("data",data);
            return map;
        } else {
            return null;
        }
    }

}

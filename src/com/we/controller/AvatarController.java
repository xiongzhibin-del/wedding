package com.we.controller;

import com.we.pojo.Photo;
import com.we.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/avatar")
public class AvatarController  {
    public String avatarAdd(@RequestParam MultipartFile flashvars, HttpSession session){
        //查看当前登录用户
        User login =(User) session.getAttribute("login");
        String uname = login.getUname();
        int u_id = login.getU_id();

        List<Photo> photos=new ArrayList<>();
        //获取传过来文件的真实名字
        String realname = flashvars.getOriginalFilename();
        //上传的位置,在项目的根目录下创建一个目录upload
        String upload = session.getServletContext().getRealPath("/upload");
        File path=new File(upload);
        //创建目录
        path.mkdir();
        String fileNewName = UUID.randomUUID().toString() + realname;
        //为避免文件名重复 重新取名
        File upFile=new File(path,fileNewName);
        //把文件的路径信息 存入到数据库
        Photo photo=new Photo();
        photo.setU_id(u_id);
        photo.setFilename(fileNewName);
        photo.setRealname(realname);
        String[] split = fileNewName.split("\\.");
        photo.setPtype(split[1]);
        photos.add(photo);

    }
    //执行文件的传入

}

package com.we.controller;

import com.we.pojo.Photo;
import com.we.pojo.User;
import com.we.service.AvatarService;
import com.we.service.Impl.AvatarServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/avatar")
public class AvatarController  {
    @Autowired
    private AvatarServiceImpl avatarService;
    @RequestMapping(value = "/avatarAdd",produces = "text/html;charset=utf-8")

    public String avatarAdd(@RequestParam MultipartFile flashvars, HttpSession session, Model model){
        //查看当前登录用户
        User login =(User) session.getAttribute("login");
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
        //执行文件的传入
        try {
            flashvars.transferTo(upFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //把文件的路径信息 存入到数据库
        Photo photo=new Photo();
        photo.setU_id(u_id);
        photo.setFilename(fileNewName);
        photo.setRealname(realname);
        String[] split = fileNewName.split("\\.");
        photo.setPtype(split[1]);
        photos.add(photo);
//        System.out.println(photos);
        //取到当前上传的图片
       String filename= photo.getFilename();
        Photo p = avatarService.avatarselect(u_id);
        if(p==null){
        int n = avatarService.avatarAdd(photos);
        if(n==1){
            session.setAttribute("filename",filename);
            return "member_avatar";
        }else {
            return "添加失败!";
        }
        }else {
            int n = avatarService.avatarupdate(u_id,fileNewName,realname,split[1]);
            if(n==1){
             session.setAttribute("filename",filename);
//                model.addAttribute("filename",filename);
                return "member_avatar";
            }else {
                return "修改失败";
            }
        }
    }
    //查询数据库内头像显示出来
    @RequestMapping("/loginphoto")
    public String loginphoto(HttpSession session){
//        System.out.println("进来了login");
        User login =(User) session.getAttribute("login");
        int u_id = login.getU_id();
        Photo photo1 = avatarService.loginphoto(u_id);
//        System.out.println(photo1);
        session.setAttribute("photo1",photo1);
        return "member_index";
    }

}

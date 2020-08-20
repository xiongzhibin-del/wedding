package com.we.service;

import com.we.pojo.Photo;

import java.util.List;

public interface AvatarService {
    //添加图片
        public int avatarAdd(List<Photo> files);
        public Photo avatarselect(int u_id);
        public int avatarupdate(int u_id,String fileNewName,String realname,String split);
        public Photo loginphoto(int u_id);
}

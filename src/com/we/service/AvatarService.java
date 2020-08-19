package com.we.service;

import com.we.pojo.Photo;

import java.util.List;

public interface AvatarService {
    //添加图片
        public int avatarAdd(List<Photo> files);
}

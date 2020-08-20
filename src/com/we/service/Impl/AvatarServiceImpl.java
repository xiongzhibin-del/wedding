package com.we.service.Impl;

import com.we.mapper.AvatarMapper;
import com.we.pojo.Photo;
import com.we.service.AvatarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AvatarServiceImpl implements AvatarService {
    @Autowired
    private AvatarMapper avatarMapper;
    @Override
    public int avatarAdd(List<Photo> files) {
        int n=0;
        for (Photo file:files) {
        avatarMapper.addFile(file);
        }
        n=1;
        return n;
    }

    @Override
    public Photo avatarselect(int u_id) {

        return  avatarMapper.avatarselect(u_id);
    }

    @Override
    public int avatarupdate(int u_id, String fileNewName, String realname, String split) {
        int n = avatarMapper.avatarupdate(u_id, fileNewName, realname, split);
        return n;
    }

    @Override
    public Photo loginphoto(int u_id) {
        return avatarMapper.loginphoto(u_id);
    }


}

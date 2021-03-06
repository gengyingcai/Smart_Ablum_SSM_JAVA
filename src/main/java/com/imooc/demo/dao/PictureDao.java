package com.imooc.demo.dao;

import com.imooc.demo.bo.Picture;
import com.imooc.demo.bo.RecycleSite;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
public interface PictureDao {
    public List<String> selectUrlByTagName(@Param("tagName") String tagName,@Param("id")Integer id);
//    Picture getPicture(@Param("pictureId") int pictureId) throws Exception;
//    List<Picture> listPicture(@Param("userId") int pictureId) throws Exception;
    void insertPicture(@Param("picture") Picture picture) throws Exception;

    public List<Picture> listPicture(@Param("id")Integer id) throws Exception;

    public void updatePictureStatus(@Param("id")Integer id) throws Exception;

    public void insertRecycle(@Param("recycle")RecycleSite recycleSite) throws Exception;

    public Integer selectPictureId(@Param("name")String name) throws Exception;

    public Integer listPictureCount(@Param("id")Integer id) throws Exception;

    public Long selectPicSize(@Param("id")Integer id);

    public List<String> selectAllByUserId(@Param("id")Integer userId);

    public Integer selectAllCount(@Param("id")Integer id);
}

package org.happybuy.service;

import java.util.List;

import org.happybuy.pojo.Comment;
import org.happybuy.pojo.CommentExample;

public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}

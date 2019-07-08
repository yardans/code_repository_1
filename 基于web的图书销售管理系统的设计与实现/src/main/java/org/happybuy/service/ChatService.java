package org.happybuy.service;

import java.util.List;

import org.happybuy.pojo.Chat;
import org.happybuy.pojo.ChatExample;

public interface ChatService {
    public void insertChatSelective(Chat chat);

    public List<Chat> selectChatByExample(ChatExample chatExample);
}

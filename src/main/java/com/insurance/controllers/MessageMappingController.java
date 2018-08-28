package com.insurance.controllers;

import com.insurance.chat.Message;
import com.insurance.chat.OutputMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class MessageMappingController {
    @MessageMapping("/chat")
    @SendTo("/topic/messages")
    public OutputMessage send(Message message) throws Exception{
        String time = new SimpleDateFormat("HH:mm:ss").format(new Date());
        return new OutputMessage(message.getFrom(), message.getText(), time);
    }

}

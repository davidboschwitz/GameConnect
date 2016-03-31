/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gameconnect.server.io.MessageTypes;

import gameconnect.server.io.MessageContentTypes.MessageContent;

/**
 *
 * @author David Boschwitz, Sam Jackson
 */
public class Message {
    
    protected String groupId;
    private String sourceType;
    private String messageType;
//    private MessageContent content;
    
    public Message(String groupId, String sourceType, String messageType) {
        this.groupId = groupId;
        this.sourceType = sourceType;
        this.messageType = messageType;
//        this.content = null;
    }
    /**
     * Creates a new message
     * @param groupId 
     * @param sourceType
     * @param messageType
     * @param content 
     */
    public Message(String groupId, String sourceType, String messageType, MessageContent content) {
        this.groupId = groupId;
        this.sourceType = sourceType;
        this.messageType = messageType;
//        this.content = content;
    }
       
    public String getGroupId() {
        return this.groupId;
    }
    
    public String getSourceType() {
        return this.sourceType;
    }
    
    public String getMessageType() {
        return this.messageType;
    }
    
//    public MessageContent getContent() {
//        return this.content;
//    }
}
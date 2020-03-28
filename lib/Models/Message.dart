import 'package:flutter/material.dart';

class Message {
  final String msg;
  final String time;
  final bool seen;
  final bool received;
  final bool sent;
  final bool isMe ;
  Message(this.msg, this.time, this.seen, this.received, this.sent, this.isMe);
}

List<Message> msgs = [
  new Message("Type a message at the bottom of this screen to start a conversation.	", "12:56 am", false,false, true,true),
  new Message("Just drag and drop images you want to use in the conversation to this window.", "12:56 am", true,false, false,true),
  new Message("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,false, false,false),
  new Message("ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,", "12:56 PM", true,false, false,false),
  new Message("Hell You can then edit a message by clicking on it. This way you can change the text, status (check marks) and time.	You can also determine whether the message was sent by the sender (right) or receiver (left).	", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,true, false,true),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,false, false,false),
  new Message("A message sent for some purpose other than its content, which may consist of dummy groups or may have a meaningless text.", "12:56 PM", true,false, false,false),
  new Message("Hello", "12:56 am", true,false, false,false),
  new Message("Hello", "12:56 PM", true,false, false,false),
  new Message("Hell HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloo", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,true, false,true),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("Hell HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloo", "12:56 am", true,false, false,false),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,false, false,false),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,", "12:56 am", true,false, false,false),
  new Message("Hello", "12:56 am", true,false, false,true),
  new Message("Hello", "12:56 am", true,false, true,false),
] ;
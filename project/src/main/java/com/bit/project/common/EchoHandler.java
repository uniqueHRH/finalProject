package com.bit.project.common;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler {
	
	@Override   // 접속
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session.getId());
		System.out.println(session.getId()+"님이 연결되었습니다");
	}

	@Override   // 발송
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(session.getId()+" : "+message.getPayload());
		session.sendMessage(message);
	}
	
	@Override   // 종료
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session.getId()+"님의 연결이 종료되었습니다");
	}
}

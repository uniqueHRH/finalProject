package com.bit.project.common;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.bit.project.model.ClientDao;

@Repository
public class EchoHandler extends TextWebSocketHandler {
	
	@Autowired
	SqlSession sqlSession;
	@Autowired
	ClientDao clientDao;
	
	
	@Override   // 접속
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println(session.getId());
		System.out.println(session.getId()+"님이 연결되었습니다");
	}

	@Override   // 발송
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(session.getId()+" : "+message.getPayload());
		session.sendMessage(message);
		sqlSession.getMapper(ClientDao.class);   // getMapper : Dao 인터페이스에 정의된 각 함수를 호출
	}
	
	@Override   // 종료
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println(session.getId()+"님의 연결이 종료되었습니다");
	}
}

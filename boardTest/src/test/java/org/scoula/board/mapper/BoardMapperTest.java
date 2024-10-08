package org.scoula.board.mapper;

import lombok.extern.log4j.Log4j;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.scoula.board.domain.BoardVO;
import org.scoula.board.dto.BoardDTO;
import org.scoula.board.service.BoardService;
import org.scoula.config.RootConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

//@Transactional
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = { RootConfig.class })
@Log4j
class BoardMapperTest {
    @Autowired
    private BoardMapper mapper;

    @Test
    @DisplayName("BoardMapper의 목록 불러오기")
    void getList() {
        for(BoardVO board : mapper.getList()){
            log.info(board);
        }
    }
    @Test
    @DisplayName("BoardMapper의 게시글 읽기")
    public void get(){
        //존재하는 게시물 번호로 테스트
        BoardVO board = mapper.get(1L);

        log.info(board);
    }
    @Test
    @DisplayName("BoardMapper의 새 글 작성")
    public void create(){
        BoardVO board = new BoardVO();
        board.setTitle("새로 작성하는 글xxx");
        board.setContent("새로 작성하는 내용xxx");
        board.setWriter("user0");
        mapper.create(board);
        log.info(board);
    }

    @Test
    @DisplayName("BoardMapper의 글 수정")
    public void update(){

        BoardVO board = new BoardVO();
        board.setNo(2L); //실제 값 넣어줘야함.
        // 타입이 long이라 L을 붙여주는 건가?!
        //BoardMapper.xml에서 resultType="Long" 그렇대!!!!
        board.setTitle("최종현이");
        board.setContent("수정된 내용");
        board.setWriter("user00");

        int count = mapper.update(board);

        log.info("UPDATE COUNT : " + count);
    }

    @Test
    @DisplayName("BoardMapper의 글 삭제")
    public void delete(){
        //log.info(mapper.delete());
    }
}
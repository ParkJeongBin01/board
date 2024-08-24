package org.scoula.board.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.scoula.board.common.uitl.UploadFiles;
import org.scoula.board.domain.BoardAttachmentVO;
import org.scoula.board.dto.BoardDTO;
import org.scoula.board.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.File;

@Controller //Bean 등록 하자!!!
@Log4j
@RequestMapping("/board")
@RequiredArgsConstructor
public class BoardController {

    final private BoardService service;
    //final은 웹 요청이 있어야 단위테스트를 할 수 있다.
    //그래서 여태 했던 거랑 많이 다르다.

    @GetMapping("/list")
    public void list(Model model){
        //void일 경우 요청경로가 뷰이름이다.
        //그래서 board/list가 뷰이름이다.
        //주로 GET요청할 떄 사용한다.
        log.info("list");
        model.addAttribute("list",service.getList());
    }
    @GetMapping("/create") //GET요청은 단위 테스트를 할 필요가 없다. 하는 게 없어. 스프링이 알아서 다 진행시킴.
    public void create(){
        log.info("create");
    }

    @PostMapping("/create") //POST는 단위 테스트를 해줄거임.
    public String create(BoardDTO board){
        log.info("create : " + board);
        service.create(board);
        return "redirect:/board/list"; //리다이렉트 해줄거야!!
    }

    @GetMapping({"/get", "/update"})
    public void get(@RequestParam("no") Long no, Model model){

        log.info("/get or update");
        model.addAttribute("board",service.get(no));
    }

    @PostMapping("/update")
    public String update(BoardDTO board){
        log.info("update : " + board);

        service.update(board);

        return "redirect:/board/list";
    }

    @PostMapping("/delete")
    //@GetMapping("/delete")
    //위에 코드로 하면 url에서 삭제 할 수 있음.
    public String delete(@RequestParam("no") Long no){
        log.info("delete : " + no);
        service.delete(no);

        return "redirect:/board/list";
    }

    @GetMapping("/download/{no}")
    @ResponseBody //view를 사용하지 않고, 직접 내보냄.
    public void download(@PathVariable("no")Long no, HttpServletResponse response) throws Exception {

        BoardAttachmentVO attach = service.getAttachment(no);

        File file = new File(attach.getPath()); //attach.getPath() 서버 저장 경로

        UploadFiles.download(response, file, attach.getFilename()); //attach.getFilename() 원본 파일명
    }
}
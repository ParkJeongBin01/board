package org.scoula.board.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.scoula.board.common.uitl.UploadFiles;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Log4j
public class BoardAttachmentVO {
    private Long no;
    private Long bno; //FK:Board의 no
    private String filename; //
    private String path;
    private String contentType;
    private Long size;
    private Date regDate;

    //팩토리 메서드
    public static BoardAttachmentVO of(MultipartFile part,Long bno, String path){ // path: 업로드된 파일 경로
        return builder()
                .bno(bno)
                .filename(part.getOriginalFilename())
                .path(path)
                .contentType(part.getContentType())
                .size(part.getSize())
                .build();
    }
    public String getFileSize(){
        return UploadFiles.getFormatSize(size);
    }
}


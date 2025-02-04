-- Active: 1714007443343@@127.0.0.1@3306@spring
-- 댓글
-- * 게시글(board)에 종속된 테이블
CREATE TABLE reply (
    no              INT NOT NULL AUTO_INCREMENT PRIMARY KEY,      -- 댓글번호
    board_no        INT NOT NULL,                                 -- 글번호
    parent_no       INT NOT NULL,                                 -- 부모번호
    writer          VARCHAR(100) NOT NULL,                        -- 작성자
    content         TEXT NOT NULL,                                -- 내용
    reg_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 등록일자
    upd_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  -- 수정일자
);

-- 댓글 샘플 데이터
-- 글번호 : 273
INSERT INTO reply (board_no, parent_no, writer, content)
VALUES ( 250, 0, '김조은', '댓글 내용1' )
      ,( 250, 0, '김조은', '댓글 내용2' )
      ,( 250, 0, '김조은', '댓글 내용3' )
      ,( 250, 0, '김조은', '댓글 내용4' )
      ,( 250, 0, '김조은', '댓글 내용5' )
;


--
SELECT *
FROM reply
WHERE board_no = 250;

-- 댓글 (reply) 테이블에 외래키 추가
ALTER TABLE reply
ADD CONSTRAINT FK_REPLY_BOARD_NO
FOREIGN KEY (board_no)
REFERENCES board(no)
ON DELETE CASCADE       -- 게시글 삭제 시, 종속된 댓글 삭제
;

-- 데이터 초기화 후, 테이블 생성 시 외래키 지정
TRUNCATE board;
TRUNCATE reply;

DROP TABLE reply;
CREATE TABLE reply (
    no              INT NOT NULL AUTO_INCREMENT PRIMARY KEY,      -- 댓글번호
    board_no        INT NOT NULL,                                 -- 글번호
    parent_no       INT NOT NULL,                                 -- 부모번호
    writer          VARCHAR(100) NOT NULL,                        -- 작성자
    content         TEXT NOT NULL,                                -- 내용
    reg_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 등록일자
    upd_date        TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- 수정일자
    -- ⭐외래키 지정
    FOREIGN KEY (board_no) REFERENCES board(no)
                           ON DELETE CASCADE    -- CASCADE, RESTRICT, SET NULL
                           ON UPDATE CASCADE
);

-- 글번호 :1
SELECT * FROM board;

-- 2번 글의 댓글
SELECT *
FROM reply
WHERE board_no = 2;


package com.aloha.springmybatis.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.aloha.springmybatis.dto.Files;
import com.aloha.springmybatis.mapper.FileMapper;

import jakarta.servlet.http.HttpServletResponse;

@Service
public class FileServiceImpl implements FileService {

    @Autowired
    private FileMapper fileMapper;

    @Override
    public List<Files> list() throws Exception {
        // TODO : 파일 목록 조회 
        throw new UnsupportedOperationException("파일 목록 조회 구현하세요.");
    }

    @Override
    public Files select(int no) throws Exception {
        // TODO : 파일 조회
        throw new UnsupportedOperationException("파일 조회 구현하세요.");
    }

    @Override
    public int insert(Files file) throws Exception {
        // TODO : 파일 등록
        throw new UnsupportedOperationException("파일 등록 구현하세요.");
    }

    @Override
    public int update(Files file) throws Exception {
        // TODO : 파일 수정
        throw new UnsupportedOperationException("파일 수정 구현하세요.");
    }

    @Override
    public int delete(int no) throws Exception {
        // TODO : 파일 삭제
        throw new UnsupportedOperationException("파일 삭제 구현하세요.");
    }

    @Override
    public List<Files> listByParent(Files file) throws Exception {
        // TODO : 부모 테이블에 종속된 파일 목록 조회
        throw new UnsupportedOperationException("부모 테이블의 파일 목록 조회 구현하세요.");
    }

    @Override
    public int deleteByParent(Files file) throws Exception {
        // TODO : 부모 테이블에 종속된 파일 목록 삭제
        throw new UnsupportedOperationException("부모 테이블의 파일 목록 삭제 구현하세요.");
    }

    @Override
    public int upload(String parentTable, int parentNo, List<MultipartFile> fileList) throws Exception {
        // TODO : 파일 업로드
        throw new UnsupportedOperationException("파일 업로드 구현하세요.");
    }

    @Override
    public int download(int no, HttpServletResponse response) throws Exception {
        // TODO : 파일 다운로드
        throw new UnsupportedOperationException("파일 다운로드 구현하세요.");
    }

    
}


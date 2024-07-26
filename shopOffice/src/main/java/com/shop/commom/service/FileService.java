package com.shop.commom.service;

import org.springframework.stereotype.Service;

import com.shop.table.vo.FileVO;
import com.shop.util.Constant;
import com.shop.util.FileUploadUtil;

@Service
public class FileService {

	
	public FileVO createFile(FileVO vo) throws Exception {

		String fileCd="", fileExt="";
		
		if (!vo.getFile().getOriginalFilename().isEmpty()) {
			
			fileCd = FileUploadUtil.getUuid();
			fileExt = vo.getFile().getOriginalFilename().substring(vo.getFile().getOriginalFilename().lastIndexOf("."),vo.getFile().getOriginalFilename().length());
			
			vo.setFileCd(fileCd); //유니크한 파일코드 생성후 세팅
			vo.setFileNm(fileCd+fileExt); // 파일명 생성후 세팅
			vo.setFilePath(Constant.FILE_PATH+"/"+vo.getFileNm());//image.blabla/파일명으로 디비에저장
			vo.setOrgFileNm(vo.getFile().getOriginalFilename()); //업로드파일의 원본파일명 으로 세팅
			
			//File upload
			FileUploadUtil.uploadFormFile(vo);
			
		}
		
		return vo;
	}
	
	
}

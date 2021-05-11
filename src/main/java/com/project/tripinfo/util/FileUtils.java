package com.project.tripinfo.util;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.model.Review_File;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Component
public class FileUtils {


    public List<Review_File> parseFileInfo(int board_no, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception{
        if(ObjectUtils.isEmpty(multipartHttpServletRequest)){
            return null;
        }


        List<Review_File> fileList = new ArrayList<>();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
        ZonedDateTime current = ZonedDateTime.now();
//        String path = "images/"+current.format(format);
        String path = "images/";
        File file = new File(path);
        if(file.exists() == false){
            file.mkdirs();
        }

        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();

        String newFileName, originalFileExtension, contentType;

        while(iterator.hasNext()){
            List<MultipartFile> list = multipartHttpServletRequest.getFiles(iterator.next());
            for (MultipartFile multipartFile : list){
                if(multipartFile.isEmpty() == false){
                    contentType = multipartFile.getContentType();
                    if(ObjectUtils.isEmpty(contentType)){
                        break;
                    }
                    else{
                        if(contentType.contains("image/jpeg")) {
                            originalFileExtension = ".jpg";
                        }
                        else if(contentType.contains("image/png")) {
                            originalFileExtension = ".png";
                        }
                        else if(contentType.contains("image/gif")) {
                            originalFileExtension = ".gif";
                        }
                        else{
                            break;
                        }
                    }

                    newFileName = Long.toString(System.nanoTime()) + originalFileExtension;
                    Review_File boardFile = new Review_File();
                    boardFile.setBoard_no(board_no);
                    boardFile.setFile_size(multipartFile.getSize());
                    boardFile.setFile_origin_name(multipartFile.getOriginalFilename());
                    boardFile.setFile_name(path + "/" + newFileName);
                    fileList.add(boardFile);

                    file = new File("/Users/byeonsungmun/Documents/SungMun/Ta9/project/src/main/resources/static/images" + "/" + newFileName);
                    multipartFile.transferTo(file);
                }
            }
        }
        return fileList;
    }
}
package com.project.tripinfo.util.file.model;

import com.project.tripinfo.model.Review_File;
import org.springframework.stereotype.Component;
import org.springframework.util.ObjectUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.IOException;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Component
public class FileUtils {

    public List<Review_File> parseFileInfo (int board_no, MultipartHttpServletRequest multipartHttpServletRequest) throws IOException {
        if (ObjectUtils.isEmpty(multipartHttpServletRequest)) {
            return null;
        }
        List<Review_File> reviewFileList = new ArrayList<>();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyyMMdd");
        ZonedDateTime current = ZonedDateTime.now();
        String path = "image/" + current.format(format);

        File file = new File(path);
        if (file.exists() == false) {
            file.mkdir();
        }

        Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
        String newFilename, originalFileExtension, contentType = new String();

        while (iterator.hasNext()) {
            List<MultipartFile> list = multipartHttpServletRequest.getFiles(iterator.next());
            for (MultipartFile multipartFile : list) {
                if (multipartFile.isEmpty() == false) {
                    contentType = multipartFile.getContentType();
                    break;
                } else {
                    if (contentType.contains("image/jpeg")) {
                        originalFileExtension = ".jpg";
                    } else if (contentType.contains("image/png")) {
                        originalFileExtension = ".png";
                    } else if (contentType.contains("image/gif")) {
                        originalFileExtension = ".gif";
                    } else {
                        break;
                    }
                }
                newFilename = Long.toString(System.nanoTime()) + originalFileExtension;
                Review_File review_file = new Review_File();
                review_file.setBoard_no(board_no);
                review_file.setFile_size(multipartFile.getSize());
                review_file.setFile_origin_name(multipartFile.getOriginalFilename());
                review_file.setFile_name(path + "/" + newFilename);
                review_file.setFile_regdate(new Date());
                reviewFileList.add(review_file);

                file = new File(path + "/" + newFilename);
                multipartFile.transferTo(file);
            }
        }
        return reviewFileList;
    }
}

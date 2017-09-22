package com.sanbhu.connect.api.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageUploadController {

	@RequestMapping(value = "/uploadImage.xconnect", method = RequestMethod.POST)
	public @ResponseBody
	String uploadImageHandler(@RequestParam("upload") MultipartFile file) {
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists()) {
					dir.mkdirs();
				}

				File serverFile = new File(dir.getAbsolutePath() + File.separator + "tempImage.png");
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(serverFile));
				byte[] readBytes = new byte[bufferedInputStream.available()];
				bufferedInputStream.read(readBytes);
				bufferedInputStream.close();
				
				return "{" +
						"\"fileName\":\"image(39).png\"," +
						"\"uploaded\":1," +
						"\"url\":\"" + "data:image/png;base64," + Base64Utils.encodeToString(readBytes) + "\"" +
						"}";
			} catch (Exception e) {
				return "FAILED";
			}
		} else {
			return "FAILED";
		}
	}
}

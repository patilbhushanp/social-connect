package com.sanbhu.connect.api.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;

import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ImageRendererController {
	
	@RequestMapping(value = "/imageRenderer.xconnect", method = RequestMethod.GET)
	public @ResponseBody String imageRenderer() {
		try {
			String rootPath = System.getProperty("catalina.home");
			File dir = new File(rootPath + File.separator + "tmpFiles");
			if (!dir.exists()) {
				dir.mkdirs();
			}
			
			File serverFile = new File(dir.getAbsolutePath() + File.separator + "tempImage.png");
			BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(serverFile));
			byte[] readBytes = new byte[bufferedInputStream.available()];
			bufferedInputStream.read(readBytes);
			bufferedInputStream.close();
			return "data:image/png;base64," + Base64Utils.encodeToString(readBytes);
		}catch (Exception exception) {
			exception.printStackTrace();
		}
		return "";
	}

}

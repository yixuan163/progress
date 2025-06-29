package com.huawei.progress.web.controller.mytest;


import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author yixuan
 * @since 2021-06-27
 */
@RestController
@RequestMapping("/my-test")
@Slf4j
public class MyTestController {

    public static void main(String[] args) {
//        String mm = "hu%0d%%0d%0d";
        String m1 = "%0d%";
        String mm = "0d%%%0d汉子";

        String decode = "";
        try {
            decode = decode(m1, "UTF-8");
        } catch (UnsupportedEncodingException ex) {
            log.error(ex.getLocalizedMessage());
        }
        log.info("decode={}", decode);
    }
    public static String decode(String s, String enc)
            throws UnsupportedEncodingException {
        boolean needToChange = false;
        int numChars = s.length();
        StringBuffer sb = new StringBuffer(numChars > 500 ? numChars / 2 : numChars);
        int i = 0;
        if (enc.length() == 0) {
            throw new UnsupportedEncodingException("URLDecoder: empty string enc parameter");
        }
        char c;
        byte[] bytes = null;
        while (i < numChars) {
            c = s.charAt(i);
            switch (c) {
                case '+':
                    sb.append(' ');
                    i++;
                    needToChange = true;
                    break;
                case '%':
                    try {
                        if (bytes == null) {
                            bytes = new byte[(numChars - i) / 3];
                        }
                        int pos = 0;
                        while (((i + 2) < numChars) &&
                                (c == '%')) {
                            if (s.charAt(i + 1)=='%') {
                                i++;
                                continue;
                            }
                            String substring = s.substring(i + 1, i + 3);

                            int v = Integer.parseInt(substring, 16);
                            if (v < 0) {
                                i++;
                                continue;
                            }
                            bytes[pos++] = (byte) v;
                            i+= 3;
                            if (i < numChars) {
                                c = s.charAt(i);
                            }
                        }
                        sb.append(new String(bytes, 0, pos, enc));
                        if ((i < numChars) && (c == '%')) {
                            i++;
                        }
                    } catch (NumberFormatException e) {
                        i++;
                        continue;
                    }
                    needToChange = true;
                    break;
                default:
                    sb.append(c);
                    i++;
                    break;
            }
        }

        return (needToChange ? sb.toString() : s);
    }

}

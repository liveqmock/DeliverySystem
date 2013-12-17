package com.bjtu.deliverysystem.utils;

import java.util.List;

import com.bjtu.deliverysystem.common.MailSenderInfo;
import com.bjtu.deliverysystem.common.SimpleMailSender;

/**
 *邮件通知
 * @author ming'enhuang
 */
public class MailOperation {

    @SuppressWarnings("unchecked")
	public static void sendMails(String title, String contents, List mailList) {
        for (int i = 0; i < mailList.size(); i++) {
            MailSenderInfo mailInfo = new MailSenderInfo();
            mailInfo.setMailServerHost("mail.bjtu.edu.cn");
            mailInfo.setMailServerPort("25");
            mailInfo.setValidate(true);
            mailInfo.setUserName("09301021@bjtu.edu.cn");
            mailInfo.setPassword("cjystc4998");//您的邮箱密码
            mailInfo.setFromAddress("09301021@bjtu.edu.cn");
            mailInfo.setToAddress(mailList.get(i).toString());
            mailInfo.setSubject(title);
            mailInfo.setContent(contents);
            //这个类主要来发送邮件　　
            SimpleMailSender sms = new SimpleMailSender();
            sms.sendTextMail(mailInfo);//发送文体格式
        }
    }
}

package com.springmvc.util;

import com.springmvc.enums.EncryptionType;

import java.nio.charset.Charset;
import java.security.MessageDigest;

/**
* @Title: SecurityUtil
* @Description: 安全加密类
* @author chy
* @date 2017/10/18 16:12
*/
public class SecurityUtil {

	/**
	 * 32位md5值.
	 *
	 * @param paramStr 需要md5的字符串.
	 * @return 32位大写md5值.
	 */
	public final static String MD5_32(String paramStr) {
		// 用于加密的字符
		char md5String[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'A', 'B', 'C', 'D', 'E', 'F'};
		try {
			// 使用平台的默认字符集将此 String 编码为 byte序列，并将结果存储到一个新的 byte数组中
			byte[] btInput = paramStr.getBytes(Charset.forName("utf-8"));
			// 获得指定摘要算法的 MessageDigest对象，此处为MD5
			// MessageDigest类为应用程序提供信息摘要算法的功能，如 MD5 或 SHA 算法。
			// 信息摘要是安全的单向哈希函数，它接收任意大小的数据，并输出固定长度的哈希值。
			MessageDigest mdInst = MessageDigest.getInstance("MD5");
			// System.out.println(mdInst);
			// MD5 Message Digest from SUN, <initialized>
			// MessageDigest对象通过使用 update方法处理数据， 使用指定的byte数组更新摘要
			mdInst.update(btInput);
			// System.out.println(mdInst);
			// MD5 Message Digest from SUN, <in progress>
			// 摘要更新之后，通过调用digest（）执行哈希计算，获得密文
			byte[] md = mdInst.digest();
			// System.out.println(md);
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			// System.out.println(j);
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) { // i = 0
				byte byte0 = md[i]; // 95
				str[k++] = md5String[byte0 >>> 4 & 0xf]; // 5
				str[k++] = md5String[byte0 & 0xf]; // F
			}
			// 返回经过加密后的字符串
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 16位md5值.
	 *
	 * @param paramStr
	 * @return
	 */
	public final static String MD5_16(String paramStr) {
		return MD5_32(paramStr).substring(8, 24);
	}

	/**
	 * 加密
	 * @param paramStr
	 * @param type
	 * @return
	 */
	public final static String  encryption(String paramStr, EncryptionType type) {
		String str;
		switch (type) {
			case MD5:
				str = MD5_32(paramStr);
				break;
			case BASE64:
				str = Base64.jdkBase64Encoder(paramStr);
				break;
			default:
				str = paramStr;
				break;
		}
		return str;
	}

	/**
	 * 解密
 	 * @param paramStr
	 * @param type
	 * @return
	 */
	public final static  String decrypt(String paramStr, EncryptionType type){
		String str;
		switch (type) {
			case BASE64:
				str = Base64.jdkBase64Decoder(paramStr);
				break;
			default:
				str = paramStr;
				break;
		}
		return str;
	}
}

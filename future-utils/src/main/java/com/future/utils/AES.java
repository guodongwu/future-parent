package com.future.utils;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/**
 * AES加密/解密
 *
 */
public class AES {
	 private static final Logger logger = LoggerFactory.getLogger(AES.class);
	 
	/**
	 * 加密
	 * @param data 数据
	 * @param key 密码
	 * @param iv 初始化向量
	 * @return
	 */
	public static String encrypt(String data,String key,String iv) { 
        try { 
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding"); 
            int blockSize = cipher.getBlockSize(); 
        
            byte[] dataBytes = data.getBytes(); 
            int plaintextLength = dataBytes.length; 
            if (plaintextLength % blockSize != 0) { 
                plaintextLength = plaintextLength + (blockSize - (plaintextLength % blockSize)); 
            } 
    
            byte[] plaintext = new byte[plaintextLength]; 
            System.arraycopy(dataBytes, 0, plaintext, 0, dataBytes.length); 
        
            SecretKeySpec keyspec = new SecretKeySpec(key.getBytes(), "AES"); 
            IvParameterSpec ivspec = new IvParameterSpec(iv.getBytes()); 
        
            cipher.init(Cipher.ENCRYPT_MODE, keyspec, ivspec); 
            byte[] encrypted = cipher.doFinal(plaintext); 
        
            return Base64.encode(encrypted); 
    
        } catch (Exception e) { 
        	if (logger.isErrorEnabled()) {
	            logger.error("加密",e);
	        }
        } 
        return null; 
    } 
    
	/**
	 * 解密
	 * @param data 数据
	 * @param key 密码
	 * @param iv 初始化向量
	 * @return
	 */
    public static String decrypt(String data,String key,String iv) { 
        try { 
            String text = Base64.decode(data.getBytes()); 
               
            byte[] by = ConvertTobyte(text); 
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding"); 
            SecretKeySpec keyspec = new SecretKeySpec(key.getBytes(), "AES"); 
            IvParameterSpec ivspec = new IvParameterSpec(iv.getBytes()); 
        
            cipher.init(Cipher.DECRYPT_MODE, keyspec, ivspec); 
        
            byte[] original = cipher.doFinal(by); 
            String originalString = new String(original); 
            return originalString.trim(); 
        }catch (Exception e) {
        	if (logger.isErrorEnabled()) {
	            logger.error("解密",e);
	        }
        } 
        return null; 
    } 
       
    private static byte[] ConvertTobyte(String data) { 
        int maxLength = data.length(); 
        byte[] by = new byte[maxLength]; 
        char[] chars = data.toCharArray(); 
        for(int i = 0; i < chars.length; i++) { 
            by[i] = (byte) chars[i]; 
        } 
           
        return by; 
    } 

} 


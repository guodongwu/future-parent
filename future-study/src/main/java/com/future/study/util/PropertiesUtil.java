package com.future.study.util;

import com.alibaba.fastjson.util.TypeUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;


import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Date;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * Created by wu on 2018/9/29.
 */
public class PropertiesUtil extends PropertyPlaceholderConfigurer {
    private static Map<String, Object> ctxPropertiesMap;

    @Override
    protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props) throws BeansException {
        super.processProperties(beanFactoryToProcess, props);
        ctxPropertiesMap = new HashMap<String, Object>();
        for (Object key : props.keySet()) {
            String keyStr = key.toString();
            String value = props.getProperty(keyStr);
            ctxPropertiesMap.put(keyStr, value);
        }
    }

    public static String getProperty(String key) {
        return TypeUtils.castToString(ctxPropertiesMap.get(key));
    }

    public static Object getObject(String key, Class clazz) {
        Object object = getProperty(key);
        return TypeUtils.castToJavaBean(object, clazz);
    }

    public static Boolean getBoolean(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return null;
        } else {
            return TypeUtils.castToBoolean(value);
        }
    }

    public static byte[] getBytes(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return null;
        } else {
            return TypeUtils.castToBytes(value);
        }
    }

    public static boolean getBooleanValue(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return false;
        } else {
            return TypeUtils.castToBoolean(value).booleanValue();
        }
    }

    public static Byte getByte(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToByte(value);
    }

    public static byte getByteValue(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return 0;
        } else {
            return TypeUtils.castToByte(value).byteValue();
        }
    }

    public static Short getShort(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToShort(value);
    }

    public static short getShortValue(String key) {
        Object value = getProperty(key);
        if (value == null)
            return 0;
        else
            return TypeUtils.castToShort(value).shortValue();
    }

    public static Integer getInteger(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToInt(value);
    }

    public static int getIntValue(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return 0;
        } else {
            return TypeUtils.castToInt(value).intValue();
        }
    }

    public static Long getLong(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToLong(value);
    }

    public static long getLongValue(String key) {
        Object value = getProperty(key);
        if (value == null) {
            return 0;
        } else {
            return TypeUtils.castToLong(value).longValue();
        }
    }

    public static Double getDouble(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToDouble(value);
    }

    public static double getDoubleValue(String key) {
        Object value = getProperty(key);
        if (value == null) return 0.0D;
        else return TypeUtils.castToDouble(value).doubleValue();
    }

    public static BigDecimal getBigDecimal(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToBigDecimal(value);
    }

    public static BigInteger getBigInteger(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToBigInteger(value);
    }

    public static String getString(String key) {
        Object value = getProperty(key);
        if (value == null) return null;
        else return value.toString();
    }

    public static Date getDate(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToDate(value);
    }

    public static java.sql.Date getSqlDate(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToSqlDate(value);
    }

    public static Timestamp getTimestamp(String key) {
        Object value = getProperty(key);
        return TypeUtils.castToTimestamp(value);
    }

}
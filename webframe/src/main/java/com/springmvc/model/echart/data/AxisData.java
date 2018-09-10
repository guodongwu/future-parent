package com.springmvc.model.echart.data;


import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.springmvc.model.echart.style.TextStyle;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * 自定义样式的数据 - 适用于axis.data
 *
 * @author liuzh
 */
@Getter
@Setter
@JsonAutoDetect(fieldVisibility=JsonAutoDetect.Visibility.ANY, getterVisibility=JsonAutoDetect.Visibility.NONE)
@JsonInclude(JsonInclude.Include.NON_EMPTY)
public class AxisData implements Serializable {

    private static final long serialVersionUID = -6515942952591477027L;

    /**
     * 值
     */
    private Object value;
    /**
     * 特殊样式
     *
     * @see com.springmvc.model.echart.style.TextStyle
     */
    private TextStyle textStyle;

    /**
     * 构造函数,参数:value
     *
     * @param value
     */
    public AxisData(Object value) {
        this.value = value;
    }

    /**
     * 构造函数,参数:value,textStyle
     *
     * @param value
     * @param textStyle
     */
    public AxisData(Object value, TextStyle textStyle) {
        this.value = value;
        this.textStyle = textStyle;
    }

    /**
     * 获取value值
     */
    public Object value() {
        return this.value;
    }

    /**
     * 设置value值
     *
     * @param value
     */
    public AxisData value(Object value) {
        this.value = value;
        return this;
    }

    /**
     * 获取textStyle值
     */
    public TextStyle textStyle() {
        if (this.textStyle == null) {
            this.textStyle = new TextStyle();
        }
        return this.textStyle;
    }

    /**
     * 设置textStyle值
     *
     * @param textStyle
     */
    public AxisData textStyle(TextStyle textStyle) {
        this.textStyle = textStyle;
        return this;
    }
}

package com.springmvc.model.echart.axis;

import com.springmvc.model.echart.style.AreaStyle;
import lombok.Getter;
import lombok.Setter;

/**
* @Title: SplitArea
* @Description:分隔区域
* @author chy
* @date 2017/11/22 15:10
*/
@Getter
@Setter
public class SplitArea implements java.io.Serializable {

    private static final long serialVersionUID = -5528605504445280383L;

    /**
     * 默认不显示，属性show控制显示与否
     */
    private Boolean show;
    /**
     * 属性areaStyle（详见areaStyle）控制区域样式
     *
     * @see com.springmvc.model.echart.style.AreaStyle
     */
    private AreaStyle areaStyle;

    /**
     * 获取show值
     */
    public Boolean show() {
        return this.show;
    }

    /**
     * 设置show值
     *
     * @param show
     */
    public SplitArea show(Boolean show) {
        this.show = show;
        return this;
    }

    /**
     * 设置areaStyle值
     *
     * @param areaStyle
     */
    public SplitArea areaStyle(AreaStyle areaStyle) {
        this.areaStyle = areaStyle;
        return this;
    }

    /**
     * 属性areaStyle（详见areaStyle）控制区域样式
     *
     * @see com.springmvc.model.echart.style.AreaStyle
     */
    public AreaStyle areaStyle() {
        if (this.areaStyle == null) {
            this.areaStyle = new AreaStyle();
        }
        return this.areaStyle;
    }
}

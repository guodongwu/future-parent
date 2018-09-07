package com.future.freemarker;

import freemarker.template.SimpleSequence;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * Created by wu on 2018/8/26.
 */
public class SortMethod implements TemplateMethodModelEx {
    @Override
    public Object exec(List list) throws TemplateModelException {
        SimpleSequence simpleSequence= (SimpleSequence) list.get(0);
        List<BigDecimal> bigDecimalList=simpleSequence.toList();
        Collections.sort(bigDecimalList, new Comparator<BigDecimal>() {
            @Override
            public int compare(BigDecimal o1, BigDecimal o2) {
                return o1.intValue()-o2.intValue();
            }
        });
        return bigDecimalList;
    }
}

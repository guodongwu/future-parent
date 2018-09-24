package com.future.solr.test;

import com.future.solr.util.SolrUtil;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wu on 2018/9/23.
 */
public class SolrQueryTest {
    public static void main(String[] args) throws IOException, SolrServerException {
      /*  Map<String,Object> map=new HashMap<>();
        map.put("id","1");
        map.put("name","haha");
        map.put("age",18);
        SolrUtil.insertOrUpdate(map);
        System.out.println("ok");*/
        SolrUtil.delete("1");
        System.out.println("ok");
    }
}

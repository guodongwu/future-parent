package com.future.solr.util;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrClient;
import org.apache.solr.common.SolrInputDocument;

import java.io.IOException;
import java.util.Map;

/**
 * Created by wu on 2018/9/23.
 */
public class SolrUtil {
    private static  final String baseSolrUrl="http://localhost:8089/solr/new_core";
    private static SolrClient solrClient=null;
    static {
        solrClient=new HttpSolrClient.Builder(baseSolrUrl).build();
    }
    public static  void insertOrUpdate(Map<String,Object> map) throws IOException, SolrServerException {
        SolrInputDocument doc=new SolrInputDocument();
        for(Map.Entry entry:map.entrySet()){
            doc.addField((String) entry.getKey(),entry.getValue());
        }
        solrClient.add(doc);
        solrClient.commit();


    }

    public  static  void delete(String id) throws IOException, SolrServerException {
        solrClient.deleteById(id);
        solrClient.commit();
    }
}

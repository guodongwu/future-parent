maven-compile-plugin : 编译源代码

     <plugin>  
        <groupId>org.apache.maven.plugins</groupId>  
        <artifactId>maven-compiler-plugin</artifactId>  
        <version>2.3.2</version>  
        <configuration>  
            <!--目标JDK版本 1.8-->
            <source>1.8</source>  
            <target>1.8</target>  
        </configuration>  
    </plugin>  
exec-maven-plugin :  java console

    <plugin>
          <groupId>org.codehaus.mojo</groupId>  
          <artifactId>exec-maven-plugin</artifactId>  
          <version>1.2.1</version>  
          <executions>  
            <execution>  
              <goals>  
                <goal>java</goal>  
              </goals>  
            </execution>  
          </executions>  
          <configuration>  
            <mainClass>com.study.App</mainClass>  
          </configuration>  
    </plugin>  
maven-dependency-plugin : 统一打包到一个目录
   
    <plugin>  
        <groupId>org.apache.maven.plugins</groupId>  
        <artifactId>maven-dependency-plugin</artifactId>  
        <version>2.6</version>  
        <executions>  
            <execution>  
                <id>copy-dependencies</id>  
                <phase>compile</phase>  
                <goals>  
                    <goal>copy-dependencies</goal>  
                </goals>  
                <configuration>  
                    <!-- ${project.build.directory}为Maven内置变量，缺省为target -->  
                    <outputDirectory>${project.build.directory}/lib</outputDirectory>  
                    <!-- 表示是否不包含间接依赖的包 -->  
                    <excludeTransitive>false</excludeTransitive>  
                    <!-- 表示复制的jar文件去掉版本信息 -->  
                    <stripVersion>true</stripVersion>  
                </configuration>  
            </execution>  
        </executions>  
    </plugin>  
 maven-jetty-plugin    :jetty
 
        <plugin>
             <groupId>org.mortbay.jetty</groupId>
             <artifactId>maven-jetty-plugin</artifactId>
             <version>6.1.5</version>
             <configuration>
                 <webAppSourceDirectory>src/main/webapp</webAppSourceDirectory>
                 <scanIntervalSeconds>3</scanIntervalSeconds>
                 <contextPath>/</contextPath>
                 <connectors>
                     <connector implementation="org.mortbay.jetty.nio.SelectChannelConnector">
                         <port>8088</port>
                     </connector>
                 </connectors>
             </configuration>
         </plugin>
maven-resource-plugin : 

        1.设置资源文件的编码方式 
        <plugin>  
            <groupId>org.apache.maven.plugins</groupId>  
            <artifactId>maven-resources-plugin</artifactId>  
            <version>2.4.3</version>  
            <executions>  
                <execution>  
                    <phase>compile</phase>  
                </execution>  
            </executions>  
            <configuration>  
                <encoding>${project.build.sourceEncoding}</encoding>  
            </configuration>  
        </plugin>  
        
        2.把web项目的输出copy到tomcat的webapp下
        <plugin>  
            <groupId>org.apache.maven.plugins</groupId>  
            <artifactId>maven-resources-plugin</artifactId>  
            <version>2.5</version>  
            <executions>  
                <execution>  
                    <id>deploy-website</id>  
                    <phase>package</phase>  
                    <goals>  
                        <goal>copy-resources</goal>  
                    </goals>  
                    <configuration>  
                        <outputDirectory>${server_home}/webapps/${project.build.finalName}</outputDirectory>  
                        <resources>  
                            <resource>  
                                <directory>${project.build.directory}/${project.build.finalName}</directory>  
                            </resource>  
                        </resources>  
                    </configuration>  
                </execution>  
            </executions>  
        </plugin>
          
tomcat-maven-plugin :tomcat
          
       <plugin>  
              <groupId>org.codehaus.mojo</groupId>  
              <artifactId>tomcat-maven-plugin</artifactId>  
              <configuration>  
                  <server>tomcat6-manager</server>  
                  <path>/${project.build.name}</path>  
                  <url>http://localhost:8080/manager</url>  
                  <username>admin</username>  
                  <password>admin</password>  
              </configuration>  
              <executions>  
                  <execution>  
                      <phase>deploy</phase>  
                      <goals>  
                          <goal>deploy</goal>  
                      </goals>  
                  </execution>  
              </executions>  
          </plugin>  
          <!--tomcat8-->
          <plugin>
              <groupId>org.apache.tomcat.maven</groupId>
              <artifactId>tomcat8-maven-plugin</artifactId>
              <version>3.0-r1756463</version>
          </plugin>
cargo-maven2-plugin:将项目自动打包并部署到tomcat

        <plugin>  
            <!-- 指定插件名称及版本号 -->  
            <groupId>org.codehaus.cargo</groupId>  
            <artifactId>cargo-maven2-plugin</artifactId>  
            <version>1.2.3</version>  
            <!-- 插件的Tomcat6.x配置 -->  
            <configuration>  
                <!-- 容器的配置 -->  
                <container>  
                    <!-- 指定服务器版本 -->  
                    <containerId>tomcat6x</containerId>  
                    <!-- 指定服务器的安装目录 -->  
                    <home>E:\Program Files\tomcat-6.0.32</home>  
                </container>  
                <!-- 具体的配置 -->  
                <configuration>  
                    <!-- 部署模式：existing、standalone等 -->  
                    <type>existing</type>  
                    <!-- Tomcat的位置，即catalina.home -->  
                    <home>E:\Program Files\tomcat-6.0.32</home>  
                    <!-- 配置属性 -->  
                    <properties>  
                        <!-- 管理地址 -->  
                        <cargo.tomcat.manager.url>http://localhost:8080/manager</cargo.tomcat.manager.url>  
                        <!-- Tomcat用户名 -->  
                        <cargo.remote.username>admin</cargo.remote.username>  
                        <!-- Tomcat密码 -->  
                        <cargo.remote.password>admin</cargo.remote.password>  
                        <!-- <cargo.jvmargs> -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8787 </cargo.jvmargs> -->  
                    </properties>  
                </configuration>  
            </configuration>  
        </plugin> 
**类加载器:**   

    Bootstrap ClassLoader 最顶层的加载类，主要加载核心类库
        %JRE_HOME%\lib下的rt.jar、resources.jar、charsets.jar和class等
    Extention ClassLoader 扩展的类加载器
        %JRE_HOME%\lib\ext目录下的jar包和class文件。还可以加载-D java.ext.dirs选项指定的目录
    Appclass Loader也称为SystemAppClass 加载当前应用的classpath的所有类
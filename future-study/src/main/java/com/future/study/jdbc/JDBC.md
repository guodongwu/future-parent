注册JDBC驱动程序
    Class.forName()
    DriverManager.registerDriver()

Statement
    用于对数据库进行通用访问，
    在运行时使用静态SQL语句时很有用。
    Statement接口不能接受参数
PreparedStatement
    当计划要多次使用SQL语句时使用。
    PreparedStatement接口在运行时接受输入参数。
CallableStatement
    当想要访问数据库存储过程时使用。
    CallableStatement接口也可以接受运行时输入参数。


ResultSet类型
    ResultSet.TYPE_FORWARD_ONLY	光标只能在结果集中向前移动。
    ResultSet.TYPE_SCROLL_INSENSITIVE	光标可以向前和向后滚动，结果集对创建结果集后发生的数据库所做的更改不敏感。
    ResultSet.TYPE_SCROLL_SENSITIVE	光标可以向前和向后滚动，结果集对创建结果集之后发生的其他数据库的更改敏感。

ResultSet的并发性
    ResultSet.CONCUR_READ_ONLY	创建只读结果集，这是默认值。
    ResultSet.CONCUR_UPDATABLE	创建可更新的结果集


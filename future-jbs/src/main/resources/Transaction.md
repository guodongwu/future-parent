#事务隔离
##脏读
###获取了修改过程中还未提交的数据
##不可重复读
###同一个事务内两次读取数据不同,因另一条数据进行了操作
##幻读
###读取数据后第二个事务插入一条数据,再次读取数据发现多了一行数据
##事务隔离级别 
###Read Uncommitted 
####无法保证上述三种问题
###Read Committed
####避免脏读
###Repeatable Read
####避免脏读 不可重复读
###Serializable
####完全避免上述三种问题

TRANSACTION_NONE
TRANSACTION_READ_UNCOMMITTED
TRANSACTION_READ_COMMITTED
TRANSACTION_REPEATABLE_READ
TRANSACTION_SERIALIZABLE
package com.future.study.designpattern;

/**
 * Created by wu on 2018/8/28.
 * 环境(Context)角色：持有一个Strategy的引用。
 * 抽象策略(Strategy)角色
 * 具体策略(ConcreteStrategy)角色
 */
/**
 * 抽象策略类
* */
interface Strategy {
    public  void strategyInterface();
}
class ConcreteStrategyA implements  Strategy{

    @Override
    public void strategyInterface() {

    }
}
class ConcreteStrategyB implements  Strategy{

    @Override
    public void strategyInterface() {

    }
}
/**
 * 环境角色类
 */
class  Context{
    private  Strategy strategy;
    public  Context(Strategy strategy){
        this.strategy=strategy;
    }
    public  void contextInterface(){
        strategy.strategyInterface();;
    }
}
//--------------------------------------
interface  CalPrice{
    Double calPrice(Double orgnicPrice);
}
class  Orgnic implements  CalPrice{
    @Override
    public Double calPrice(Double orgnicPrice) {
        return orgnicPrice;
    }
}
class  Vip implements  CalPrice{
    @Override
    public Double calPrice(Double orgnicPrice) {
        return orgnicPrice*0.9;
    }
}
class  SuperVip implements  CalPrice{
    @Override
    public Double calPrice(Double orgnicPrice) {
        return orgnicPrice*0.8;
    }
}
class  GoldVip implements  CalPrice{
    @Override
    public Double calPrice(Double orgnicPrice) {
        return orgnicPrice*0.7;
    }
}
class  Player{
    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    private double totalAmount=0D;
    private double amount=0D;
    private CalPrice calPrice=new Orgnic();
    public void buy(double amount){
        this.amount=amount;
        totalAmount+=amount;
        if (totalAmount > 30000) {//30000则改为金牌会员计算方式
            calPrice = new GoldVip();
        } else if (totalAmount > 20000) {//类似
            calPrice = new SuperVip();
        } else if (totalAmount > 10000) {//类似
            calPrice = new Vip();
        }

    }
    public  double callLastPrice(){
        return calPrice.calPrice(amount);
    }
}
class CallPriceFactory {
    private CallPriceFactory() {
    }

    public static CalPrice createCalPrice(Player player) {
        if (player.getTotalAmount() > 30000) {//3000则改为金牌会员计算方式
            return new GoldVip();
        } else if (player.getTotalAmount() > 20000) {//类似
            return new SuperVip();
        } else if (player.getTotalAmount() > 10000) {//类似
            return new Vip();
        } else {
            return new Orgnic();
        }
    }
}



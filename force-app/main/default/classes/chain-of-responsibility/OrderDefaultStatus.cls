public with sharing class OrderDefaultStatus implements OrderStatusChain {
    OrderStatusChain nextInChain;

    public void setNextChain(OrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void getOrderStatusMessage(Order o) {
        System.debug('Error - The order doesn\'t match any of the criteria!');
    }
}
public with sharing class OrderDefaultStatus implements IOrderStatusChain {
    IOrderStatusChain nextInChain;

    public void setNextChain(IOrderStatusChain nextInChain) {
        this.nextInChain = nextInChain;
    }

    public void getOrderStatusMessage(Order o) {
        System.debug('Error - The order doesn\'t match any of the criteria!');
    }
}
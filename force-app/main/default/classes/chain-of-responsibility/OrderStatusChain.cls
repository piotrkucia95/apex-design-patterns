public interface OrderStatusChain {
    void setNextChain(OrderStatusChain chain);
    void getOrderStatusMessage(Order o);
}

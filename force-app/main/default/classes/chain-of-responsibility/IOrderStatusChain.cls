public interface IOrderStatusChain {
    void setNextChain(IOrderStatusChain chain);
    void getOrderStatusMessage(Order o);
}

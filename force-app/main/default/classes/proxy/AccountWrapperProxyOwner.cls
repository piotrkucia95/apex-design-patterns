public with sharing class AccountWrapperProxyOwner implements IAccountWrapper {
    IAccountWrapper wrapper;

    public AccountWrapperProxyOwner(IAccountWrapper wrapper) {
        this.wrapper = wrapper;
    }

    public void doUpdate() {
        wrapper.doUpdate();
        System.debug('Account update successfull :)');
    }
}

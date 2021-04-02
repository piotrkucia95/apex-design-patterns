public with sharing class AccountWrapperProxyNotOwner implements IAccountWrapper {
    IAccountWrapper wrapper;

    public AccountWrapperProxyNotOwner(IAccountWrapper wrapper) {
        this.wrapper = wrapper;
    }

    public void doUpdate() {
        System.debug('Error - only record owner can update the Account!');
    }
}

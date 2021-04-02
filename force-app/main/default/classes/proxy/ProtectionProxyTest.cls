public with sharing class ProtectionProxyTest {
    
    public static void runAccountWrapperProxy() {
        Account acc = createTestAccount();

        acc.Phone = '1234567890';
        acc.Rating = 'Hot';

        IAccountWrapper accountWrapper = new AccountWrapper(acc);
        IAccountWrapper accountWrapperProxy;

        /* Depending on whether the user is the Account owner, different Proxy is used */
        if (acc.OwnerId == UserInfo.getUserId()) {
            accountWrapperProxy = new AccountWrapperProxyOwner(accountWrapper);
        } else {
            accountWrapperProxy = new AccountWrapperProxyNotOwner(accountWrapper);
        }
        
        accountWrapperProxy.doUpdate();
    }

    private static Account createTestAccount() {
        List<Account> accounts = [SELECT Id, Name, Phone, Rating, OwnerId 
            FROM Account
            WHERE Name = 'Proxy Test'
            LIMIT 1
        ];
        
        Account acc;
        if (accounts.isEmpty()) {
            acc = new Account(
                Name = 'Proxy Test'
            );
            insert acc;
        } else {
            acc = accounts[0];
        }

        return acc;
    }
}

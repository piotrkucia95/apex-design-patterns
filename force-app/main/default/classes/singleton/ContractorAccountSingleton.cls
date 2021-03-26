public with sharing class ContractorAccountSingleton {

    private static final String CONTRACTOR_RECORD_TYPE = 'Contractor';

    /* Could initialize the variable on declaration in case it is not high cost operation */
    private static ContractorAccountSingleton contractorSingleton;
    private Id recordTypeId;

    /* Using Singleton pattern prevents from exceeding the getDescribe() method governor limits */
    private ContractorAccountSingleton() {
        recordTypeId = Account.sObjectType.getDescribe().getRecordTypeInfosByName().get(CONTRACTOR_RECORD_TYPE).getRecordTypeId();
    }

    public static ContractorAccountSingleton getInstance() {
        if (contractorSingleton == null) {
            contractorSingleton = new ContractorAccountSingleton();
        }
        return contractorSingleton;
    }

    public String getRecordTypeId() {
        return recordTypeId;
    }
}

public with sharing class SingletonTest {
    
    public static void printContractorRecordTypeId() {
        /* Creates an instance of ContractorAccountSingleton */
        ContractorAccountSingleton contractorSingleton1 = ContractorAccountSingleton.getInstance();
        System.debug(contractorSingleton1.getRecordTypeId());

        /* Uses the instance of ContractorAccountSingleton created before*/
        ContractorAccountSingleton contractorSingleton2 = ContractorAccountSingleton.getInstance();
        System.debug(contractorSingleton2.getRecordTypeId());
    }
}

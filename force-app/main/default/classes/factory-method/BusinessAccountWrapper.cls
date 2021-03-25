public with sharing class BusinessAccountWrapper extends RecordWrapper {  
    Integer numberOfEmployees;

    public BusinessAccountWrapper(Account acc) {
        this.type = 'Business Account';
        this.name = acc.Name;
        this.numberOfEmployees = acc.NumberOfEmployees;
    }
}

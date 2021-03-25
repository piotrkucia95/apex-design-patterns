public with sharing class AccountWrapperFactory extends RecordWrapperFactory {   

    public override RecordWrapper createRecordWrapper(Sobject record, String recordType) {
        switch on recordType {
            when 'Business Account' {
                return new BusinessAccountWrapper((Account) record);
            }
            when 'Person Account' {
                return new PersonAccountWrapper((Account) record);
            }
            when else {
                return null;
            }
        }
    }
}

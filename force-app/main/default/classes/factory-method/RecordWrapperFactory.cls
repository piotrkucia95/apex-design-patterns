public with sharing abstract class RecordWrapperFactory {
    
    public abstract RecordWrapper createRecordWrapper(SObject record, String recordType);
}

public with sharing abstract class RecordProcessor {
    
    /* The template method utilizing the methods implemented in child objects as some of the algorithm steps */
    public void processRecord(String recordId) {
        SObject record = getRecord(recordId);
        Group queue = getQueue(record);
        updateRecord(record, queue);
        notifyOwner(record);
    }

    public abstract SObject getRecord(String recordId);

    public abstract Group getQueue(SObject record);

    public abstract void updateRecord(SObject record, Group queue);

    public void notifyOwner(SObject record) {
        System.debug('Sending a notification to the new record owner...');
    }

}

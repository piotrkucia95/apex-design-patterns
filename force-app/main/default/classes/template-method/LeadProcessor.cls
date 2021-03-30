public with sharing class LeadProcessor extends RecordProcessor {
    
    public override SObject getRecord(String recordId) {
        System.debug('Retrieving a Lead from the database (returning dummy record for now)...');
        return new Lead(FirstName='Test', LastName='Lead', Id=recordId);
    }

    public override Group getQueue(SObject record) {
        System.debug('Retrieving the assignment queue for Lead ' + ((Lead) record).Name + '...');
        return new Group();
    }

    public override void updateRecord(SObject record, Group queue) {
        Lead processedLead = (Lead) record;
        System.debug('Updating the record: ' + processedLead.FirstName + ' ' + processedLead.LastName);

        processedLead.LastName = processedLead.LastName + ' Updated';
        // processedLead.OwnerId = queue.Id;
        // update processedLead;
    }
}

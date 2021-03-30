public with sharing class RecordAssignmentController {
    
    public static void runRecordAssignment() {
        System.debug('Case processing started...');
        new CaseProcessor().processRecord('5001x00000BrwHVAAZ');
        System.debug('Case processing finished...');

        System.debug('Lead processing started...');
        new LeadProcessor().processRecord('00Q1x000004v5CVEAY');
        System.debug('Lead processing finished...');
    }
}

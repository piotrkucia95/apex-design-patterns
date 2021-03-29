public with sharing class RecordData {
    
    IUpdateStrategy updateStrategy;

    public void setUpdateStrategy(IUpdateStrategy strategy) {
        this.updateStrategy = strategy;
    }

    public void runDoUpdate(Id recordId, String name1, String name2) {
        updateStrategy.doUpdate(recordId, name1, name2);
    }
}

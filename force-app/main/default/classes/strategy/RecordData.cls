public with sharing virtual class RecordData {
    
    UpdateStrategy recordUpdateStrategy;

    public void setUpdateStrategy(UpdateStrategy strategy) {
        this.recordUpdateStrategy = strategy;
    }

    public void runDoUpdate(Id recordId, String name1, String name2) {
        recordUpdateStrategy.doUpdate(recordId, name1, name2);
    }
}

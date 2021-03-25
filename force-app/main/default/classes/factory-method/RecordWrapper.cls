public with sharing virtual class RecordWrapper {
    
    public String name;
    public String type;

    public virtual String getJSON() {
        return JSON.serialize(this);
    }
}

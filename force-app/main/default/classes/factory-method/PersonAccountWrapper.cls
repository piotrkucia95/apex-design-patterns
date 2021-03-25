public with sharing class PersonAccountWrapper extends RecordWrapper {
    public String phone;

    public PersonAccountWrapper(Account acc) {
        this.type = 'Person Account';
        this.name = acc.Name;
        this.phone = acc.Phone;
    }
}

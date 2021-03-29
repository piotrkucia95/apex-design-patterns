public with sharing class ContactUpdate implements IUpdateStrategy {

    Contact con = new Contact();

    public void doUpdate(Id recordId, String name1, String name2) {
        con.Id = recordId;
        con.FirstName = name1;
        con.LastName = name2;
        upsert con;
    }
}

public with sharing class AccountWrapper implements IAccountWrapper {
    String accountId;
    String name;
    String phone;
    String rating;
    
    public AccountWrapper(Account acc) {
        this.accountId = acc.Id;
        this.name = acc.Name;
        this.phone = acc.Phone;
        this.rating = acc.Rating;
    }

    public void doUpdate() {
        update new Account(
            Id = accountId,
            Name = name,
            Phone = phone,
            Rating = rating
        );
    }
}

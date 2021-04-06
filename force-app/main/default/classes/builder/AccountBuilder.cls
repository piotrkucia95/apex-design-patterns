public with sharing class AccountBuilder {
    Account acc;

    public AccountBuilder() {
        this.acc = new Account();
    }

    public AccountBuilder withName(String name) {
        acc.Name = name;
        return this;
    }

    public AccountBuilder withPhone(String phone) {
        acc.Phone = phone;
        return this;
    }

    public AccountBuilder withRating(String rating) {
        acc.Rating = rating;
        return this;
    }

    public AccountBuilder save() {
        upsert acc;
        return this;
    }

    public Account getRecord() {
        return acc;
    }
}

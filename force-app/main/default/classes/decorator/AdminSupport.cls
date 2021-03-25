public with sharing class AdminSupport extends Support {
    
    public AdminSupport() {
        this.description = 'Administrator Support';
    }

    public override Double getCost() {
        return 50;
    }
}

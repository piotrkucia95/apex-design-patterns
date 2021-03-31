public with sharing class AccountComponent extends Component {
    Account acc;

    public AccountComponent(Account acc) {
        this.acc = acc;
    }

    public override String getName() {
        return acc.Name;
    }

    public override Double getAnnualRevenue() {
        return acc.AnnualRevenue;
    }
}

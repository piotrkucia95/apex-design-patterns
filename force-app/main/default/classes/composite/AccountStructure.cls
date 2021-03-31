public with sharing class AccountStructure extends Component {
    List<Component> components = new List<Component>();
    Account acc;

    public AccountStructure(Account acc) {
       this.acc = acc;
    }
    
    public override void add(Component comp) {
        components.add(comp);
    }

    public override void remove(Component comp) {
        components.remove(components.indexOf(comp));
    }

    public override Component getChild(Integer index) {
        return components.get(index);
    }

    public override String getName() {
        return acc.Name;
    }

    public override Double getAnnualRevenue() {
        Double annualRevenue = 0;
        Iterator<Component> iterator = components.iterator();
        while(iterator.hasNext()) {
            annualRevenue += iterator.next().getAnnualRevenue();
        }
        return annualRevenue + acc.AnnualRevenue;
    }
}

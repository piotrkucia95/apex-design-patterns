public with sharing class CompositeTest {
    
    public static void printAccountInfos() {
        /* Building sample Account composite */
        Component accountComposite = new AccountStructure(new Account(Name='Base Account', AnnualRevenue=123));

        Component grandparent1 = new AccountStructure(new Account(Name='Child 1', AnnualRevenue=100));
        Component grandparent2 = new AccountComponent(new Account(Name='Child 2', AnnualRevenue=200));

        Component parent1 = new AccountStructure(new Account(Name='Grandchild 1', AnnualRevenue=100));
        Component parent2 = new AccountComponent(new Account(Name='Grandchild 2', AnnualRevenue=200));

        Component child1 = new AccountComponent(new Account(Name='Grandgrandchild 1', AnnualRevenue=100));
        Component child2 = new AccountComponent(new Account(Name='Grandgrandchild 2', AnnualRevenue=200));
        Component child3 = new AccountComponent(new Account(Name='Grandgrandchild 3', AnnualRevenue=300));
        Component child4 = new AccountComponent(new Account(Name='Grandgrandchild 4', AnnualRevenue=400));

        parent1.add(child1);
        parent1.add(child2);
        parent1.add(child3);
        parent1.add(child4);

        grandparent1.add(parent1);
        grandparent1.add(parent2);

        accountComposite.add(grandparent1);
        accountComposite.add(grandparent2);

        /* Executing the composite logic */
        Double totalRevenue = accountComposite.getAnnualRevenue();
        System.debug('Annual Revenue for all of the accounts in the composite: ' + totalRevenue);
    }
}

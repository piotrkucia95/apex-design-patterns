public with sharing class UnitedStatesTaxFactory implements TaxFactory {
    
    public PIT createPIT() {
        return new UnitedStatesPIT();
    }

    public VAT createVAT() {
        return new UnitedStatesVAT();
    }
}

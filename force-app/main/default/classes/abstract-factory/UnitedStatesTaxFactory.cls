public with sharing class UnitedStatesTaxFactory implements TaxFactory {
    
    public IPIT createPIT() {
        return new UnitedStatesPIT();
    }

    public IVAT createVAT() {
        return new UnitedStatesVAT();
    }
}

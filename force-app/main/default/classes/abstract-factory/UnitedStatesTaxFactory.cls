public with sharing class UnitedStatesTaxFactory implements ITaxFactory {
    
    public IPIT createPIT() {
        return new UnitedStatesPIT();
    }

    public IVAT createVAT() {
        return new UnitedStatesVAT();
    }
}

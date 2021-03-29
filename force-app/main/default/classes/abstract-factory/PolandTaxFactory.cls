public with sharing class PolandTaxFactory implements TaxFactory {
    
    public IPIT createPIT() {
        return new PolandPIT();
    }

    public IVAT createVAT() {
        return new PolandVAT();
    }
}

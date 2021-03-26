public with sharing class PolandTaxFactory implements TaxFactory {
    
    public PIT createPIT() {
        return new PolandPIT();
    }

    public VAT createVAT() {
        return new PolandVAT();
    }
}

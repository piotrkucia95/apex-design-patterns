public with sharing class PolandTaxFactory implements ITaxFactory {
    
    public IPIT createPIT() {
        return new PolandPIT();
    }

    public IVAT createVAT() {
        return new PolandVAT();
    }
}

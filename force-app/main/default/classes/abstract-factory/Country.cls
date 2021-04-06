public with sharing virtual class Country {
    IPIT pitTax;
    IVAT vatTax;

    public Country(ITaxFactory taxesFactory) {
        pitTax = taxesFactory.createPIT();
        vatTax = taxesFactory.createVAT();
    }

    public Map<String, String> getTaxes() {
        return new Map<String, String>{
            'PIT' => (pitTax.getValue() * 100) + '%',
            'VAT' => (vatTax.getValue() * 100) + '%'
        };
    }
}

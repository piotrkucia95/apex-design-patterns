public with sharing class CountryFactory {

    public Country createCountry(String countryName) {
        switch on countryName {
            when 'Poland' {
                return new Country(new PolandTaxFactory());
            }
            when 'United States' {
                return new Country(new UnitedStatesTaxFactory());
            }
            when else {
                return null;
            }
        }
    }
}

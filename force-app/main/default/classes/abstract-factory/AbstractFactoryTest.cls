public with sharing class AbstractFactoryTest {

    @AuraEnabled
    public static void printCountryTaxes() {
        CountryFactory countriesFactory = new CountryFactory();

        System.debug('POLAND Taxes:');
        Country poland = countriesFactory.createCountry('Poland');
        System.debug(poland.getTaxes());

        System.debug('US Taxes:');
        Country unitedStates = countriesFactory.createCountry('United States');
        System.debug(unitedStates.getTaxes());
    }
}

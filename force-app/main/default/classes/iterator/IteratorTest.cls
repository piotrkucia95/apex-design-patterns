public with sharing class IteratorTest {
    private static final Set<String> FRUIT_SET = new Set<String>{'Apple', 'Orange', 'Mango', 'Peach', 'Banana'};
    private static final List<String> VEGETABLE_LIST = new List<String>{'Potato', 'Carrot', 'Tomato', 'Cucumber', 'Pepper'};
    private static final String ITERABLE_STRING = 'ITERABLE';
    
    public static void runIterators() {
        System.debug('***STANDARD ITERATORS:***');
        printStandardIteratorElements(FRUIT_SET.iterator());
        printStandardIteratorElements(VEGETABLE_LIST.iterator());
        printStandardIteratorElements(new StringIterator(ITERABLE_STRING));

        System.debug('***CUSTOM ITERATORS:***');
        printCustomIteratorElements(new CustomSetIterator(FRUIT_SET));
        printCustomIteratorElements(new CustomListIterator(VEGETABLE_LIST));
    }

    /* Utilizes standard Iterator<String> interface*/
    private static void printStandardIteratorElements(Iterator<String> iterator) {
        while(iterator.hasNext()) {
            System.debug(iterator.next());
        }
    }

    /* Utilizes custom ICustomIterator interface (useless) */
    private static void printCustomIteratorElements(ICustomIterator iterator) {
        while(iterator.hasNext()) {
            System.debug(iterator.next());
        }
    }
}

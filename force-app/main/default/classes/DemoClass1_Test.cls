@isTest
private class DemoClass1_Test {
    @isTest
    static void testAdd() {
        Integer result = DemoClass1.add(5, 3);
        System.assertEquals(8, result, 'Addition did not return the expected result.');
    }

    @isTest
    static void testSubtract() {
        Integer result = DemoClass1.subtract(5, 3);
        System.assertEquals(2, result, 'Subtraction did not return the expected result.');
    }
}
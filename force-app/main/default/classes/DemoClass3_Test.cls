@isTest
private class DemoClass3_Test {
    @isTest
    static void testReverse() {
        String reversed = DemoClass3.reverse('hello');
        System.assertEquals('olleh', reversed, 'String reversal did not return the expected result.');
    }

    @isTest
    static void testToUpperCase() {
        String upper = DemoClass3.toUpperCase('hello');
        System.assertEquals('HELLO', upper, 'String did not convert to uppercase as expected.');
    }

    @isTest
    static void testNullInput() {
        String result = DemoClass3.reverse(null);
        System.assertEquals(null, result, 'Expected null for null input in reverse method.');
    }
}
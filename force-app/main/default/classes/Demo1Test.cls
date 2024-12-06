/**
 * This class contains unit tests for validating the behavior of the `Demo1` class.
 *
 * Unit tests are used to ensure that the functionality of the Apex code works as expected.
 * They take no arguments, commit no data to the database, and are flagged with the @isTest annotation.
 *
 * All test methods in an org are executed whenever Apex code is deployed to a production org to:
 * - Confirm correctness
 * - Ensure code coverage
 * - Prevent regressions
 *
 * Requirements:
 * - At least 75% code coverage for all Apex classes.
 * - Some code coverage for all triggers.
 *
 * Classes defined with the @isTest annotation do not count against the org size limit for Apex scripts.
 */
@isTest
private class Demo1Test {

    /**
     * Test method to verify the behavior of the `Demo1.main()` method.
     * Asserts that the method executes successfully without exceptions.
     */
    @isTest
    static void testMainMethod() {
        Test.startTest();
        Demo1.main();
        Test.stopTest();

        System.assert(true, 'Demo1.main() executed successfully.');
    }
}

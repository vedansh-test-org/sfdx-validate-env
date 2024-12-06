@isTest
private class DemoClass2_Test {

    @isTest
    static void testCreateAccount() {
        String testName = 'Test Account';

        Account acc = DemoClass2.createAccount(testName);

        System.assertNotEquals(null, acc, 'Account should not be null');
        System.assertEquals(testName, acc.Name, 'Account Name should match');
        
        Account queriedAcc = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals(testName, queriedAcc.Name, 'Queried Account Name should match');
    }

    @isTest
    static void testUpdateAccount() {
        Account acc = new Account(Name = 'Old Name');
        insert acc;

        acc.Name = 'Updated Name';

        DemoClass2.updateAccount(acc);

        Account updatedAcc = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Updated Name', updatedAcc.Name, 'Account Name should be updated');
    }

    @isTest
    static void testCreateAndUpdateAccount() {
        String testName = 'Account For Update';

        Account acc = DemoClass2.createAccount(testName);

        acc.Name = 'Updated Account';
        DemoClass2.updateAccount(acc);

        Account updatedAcc = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Updated Account', updatedAcc.Name, 'The account name should be updated');
    }
}
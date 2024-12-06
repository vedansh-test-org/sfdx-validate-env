public class DemoClass2 {
    public static Account createAccount(String name) {
        Account acc = new Account(Name = name);
        insert acc;
        return acc;
    }

    public static void updateAccount(Account acc) {
        update acc;
    }
}
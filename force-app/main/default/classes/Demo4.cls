/**
 * Demo4 class demonstrates a basic structure with proper documentation and logging practices.
 * 
 * @author Kaleem Ahmed
 * @date 2024-12-06
 * @description This class contains a simple static method to demonstrate proper logging.
 */
public with sharing class Demo4 {
    /**
     * Entry point method for the Demo4 class.
     * Logs a message at the INFO level.
     */
    public static void main() {
        System.debug(LoggingLevel.INFO, 'Hello World 4');
        System.debug(LoggingLevel.INFO, 'Hello World 4');
    }
}

/**
 * Demo1 class demonstrates a basic structure with proper documentation and logging practices.
 * 
 * @author Kaleem Ahmed
 * @date 2024-12-06
 * @description This class contains a simple static method to demonstrate proper logging.
 */
public with sharing class Demo1 {
    /**
     * Entry point method for the Demo1 class.
     * Logs a message at the INFO level.
     */
    public static void main() {
        System.debug(LoggingLevel.INFO, 'Hello World 1');
        System.debug(LoggingLevel.INFO, 'Hello World 1');
    }
}

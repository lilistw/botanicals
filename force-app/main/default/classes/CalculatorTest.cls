@isTest
public with sharing class CalculatorTest {
    @isTest
    public static void testDivideByZero() {
        // Exception test
        try {
            Test.startTest();
            Calculator.divide(1, 0);
            Test.stopTest();
            Assert.fail('An exception should have been thrown');
        } catch (Exception e) {
            Assert.areEqual('You still can\'t divide by zero', 
                e.getMessage(), 
                'Exception message does not match');
        }
    }
}
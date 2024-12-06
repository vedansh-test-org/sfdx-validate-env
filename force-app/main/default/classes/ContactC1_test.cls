@isTest
public class ContactC1_test {
  @isTest
  static void testGetContactsWithValidEmail() {
    // Create test data
    Contact testContact = new Contact(
      FirstName = 'John',
      LastName = 'Doe',
      Email = 'john.doe@example.com'
    );
    insert testContact;

    // Simulate the REST request
    RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();
    req.requestURI = '/services/apexrest/contactc1';
    req.httpMethod = 'GET';
    req.addParameter('email', 'john.doe@example.com');

    RestContext.request = req;
    RestContext.response = res;

    Test.startTest();
    ContactC1.getContacts();
    Test.stopTest();

    // Verify the response
    System.debug(res.responseBody);

    System.assertEquals(
      200,
      RestContext.response.statusCode,
      'Expected status code 200'
    );
  }

  @isTest
  static void testGetContactsWithInvalidEmail() {
    // Simulate the REST request with an invalid email
    RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();
    req.requestURI = '/services/apexrest/contactc1';
    req.httpMethod = 'GET';
    req.addParameter('email', 'invalid-email');

    RestContext.request = req;
    RestContext.response = res;

    Test.startTest();
    ContactC1.getContacts();
    Test.stopTest();

    // Verify the response for invalid email
    System.assertEquals(
      400,
      RestContext.response.statusCode,
      'Expected status code 400 for invalid email'
    );
    System.assert(
      RestContext.response.responseBody.toString()
        .contains('Provide a valid Email Id.'),
      'Expected error message in response'
    );
  }

  @isTest
  static void testGetContactsWithMissingEmail() {
    // Simulate the REST request without an email parameter
    RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();
    req.requestURI = '/services/apexrest/contactc1';
    req.httpMethod = 'GET'; // Note that no email parameter is added

    RestContext.request = req;
    RestContext.response = res;

    Test.startTest();
    ContactC1.getContacts();
    Test.stopTest();

    // Verify the response for missing email
    System.assertEquals(
      400,
      RestContext.response.statusCode,
      'Expected status code 400 for missing email'
    );
    System.assert(
      RestContext.response.responseBody.toString()
        .contains('Provide a valid Email Id.'),
      'Expected error message in response'
    );
  }

  @isTest
  static void testGetContactsWithNonExistingEmail() {
    // Simulate the REST request with an email that doesn't exist
    RestRequest req = new RestRequest();
    RestResponse res = new RestResponse();
    req.requestURI = '/services/apexrest/contactc1';
    req.httpMethod = 'GET';
    req.addParameter('email', 'nonexistent@example.com');

    RestContext.request = req;
    RestContext.response = res;

    Test.startTest();
    ContactC1.getContacts();
    Test.stopTest();

    // Verify the response when no contact is found
    ContactWrapper contactWrapper = (ContactWrapper) JSON.deserialize(
      RestContext.response.responseBody.toString(),
      ContactWrapper.class
    );

    System.assertEquals(
      0,
      contactWrapper.dataList.size(),
      'Expected 0 contacts to be returned'
    );
    System.assertEquals(
      200,
      RestContext.response.statusCode,
      'Expected status code 200'
    );
  }
}
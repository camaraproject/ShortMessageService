Feature: CAMARA ShortMessageService  API,  Operation sendSMS
  # Input to be provided by the implementation to the tester
  #
  #
  # Testing assets:
  # * A mobile number/Identifier (aka Short Code) from which SMS is to be sent.
  # * A mobile number to which SMS is to be sent.
  #
  # References to OAS spec schemas refer to schemas specifies in SMS.yaml

  Background: Common SMS setup
    Given the resource "/sms/v0rc1"                                                              |
    And the header "Content-Type" is set to "application/json"
    And the header "Authorization" is set to a valid access token
    And the header "x-correlator" is set to a UUID value
    And the request body is set by default to a request body compliant with the schema

  # Happy path scenarios

  # This first scenario serves as a minimum success scenario
  @send_sms_01_generic_success_scenario
  Scenario: Common validations for any success scenario
    # Valid testing mobile number and default request body compliant with the schema
    Given the request body property "$.to" is set to a valid testing mobile number
    And the request body property "$.from" is set to a valid testing mobile number
	And the request body property "$.category" is set to a valid category value
    When the HTTP "POST" request is sent
    Then the response status code is 200
    And the response header "Content-Type" is "application/json"
    And the response header "x-correlator" has same value as the request header "x-correlator"
    # The response has to comply with the generic response schema which is part of the spec
    And the response body complies with the OAS schema at "/components/schemas/Location"


  # Error scenarios for phone number

  @location_retrieval_10_empty_receiver
  Scenario: The 'to' attribute value is empty
    Given the request body property "$.to" is set to empty object
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @location_retrieval_11_schema_compliant
  # Test every type of identifier even if not supported by the implementation
  Scenario Outline: 'to' attribute value does not comply with the schema
    Given the request body property "$.to" does not comply with the OAS schema
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text
	
  @location_retrieval_11_schema_compliant
  # Test every type of identifier even if not supported by the implementation
  Scenario Outline: 'from' attribute value does not comply with the schema
    Given the request body property "$.from" does not comply with the OAS schema
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text	


    Examples:
      | phone_number_value |
      | string_value       |
      | 1234567890         |
      | +12334foo22222     |
      | +00012230304913849 |
      | 123                |
      | ++49565456787      |


  # Generic 400 errors

  @location_retrieval_400.1_no_request_body
  Scenario: Missing request body
    Given the request body is not included
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text

  @location_retrieval_400.2_empty_request_body
  Scenario: Empty object as request body
    Given the request body is set to "{}"
    When the HTTP "POST" request is sent
    Then the response status code is 400
    And the response property "$.status" is 400
    And the response property "$.code" is "INVALID_ARGUMENT"
    And the response property "$.message" contains a user friendly text


  # Generic 401 errors

  @location_retrieval_401.1_no_authorization_header
  Scenario: No Authorization header
    Given the header "Authorization" is removed
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 401
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text


  @location_retrieval_401.2_expired_access_token
  Scenario: Expired access token
    Given the header "Authorization" is set to an expired access token
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 401
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text


  @location_retrieval_401.3_invalid_access_token
  Scenario: Invalid access token
    Given the header "Authorization" is set to an invalid access token
    And the request body is set to a valid request body
    When the HTTP "POST" request is sent
    Then the response status code is 401
    And the response header "Content-Type" is "application/json"
    And the response property "$.status" is 401
    And the response property "$.code" is "UNAUTHENTICATED"
    And the response property "$.message" contains a user friendly text
---
id: auth-profile
title: AuthProfile
pagination_label: AuthProfile
sidebar_label: AuthProfile
sidebar_class_name: gosdk
keywords: ['go', 'golang', 'sdk', 'AuthProfile'] 
slug: /tools/sdk/powershell/beta/methods/auth-profile
tags: ['SDK', 'Software Development Kit', 'AuthProfile']
---


# AuthProfile

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProfileConfig**](#get-profile-config) | **GET** /auth-profiles/{id} | Get Auth Profile.
[**getProfileConfigList**](#get-profile-config-list) | **GET** /auth-profiles | Get list of Auth Profiles.
[**patchProfileConfig**](#patch-profile-config) | **PATCH** /auth-profiles/{id} | Patch a specified Auth Profile



## get-profile-config


This API returns auth profile information.

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

	
### Return type

[**AuthProfile**](../models/auth-profile)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Auth Profile | AuthProfile
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto


### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) 


## get-profile-config-list


This API returns a list of auth profiles.

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

	
### Return type

[**AuthProfileSummary**](../models/auth-profile-summary)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of Auth Profiles | AuthProfileSummary
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto


### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) 


## patch-profile-config


This API updates an existing Auth Profile. The following fields are patchable:
**offNetwork**, **untrustedGeography**, **applicationId**, **applicationName**, **type**

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the Auth Profile to patch.
 Body  | JsonPatchOperation | [**[]JsonPatchOperation**](../models/json-patch-operation) | True  | 

	
### Return type

[**AuthProfile**](../models/auth-profile)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with the Auth Profile as updated. | AuthProfile
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto


### HTTP request headers

- **Content-Type**: application/json-patch+json
- **Accept**: application/json

[[Back to top]](#) 

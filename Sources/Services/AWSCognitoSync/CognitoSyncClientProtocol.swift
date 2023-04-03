// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Amazon Cognito Sync Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity. With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with [Amazon Cognito Identity service](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html). If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the [Developer Guide for Android](http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html) and the [Developer Guide for iOS](http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html).
public protocol CognitoSyncClientProtocol {
    /// Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    func bulkPublish(input: BulkPublishInput) async throws -> BulkPublishOutputResponse
    /// Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    /// Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    /// Gets usage details (for example, data storage) about a particular identity pool. This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity. DescribeIdentityPoolUsage The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 8dc0e749-c8cd-48bd-8520-da6be00d528b X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityPoolUsage HOST: cognito-sync.us-east-1.amazonaws.com:443 X-AMZ-DATE: 20141111T205737Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature= { "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsage", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "IDENTITY_POOL_ID" } } 1.1 200 OK x-amzn-requestid: 8dc0e749-c8cd-48bd-8520-da6be00d528b content-type: application/json content-length: 271 date: Tue, 11 Nov 2014 20:57:37 GMT { "Output": { "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityPoolUsageResponse", "IdentityPoolUsage": { "DataStorage": 0, "IdentityPoolId": "IDENTITY_POOL_ID", "LastModifiedDate": 1.413231134115E9, "SyncSessionsCount": null } }, "Version": "1.0" }
    func describeIdentityPoolUsage(input: DescribeIdentityPoolUsageInput) async throws -> DescribeIdentityPoolUsageOutputResponse
    /// Gets usage information for an identity, including number of datasets and data usage. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. DescribeIdentityUsage The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 33f9b4e4-a177-4aad-a3bb-6edb7980b283 X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.DescribeIdentityUsage HOST: cognito-sync.us-east-1.amazonaws.com:443 X-AMZ-DATE: 20141111T215129Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature= { "Operation": "com.amazonaws.cognito.sync.model#DescribeIdentityUsage", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "IDENTITY_POOL_ID", "IdentityId": "IDENTITY_ID" } } 1.1 200 OK x-amzn-requestid: 33f9b4e4-a177-4aad-a3bb-6edb7980b283 content-type: application/json content-length: 318 date: Tue, 11 Nov 2014 21:51:29 GMT { "Output": { "__type": "com.amazonaws.cognito.sync.model#DescribeIdentityUsageResponse", "IdentityUsage": { "DataStorage": 16, "DatasetCount": 1, "IdentityId": "IDENTITY_ID", "IdentityPoolId": "IDENTITY_POOL_ID", "LastModifiedDate": 1.412974081336E9 } }, "Version": "1.0" }
    func describeIdentityUsage(input: DescribeIdentityUsageInput) async throws -> DescribeIdentityUsageOutputResponse
    /// Get the status of the last BulkPublish operation for an identity pool.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    func getBulkPublishDetails(input: GetBulkPublishDetailsInput) async throws -> GetBulkPublishDetailsOutputResponse
    /// Gets the events and the corresponding Lambda functions associated with an identity pool.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    func getCognitoEvents(input: GetCognitoEventsInput) async throws -> GetCognitoEventsOutputResponse
    /// Gets the configuration settings of an identity pool.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity. GetIdentityPoolConfiguration The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: b1cfdd4b-f620-4fe4-be0f-02024a1d33da X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.GetIdentityPoolConfiguration HOST: cognito-sync.us-east-1.amazonaws.com X-AMZ-DATE: 20141004T195722Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature= { "Operation": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfiguration", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "ID_POOL_ID" } } 1.1 200 OK x-amzn-requestid: b1cfdd4b-f620-4fe4-be0f-02024a1d33da date: Sat, 04 Oct 2014 19:57:22 GMT content-type: application/json content-length: 332 { "Output": { "__type": "com.amazonaws.cognito.sync.model#GetIdentityPoolConfigurationResponse", "IdentityPoolId": "ID_POOL_ID", "PushSync": { "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"], "RoleArn": "ROLEARN" } }, "Version": "1.0" }
    func getIdentityPoolConfiguration(input: GetIdentityPoolConfigurationInput) async throws -> GetIdentityPoolConfigurationOutputResponse
    /// Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call. ListDatasets The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 15225768-209f-4078-aaed-7494ace9f2db X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListDatasets HOST: cognito-sync.us-east-1.amazonaws.com:443 X-AMZ-DATE: 20141111T215640Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature= { "Operation": "com.amazonaws.cognito.sync.model#ListDatasets", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "IDENTITY_POOL_ID", "IdentityId": "IDENTITY_ID", "MaxResults": "3" } } 1.1 200 OK x-amzn-requestid: 15225768-209f-4078-aaed-7494ace9f2db, 15225768-209f-4078-aaed-7494ace9f2db content-type: application/json content-length: 355 date: Tue, 11 Nov 2014 21:56:40 GMT { "Output": { "__type": "com.amazonaws.cognito.sync.model#ListDatasetsResponse", "Count": 1, "Datasets": [ { "CreationDate": 1.412974057151E9, "DataStorage": 16, "DatasetName": "my_list", "IdentityId": "IDENTITY_ID", "LastModifiedBy": "123456789012", "LastModifiedDate": 1.412974057244E9, "NumRecords": 1 }], "NextToken": null }, "Version": "1.0" }
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    /// Gets a list of identity pools registered with Cognito. ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity. ListIdentityPoolUsage The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3 X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListIdentityPoolUsage HOST: cognito-sync.us-east-1.amazonaws.com:443 X-AMZ-DATE: 20141111T211414Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature= { "Operation": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsage", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "MaxResults": "2" } } 1.1 200 OK x-amzn-requestid: 9be7c425-ef05-48c0-aef3-9f0ff2fe17d3 content-type: application/json content-length: 519 date: Tue, 11 Nov 2014 21:14:14 GMT { "Output": { "__type": "com.amazonaws.cognito.sync.model#ListIdentityPoolUsageResponse", "Count": 2, "IdentityPoolUsages": [ { "DataStorage": 0, "IdentityPoolId": "IDENTITY_POOL_ID", "LastModifiedDate": 1.413836234607E9, "SyncSessionsCount": null }, { "DataStorage": 0, "IdentityPoolId": "IDENTITY_POOL_ID", "LastModifiedDate": 1.410892165601E9, "SyncSessionsCount": null }], "MaxResults": 2, "NextToken": "dXMtZWFzdC0xOjBjMWJhMDUyLWUwOTgtNDFmYS1hNzZlLWVhYTJjMTI1Zjg2MQ==" }, "Version": "1.0" }
    func listIdentityPoolUsage(input: ListIdentityPoolUsageInput) async throws -> ListIdentityPoolUsageOutputResponse
    /// Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data. ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call. ListRecords The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.ListRecords HOST: cognito-sync.us-east-1.amazonaws.com:443 X-AMZ-DATE: 20141111T183230Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;host;x-amz-date;x-amz-target;x-amzn-requestid, Signature= { "Operation": "com.amazonaws.cognito.sync.model#ListRecords", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "IDENTITY_POOL_ID", "IdentityId": "IDENTITY_ID", "DatasetName": "newDataSet" } } 1.1 200 OK x-amzn-requestid: b3d2e31e-d6b7-4612-8e84-c9ba288dab5d content-type: application/json content-length: 623 date: Tue, 11 Nov 2014 18:32:30 GMT { "Output": { "__type": "com.amazonaws.cognito.sync.model#ListRecordsResponse", "Count": 0, "DatasetDeletedAfterRequestedSyncCount": false, "DatasetExists": false, "DatasetSyncCount": 0, "LastModifiedBy": null, "MergedDatasetNames": null, "NextToken": null, "Records": [], "SyncSessionToken": "SYNC_SESSION_TOKEN" }, "Version": "1.0" }
    func listRecords(input: ListRecordsInput) async throws -> ListRecordsOutputResponse
    /// Registers a device to receive push sync notifications.This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials. RegisterDevice The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 368f9200-3eca-449e-93b3-7b9c08d8e185 X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.RegisterDevice HOST: cognito-sync.us-east-1.amazonaws.com X-AMZ-DATE: 20141004T194643Z X-AMZ-SECURITY-TOKEN: AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature= { "Operation": "com.amazonaws.cognito.sync.model#RegisterDevice", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "ID_POOL_ID", "IdentityId": "IDENTITY_ID", "Platform": "GCM", "Token": "PUSH_TOKEN" } } 1.1 200 OK x-amzn-requestid: 368f9200-3eca-449e-93b3-7b9c08d8e185 date: Sat, 04 Oct 2014 19:46:44 GMT content-type: application/json content-length: 145 { "Output": { "__type": "com.amazonaws.cognito.sync.model#RegisterDeviceResponse", "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014" }, "Version": "1.0" }
    func registerDevice(input: RegisterDeviceInput) async throws -> RegisterDeviceOutputResponse
    /// Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
    func setCognitoEvents(input: SetCognitoEventsInput) async throws -> SetCognitoEventsOutputResponse
    /// Sets the necessary configuration for push sync.This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity. SetIdentityPoolConfiguration The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: a46db021-f5dd-45d6-af5b-7069fa4a211b X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SetIdentityPoolConfiguration HOST: cognito-sync.us-east-1.amazonaws.com X-AMZ-DATE: 20141004T200006Z AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature= { "Operation": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfiguration", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "ID_POOL_ID", "PushSync": { "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"], "RoleArn": "ROLEARN" } } } 1.1 200 OK x-amzn-requestid: a46db021-f5dd-45d6-af5b-7069fa4a211b date: Sat, 04 Oct 2014 20:00:06 GMT content-type: application/json content-length: 332 { "Output": { "__type": "com.amazonaws.cognito.sync.model#SetIdentityPoolConfigurationResponse", "IdentityPoolId": "ID_POOL_ID", "PushSync": { "ApplicationArns": ["PLATFORMARN1", "PLATFORMARN2"], "RoleArn": "ROLEARN" } }, "Version": "1.0" }
    func setIdentityPoolConfiguration(input: SetIdentityPoolConfigurationInput) async throws -> SetIdentityPoolConfigurationOutputResponse
    /// Subscribes to receive notifications when a dataset is modified by another device.This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials. SubscribeToDataset The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZN-REQUESTID: 8b9932b7-201d-4418-a960-0a470e11de9f X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.SubscribeToDataset HOST: cognito-sync.us-east-1.amazonaws.com X-AMZ-DATE: 20141004T195350Z X-AMZ-SECURITY-TOKEN: AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature= { "Operation": "com.amazonaws.cognito.sync.model#SubscribeToDataset", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "ID_POOL_ID", "IdentityId": "IDENTITY_ID", "DatasetName": "Rufus", "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014" } } 1.1 200 OK x-amzn-requestid: 8b9932b7-201d-4418-a960-0a470e11de9f date: Sat, 04 Oct 2014 19:53:50 GMT content-type: application/json content-length: 99 { "Output": { "__type": "com.amazonaws.cognito.sync.model#SubscribeToDatasetResponse" }, "Version": "1.0" }
    func subscribeToDataset(input: SubscribeToDatasetInput) async throws -> SubscribeToDatasetOutputResponse
    /// Unsubscribes from receiving notifications when a dataset is modified by another device.This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials. UnsubscribeFromDataset The following examples have been edited for readability. POST / HTTP/1.1 CONTENT-TYPE: application/json X-AMZ-REQUESTSUPERTRACE: true X-AMZN-REQUESTID: 676896d6-14ca-45b1-8029-6d36b10a077e X-AMZ-TARGET: com.amazonaws.cognito.sync.model.AWSCognitoSyncService.UnsubscribeFromDataset HOST: cognito-sync.us-east-1.amazonaws.com X-AMZ-DATE: 20141004T195446Z X-AMZ-SECURITY-TOKEN: AUTHORIZATION: AWS4-HMAC-SHA256 Credential=, SignedHeaders=content-type;content-length;host;x-amz-date;x-amz-target, Signature= { "Operation": "com.amazonaws.cognito.sync.model#UnsubscribeFromDataset", "Service": "com.amazonaws.cognito.sync.model#AWSCognitoSyncService", "Input": { "IdentityPoolId": "ID_POOL_ID", "IdentityId": "IDENTITY_ID", "DatasetName": "Rufus", "DeviceId": "5cd28fbe-dd83-47ab-9f83-19093a5fb014" } } 1.1 200 OK x-amzn-requestid: 676896d6-14ca-45b1-8029-6d36b10a077e date: Sat, 04 Oct 2014 19:54:46 GMT content-type: application/json content-length: 103 { "Output": { "__type": "com.amazonaws.cognito.sync.model#UnsubscribeFromDatasetResponse" }, "Version": "1.0" }
    func unsubscribeFromDataset(input: UnsubscribeFromDatasetInput) async throws -> UnsubscribeFromDatasetOutputResponse
    /// Posts updates to records and adds and deletes records for a dataset and user. The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0. This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.
    func updateRecords(input: UpdateRecordsInput) async throws -> UpdateRecordsOutputResponse
}

public protocol CognitoSyncClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CognitoSyncClientTypes {}

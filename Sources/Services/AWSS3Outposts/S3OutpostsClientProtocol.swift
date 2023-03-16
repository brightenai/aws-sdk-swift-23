// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon S3 on Outposts provides access to S3 on Outposts operations.
public protocol S3OutpostsClientProtocol {
    /// Creates an endpoint and associates it with the specified Outpost. It can take up to 5 minutes for this action to finish. Related actions include:
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    func createEndpoint(input: CreateEndpointInput) async throws -> CreateEndpointOutputResponse
    /// Deletes an endpoint. It can take up to 5 minutes for this action to finish. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [ListEndpoints](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html)
    func deleteEndpoint(input: DeleteEndpointInput) async throws -> DeleteEndpointOutputResponse
    /// Lists endpoints associated with the specified Outpost. Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    func listEndpoints(input: ListEndpointsInput) async throws -> ListEndpointsOutputResponse
    /// Lists the Outposts with S3 on Outposts capacity for your Amazon Web Services account. Includes S3 on Outposts that you have access to as the Outposts owner, or as a shared user from Resource Access Manager (RAM).
    func listOutpostsWithS3(input: ListOutpostsWithS3Input) async throws -> ListOutpostsWithS3OutputResponse
    /// Lists all endpoints associated with an Outpost that has been shared by Amazon Web Services Resource Access Manager (RAM). Related actions include:
    ///
    /// * [CreateEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html)
    ///
    /// * [DeleteEndpoint](https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html)
    func listSharedEndpoints(input: ListSharedEndpointsInput) async throws -> ListSharedEndpointsOutputResponse
}

public protocol S3OutpostsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum S3OutpostsClientTypes {}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Amazon Web Services Migration Hub Refactor Spaces This API reference provides descriptions, syntax, and other details about each of the actions and data types for Amazon Web Services Migration Hub Refactor Spaces (Refactor Spaces). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see [Amazon Web Services SDKs](https://aws.amazon.com/tools/#SDKs). To share Refactor Spaces environments with other Amazon Web Services accounts or with Organizations and their OUs, use Resource Access Manager's CreateResourceShare API. See [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) in the Amazon Web Services RAM API Reference.
public protocol MigrationHubRefactorSpacesClientProtocol {
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the applications created inside the environment, regardless of the account that creates the application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC link, and Network Load Balancer for the application proxy inside your account.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and all Refactor Spaces applications, services, and routes created within the environment. They are referred to as the environment owner. The environment owner has cross-account visibility and control of Refactor Spaces resources that are added to the environment by other accounts that the environment is shared with. When creating an environment with a network fabric type of TRANSIT_GATEWAY, Refactor Spaces provisions a transit gateway in your account.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the environment owner, regardless of which account creates the route. Routes target a service in the application. If an application does not have any routes, then the first route must be created as a DEFAULTRouteType. When created, the default route defaults to an active state so state is not a required input. However, like all other state values the state of the default route can be updated after creation, but only when all other routes are also inactive. Conversely, no route can be active without the default route also being active. When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic to the target service as follows:
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a private IP address, Refactor Spaces routes traffic using the API Gateway VPC link.
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a public IP address, Refactor Spaces routes traffic over the public internet.
    ///
    /// * If the service has an Lambda function endpoint, then Refactor Spaces configures the Lambda function's resource policy to allow the application's API Gateway to invoke the function.
    ///
    ///
    /// A one-time health check is performed on the service when either the route is updated from inactive to active, or when it is created with an active state. If the health check fails, the route transitions the route state to FAILED, an error code of SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE is provided, and no traffic is sent to the service. For Lambda functions, the Lambda function state is checked. If the function is not active, the function configuration is updated so that Lambda resources are provisioned. If the Lambda state is Failed, then the route creation fails. For more information, see the [GetFunctionConfiguration's State response parameter](https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State) in the Lambda Developer Guide. For Lambda endpoints, a check is performed to determine that a Lambda function with the specified ARN exists. If it does not exist, the health check fails. For public URLs, a connection is opened to the public endpoint. If the URL is not reachable, the health check fails. Refactor Spaces automatically resolves the public Domain Name System (DNS) names that are set in [CreateServiceRequest$UrlEndpoint] when you create a service. The DNS names resolve when the DNS time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60 seconds. This periodic DNS resolution ensures that the route configuration remains up-to-date. For private URLS, a target group is created on the Elastic Load Balancing and the target group health check is run. The HealthCheckProtocol, HealthCheckPort, and HealthCheckPath are the same protocol, port, and path specified in the URL or health URL, if used. All other settings use the default values, as described in [Health checks for your target groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html). The health check is considered successful if at least one target within the target group transitions to a healthy state. Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed certificates are supported. Private Certificate Authorities (CAs) are permitted only if the CA's domain is also publicly resolvable.
    func createRoute(input: CreateRouteInput) async throws -> CreateRouteOutputResponse
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the environment owner, regardless of which account in the environment creates the service. Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda function endpoint. If an Amazon Web Services resource is launched in a service VPC, and you want it to be accessible to all of an environment’s services with VPCs and routes, apply the RefactorSpacesSecurityGroup to the resource. Alternatively, to add more cross-account constraints, apply your own security group.
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutputResponse
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first delete any services or routes within the application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first delete any applications and services within the environment.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutputResponse
    /// Deletes the resource policy set for the environment.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    func deleteRoute(input: DeleteRouteInput) async throws -> DeleteRouteOutputResponse
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutputResponse
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutputResponse
    /// Gets the resource-based permission policy that is set for the given environment.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    func getRoute(input: GetRouteInput) async throws -> GetRouteOutputResponse
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    func getService(input: GetServiceInput) async throws -> GetServiceOutputResponse
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutputResponse
    /// Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the environment.
    func listEnvironmentVpcs(input: ListEnvironmentVpcsInput) async throws -> ListEnvironmentVpcsOutputResponse
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    func listRoutes(input: ListRoutesInput) async throws -> ListRoutesOutputResponse
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutputResponse
    /// Lists the tags of a resource. The caller account must be the same as the resource’s OwnerAccountId. Listing tags in other accounts is not supported.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy must contain the same actions and condition statements as the arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Removes the tags of a given resource. Tags are metadata which can be used to manage a resource. To tag a resource, the caller account must be the same as the resource’s OwnerAccountId. Tagging resources in other accounts is not supported. Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an environment’s transit gateway.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource. To untag a resource, the caller account must be the same as the resource’s OwnerAccountId. Untagging resources across accounts is not supported.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an Amazon Web Services Migration Hub Refactor Spaces route.
    func updateRoute(input: UpdateRouteInput) async throws -> UpdateRouteOutputResponse
}

public protocol MigrationHubRefactorSpacesClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MigrationHubRefactorSpacesClientTypes {}

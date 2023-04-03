// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// The AWS Serverless Application Repository makes it easy for developers and enterprises to quickly find and deploy serverless applications in the AWS Cloud. For more information about serverless applications, see Serverless Computing and Applications on the AWS website.The AWS Serverless Application Repository is deeply integrated with the AWS Lambda console, so that developers of all levels can get started with serverless computing without needing to learn anything new. You can use category keywords to browse for applications such as web and mobile backends, data processing applications, or chatbots. You can also search for applications by name, publisher, or event source. To use an application, you simply choose it, configure any required fields, and deploy it with a few clicks. You can also easily publish applications, sharing them publicly with the community at large, or privately within your team or across your organization. To publish a serverless application (or app), you can use the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs to upload the code. Along with the code, you upload a simple manifest file, also known as the AWS Serverless Application Model (AWS SAM) template. For more information about AWS SAM, see AWS Serverless Application Model (AWS SAM) on the AWS Labs GitHub repository.The AWS Serverless Application Repository Developer Guide contains more information about the two developer experiences available:
///
/// * Consuming Applications – Browse for applications and view information about them, including source code and readme files. Also install, configure, and deploy applications of your choosing. Publishing Applications – Configure and upload applications to make them available to other developers, and publish new versions of applications.
public protocol ServerlessApplicationRepositoryClientProtocol {
    /// Creates an application, optionally including an AWS SAM file to create the first application version in the same call.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates an application version.
    func createApplicationVersion(input: CreateApplicationVersionInput) async throws -> CreateApplicationVersionOutputResponse
    /// Creates an AWS CloudFormation change set for the given application.
    func createCloudFormationChangeSet(input: CreateCloudFormationChangeSetInput) async throws -> CreateCloudFormationChangeSetOutputResponse
    /// Creates an AWS CloudFormation template.
    func createCloudFormationTemplate(input: CreateCloudFormationTemplateInput) async throws -> CreateCloudFormationTemplateOutputResponse
    /// Deletes the specified application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Gets the specified application.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Retrieves the policy for the application.
    func getApplicationPolicy(input: GetApplicationPolicyInput) async throws -> GetApplicationPolicyOutputResponse
    /// Gets the specified AWS CloudFormation template.
    func getCloudFormationTemplate(input: GetCloudFormationTemplateInput) async throws -> GetCloudFormationTemplateOutputResponse
    /// Retrieves the list of applications nested in the containing application.
    func listApplicationDependencies(input: ListApplicationDependenciesInput) async throws -> ListApplicationDependenciesOutputResponse
    /// Lists applications owned by the requester.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists versions for the specified application.
    func listApplicationVersions(input: ListApplicationVersionsInput) async throws -> ListApplicationVersionsOutputResponse
    /// Sets the permission policy for an application. For the list of actions supported for this operation, see [Application Permissions](https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions) .
    func putApplicationPolicy(input: PutApplicationPolicyInput) async throws -> PutApplicationPolicyOutputResponse
    /// Unshares an application from an AWS Organization.This operation can be called only from the organization's master account.
    func unshareApplication(input: UnshareApplicationInput) async throws -> UnshareApplicationOutputResponse
    /// Updates the specified application.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
}

public protocol ServerlessApplicationRepositoryClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ServerlessApplicationRepositoryClientTypes {}

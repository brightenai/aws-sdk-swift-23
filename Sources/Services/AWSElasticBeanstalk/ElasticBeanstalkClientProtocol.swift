// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// AWS Elastic Beanstalk AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud. For more information about this product, go to the [AWS Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) details page. The location of the latest AWS Elastic Beanstalk WSDL is [https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl](https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl). To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to [Tools for Amazon Web Services](http://aws.amazon.com/tools/). Endpoints For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to [Regions and Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region) in the Amazon Web Services Glossary.
public protocol ElasticBeanstalkClientProtocol {
    /// Cancels in-progress environment configuration update or application version deployment.
    func abortEnvironmentUpdate(input: AbortEnvironmentUpdateInput) async throws -> AbortEnvironmentUpdateOutputResponse
    /// Applies a scheduled managed action immediately. A managed action can be applied only if its status is Scheduled. Get the status and action ID of a managed action with [DescribeEnvironmentManagedActions].
    func applyEnvironmentManagedAction(input: ApplyEnvironmentManagedActionInput) async throws -> ApplyEnvironmentManagedActionOutputResponse
    /// Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk uses the associated operations role for permissions to downstream services during subsequent calls acting on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html) in the AWS Elastic Beanstalk Developer Guide.
    func associateEnvironmentOperationsRole(input: AssociateEnvironmentOperationsRoleInput) async throws -> AssociateEnvironmentOperationsRoleOutputResponse
    /// Checks if the specified CNAME is available.
    func checkDNSAvailability(input: CheckDNSAvailabilityInput) async throws -> CheckDNSAvailabilityOutputResponse
    /// Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named env.yaml. See [Compose Environments](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html) for details.
    func composeEnvironments(input: ComposeEnvironmentsInput) async throws -> ComposeEnvironmentsOutputResponse
    /// Creates an application that has one configuration template named default and no application versions.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows: Specify a commit in an AWS CodeCommit repository with SourceBuildInformation. Specify a build in an AWS CodeBuild with SourceBuildInformation and BuildConfiguration. Specify a source bundle in S3 with SourceBundle Omit both SourceBuildInformation and SourceBundle to use the default sample application. After you create an application version with a specified Amazon S3 bucket and key location, you can't change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.
    func createApplicationVersion(input: CreateApplicationVersionInput) async throws -> CreateApplicationVersionOutputResponse
    /// Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application. You define application configuration settings in a configuration template. You can then use the configuration template to deploy different versions of the application with the same configuration settings. Templates aren't associated with any environment. The EnvironmentName response element is always null. Related Topics
    ///
    /// * [DescribeConfigurationOptions]
    ///
    /// * [DescribeConfigurationSettings]
    ///
    /// * [ListAvailableSolutionStacks]
    func createConfigurationTemplate(input: CreateConfigurationTemplateInput) async throws -> CreateConfigurationTemplateOutputResponse
    /// Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    /// Create a new version of your custom platform.
    func createPlatformVersion(input: CreatePlatformVersionInput) async throws -> CreatePlatformVersionOutputResponse
    /// Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the first time you create an environment in a region. If the storage location already exists, CreateStorageLocation still returns the bucket name but does not create a new bucket.
    func createStorageLocation(input: CreateStorageLocationInput) async throws -> CreateStorageLocationOutputResponse
    /// Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket. You cannot delete an application that has a running environment.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Deletes the specified version from the specified application. You cannot delete an application version that is associated with a running environment.
    func deleteApplicationVersion(input: DeleteApplicationVersionInput) async throws -> DeleteApplicationVersionOutputResponse
    /// Deletes the specified configuration template. When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.
    func deleteConfigurationTemplate(input: DeleteConfigurationTemplateInput) async throws -> DeleteConfigurationTemplateOutputResponse
    /// Deletes the draft configuration associated with the running environment. Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using [DescribeConfigurationSettings] while the update is in progress or if the update fails. The DeploymentStatus for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.
    func deleteEnvironmentConfiguration(input: DeleteEnvironmentConfigurationInput) async throws -> DeleteEnvironmentConfigurationOutputResponse
    /// Deletes the specified version of a custom platform.
    func deletePlatformVersion(input: DeletePlatformVersionInput) async throws -> DeletePlatformVersionOutputResponse
    /// Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account. The result currently has one set of attributes—resource quotas.
    func describeAccountAttributes(input: DescribeAccountAttributesInput) async throws -> DescribeAccountAttributesOutputResponse
    /// Returns the descriptions of existing applications.
    func describeApplications(input: DescribeApplicationsInput) async throws -> DescribeApplicationsOutputResponse
    /// Retrieve a list of application versions.
    func describeApplicationVersions(input: DescribeApplicationVersionsInput) async throws -> DescribeApplicationVersionsOutputResponse
    /// Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.
    func describeConfigurationOptions(input: DescribeConfigurationOptionsInput) async throws -> DescribeConfigurationOptionsOutputResponse
    /// Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment. When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy. Related Topics
    ///
    /// * [DeleteEnvironmentConfiguration]
    func describeConfigurationSettings(input: DescribeConfigurationSettingsInput) async throws -> DescribeConfigurationSettingsOutputResponse
    /// Returns information about the overall health of the specified environment. The DescribeEnvironmentHealth operation is only available with AWS Elastic Beanstalk Enhanced Health.
    func describeEnvironmentHealth(input: DescribeEnvironmentHealthInput) async throws -> DescribeEnvironmentHealthOutputResponse
    /// Lists an environment's completed and failed managed actions.
    func describeEnvironmentManagedActionHistory(input: DescribeEnvironmentManagedActionHistoryInput) async throws -> DescribeEnvironmentManagedActionHistoryOutputResponse
    /// Lists an environment's upcoming and in-progress managed actions.
    func describeEnvironmentManagedActions(input: DescribeEnvironmentManagedActionsInput) async throws -> DescribeEnvironmentManagedActionsOutputResponse
    /// Returns AWS resources for this environment.
    func describeEnvironmentResources(input: DescribeEnvironmentResourcesInput) async throws -> DescribeEnvironmentResourcesOutputResponse
    /// Returns descriptions for existing environments.
    func describeEnvironments(input: DescribeEnvironmentsInput) async throws -> DescribeEnvironmentsOutputResponse
    /// Returns list of event descriptions matching criteria up to the last 6 weeks. This action returns the most recent 1,000 events from the specified NextToken.
    func describeEvents(input: DescribeEventsInput) async throws -> DescribeEventsOutputResponse
    /// Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires [enhanced health reporting](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).
    func describeInstancesHealth(input: DescribeInstancesHealthInput) async throws -> DescribeInstancesHealthOutputResponse
    /// Describes a platform version. Provides full details. Compare to [ListPlatformVersions], which provides summary information about a list of platform versions. For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
    func describePlatformVersion(input: DescribePlatformVersionInput) async throws -> DescribePlatformVersionOutputResponse
    /// Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses the caller's permissions for permissions to downstream services during subsequent calls acting on this environment. For more information, see [Operations roles](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html) in the AWS Elastic Beanstalk Developer Guide.
    func disassociateEnvironmentOperationsRole(input: DisassociateEnvironmentOperationsRoleInput) async throws -> DisassociateEnvironmentOperationsRoleOutputResponse
    /// Returns a list of the available solution stack names, with the public version first and then in reverse chronological order.
    func listAvailableSolutionStacks(input: ListAvailableSolutionStacksInput) async throws -> ListAvailableSolutionStacksOutputResponse
    /// Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
    func listPlatformBranches(input: ListPlatformBranchesInput) async throws -> ListPlatformBranchesOutputResponse
    /// Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to [DescribePlatformVersion], which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see [AWS Elastic Beanstalk Platforms Glossary](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html).
    func listPlatformVersions(input: ListPlatformVersionsInput) async throws -> ListPlatformVersionsOutputResponse
    /// Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html).
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.
    func rebuildEnvironment(input: RebuildEnvironmentInput) async throws -> RebuildEnvironmentOutputResponse
    /// Initiates a request to compile the specified type of information of the deployed environment. Setting the InfoType to tail compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. Setting the InfoType to bundle compresses the application server log files for every Amazon EC2 instance into a .zip file. Legacy and .NET containers do not support bundle logs. Use [RetrieveEnvironmentInfo] to obtain the set of logs. Related Topics
    ///
    /// * [RetrieveEnvironmentInfo]
    func requestEnvironmentInfo(input: RequestEnvironmentInfoInput) async throws -> RequestEnvironmentInfoOutputResponse
    /// Causes the environment to restart the application container server running on each Amazon EC2 instance.
    func restartAppServer(input: RestartAppServerInput) async throws -> RestartAppServerOutputResponse
    /// Retrieves the compiled information from a [RequestEnvironmentInfo] request. Related Topics
    ///
    /// * [RequestEnvironmentInfo]
    func retrieveEnvironmentInfo(input: RetrieveEnvironmentInfoInput) async throws -> RetrieveEnvironmentInfoOutputResponse
    /// Swaps the CNAMEs of two environments.
    func swapEnvironmentCNAMEs(input: SwapEnvironmentCNAMEsInput) async throws -> SwapEnvironmentCNAMEsOutputResponse
    /// Terminates the specified environment.
    func terminateEnvironment(input: TerminateEnvironmentInput) async throws -> TerminateEnvironmentOutputResponse
    /// Updates the specified application to have the specified properties. If a property (for example, description) is not provided, the value remains unchanged. To clear these properties, specify an empty string.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Modifies lifecycle settings for an application.
    func updateApplicationResourceLifecycle(input: UpdateApplicationResourceLifecycleInput) async throws -> UpdateApplicationResourceLifecycleOutputResponse
    /// Updates the specified application version to have the specified properties. If a property (for example, description) is not provided, the value remains unchanged. To clear properties, specify an empty string.
    func updateApplicationVersion(input: UpdateApplicationVersionInput) async throws -> UpdateApplicationVersionOutputResponse
    /// Updates the specified configuration template to have the specified properties or configuration option values. If a property (for example, ApplicationName) is not provided, its value remains unchanged. To clear such properties, specify an empty string. Related Topics
    ///
    /// * [DescribeConfigurationOptions]
    func updateConfigurationTemplate(input: UpdateConfigurationTemplateInput) async throws -> UpdateConfigurationTemplateOutputResponse
    /// Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment. Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an InvalidParameterCombination error. When updating the configuration settings to a new template or individual settings, a draft configuration is created and [DescribeConfigurationSettings] for this environment returns two setting descriptions with different DeploymentStatus values.
    func updateEnvironment(input: UpdateEnvironmentInput) async throws -> UpdateEnvironmentOutputResponse
    /// Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: TagsToAdd for tags to add or update, and TagsToRemove. Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see [Tagging Application Resources](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html). If you create a custom IAM user policy to control permission to this operation, specify one of the following two virtual actions (or both) instead of the API operation name: elasticbeanstalk:AddTags Controls permission to call UpdateTagsForResource and pass a list of tags to add in the TagsToAdd parameter. elasticbeanstalk:RemoveTags Controls permission to call UpdateTagsForResource and pass a list of tag keys to remove in the TagsToRemove parameter. For details about creating a custom user policy, see [Creating a Custom User Policy](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies).
    func updateTagsForResource(input: UpdateTagsForResourceInput) async throws -> UpdateTagsForResourceOutputResponse
    /// Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid. This action returns a list of messages indicating any errors or warnings associated with the selection of option values.
    func validateConfigurationSettings(input: ValidateConfigurationSettingsInput) async throws -> ValidateConfigurationSettingsOutputResponse
}

public protocol ElasticBeanstalkClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ElasticBeanstalkClientTypes {}

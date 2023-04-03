// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// The Amazon Chime SDK Identity APIs in this section allow software developers to create and manage unique instances of their messaging applications. These APIs provide the overarching framework for creating and sending messages. For more information about the identity APIs, refer to [Amazon Chime SDK identity](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Identity.html).
public protocol ChimeSDKIdentityClientProtocol {
    /// Creates an Amazon Chime SDK messaging AppInstance under an AWS account. Only SDK messaging customers use this API. CreateAppInstance supports idempotency behavior as described in the AWS API Standard. identity
    func createAppInstance(input: CreateAppInstanceInput) async throws -> CreateAppInstanceOutputResponse
    /// Promotes an AppInstanceUser or AppInstanceBot to an AppInstanceAdmin. The promoted entity can perform the following actions.
    ///
    /// * ChannelModerator actions across all channels in the AppInstance.
    ///
    /// * DeleteChannelMessage actions.
    ///
    ///
    /// Only an AppInstanceUser and AppInstanceBot can be promoted to an AppInstanceAdmin role.
    func createAppInstanceAdmin(input: CreateAppInstanceAdminInput) async throws -> CreateAppInstanceAdminOutputResponse
    /// Creates a bot under an Amazon Chime AppInstance. The request consists of a unique Configuration and Name for that bot.
    func createAppInstanceBot(input: CreateAppInstanceBotInput) async throws -> CreateAppInstanceBotOutputResponse
    /// Creates a user under an Amazon Chime AppInstance. The request consists of a unique appInstanceUserId and Name for that user.
    func createAppInstanceUser(input: CreateAppInstanceUserInput) async throws -> CreateAppInstanceUserOutputResponse
    /// Deletes an AppInstance and all associated data asynchronously.
    func deleteAppInstance(input: DeleteAppInstanceInput) async throws -> DeleteAppInstanceOutputResponse
    /// Demotes an AppInstanceAdmin to an AppInstanceUser or AppInstanceBot. This action does not delete the user.
    func deleteAppInstanceAdmin(input: DeleteAppInstanceAdminInput) async throws -> DeleteAppInstanceAdminOutputResponse
    /// Deletes an AppInstanceBot.
    func deleteAppInstanceBot(input: DeleteAppInstanceBotInput) async throws -> DeleteAppInstanceBotOutputResponse
    /// Deletes an AppInstanceUser.
    func deleteAppInstanceUser(input: DeleteAppInstanceUserInput) async throws -> DeleteAppInstanceUserOutputResponse
    /// Deregisters an AppInstanceUserEndpoint.
    func deregisterAppInstanceUserEndpoint(input: DeregisterAppInstanceUserEndpointInput) async throws -> DeregisterAppInstanceUserEndpointOutputResponse
    /// Returns the full details of an AppInstance.
    func describeAppInstance(input: DescribeAppInstanceInput) async throws -> DescribeAppInstanceOutputResponse
    /// Returns the full details of an AppInstanceAdmin.
    func describeAppInstanceAdmin(input: DescribeAppInstanceAdminInput) async throws -> DescribeAppInstanceAdminOutputResponse
    /// The AppInstanceBot's information.
    func describeAppInstanceBot(input: DescribeAppInstanceBotInput) async throws -> DescribeAppInstanceBotOutputResponse
    /// Returns the full details of an AppInstanceUser.
    func describeAppInstanceUser(input: DescribeAppInstanceUserInput) async throws -> DescribeAppInstanceUserOutputResponse
    /// Returns the full details of an AppInstanceUserEndpoint.
    func describeAppInstanceUserEndpoint(input: DescribeAppInstanceUserEndpointInput) async throws -> DescribeAppInstanceUserEndpointOutputResponse
    /// Gets the retention settings for an AppInstance.
    func getAppInstanceRetentionSettings(input: GetAppInstanceRetentionSettingsInput) async throws -> GetAppInstanceRetentionSettingsOutputResponse
    /// Returns a list of the administrators in the AppInstance.
    func listAppInstanceAdmins(input: ListAppInstanceAdminsInput) async throws -> ListAppInstanceAdminsOutputResponse
    /// Lists all AppInstanceBots created under a single AppInstance.
    func listAppInstanceBots(input: ListAppInstanceBotsInput) async throws -> ListAppInstanceBotsOutputResponse
    /// Lists all Amazon Chime AppInstances created under a single AWS account.
    func listAppInstances(input: ListAppInstancesInput) async throws -> ListAppInstancesOutputResponse
    /// Lists all the AppInstanceUserEndpoints created under a single AppInstanceUser.
    func listAppInstanceUserEndpoints(input: ListAppInstanceUserEndpointsInput) async throws -> ListAppInstanceUserEndpointsOutputResponse
    /// List all AppInstanceUsers created under a single AppInstance.
    func listAppInstanceUsers(input: ListAppInstanceUsersInput) async throws -> ListAppInstanceUsersOutputResponse
    /// Lists the tags applied to an Amazon Chime SDK identity resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Sets the amount of time in days that a given AppInstance retains data.
    func putAppInstanceRetentionSettings(input: PutAppInstanceRetentionSettingsInput) async throws -> PutAppInstanceRetentionSettingsOutputResponse
    /// Sets the number of days before the AppInstanceUser is automatically deleted. A background process deletes expired AppInstanceUsers within 6 hours of expiration. Actual deletion times may vary. Expired AppInstanceUsers that have not yet been deleted appear as active, and you can update their expiration settings. The system honors the new settings.
    func putAppInstanceUserExpirationSettings(input: PutAppInstanceUserExpirationSettingsInput) async throws -> PutAppInstanceUserExpirationSettingsOutputResponse
    /// Registers an endpoint under an Amazon Chime AppInstanceUser. The endpoint receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.
    func registerAppInstanceUserEndpoint(input: RegisterAppInstanceUserEndpointInput) async throws -> RegisterAppInstanceUserEndpointOutputResponse
    /// Applies the specified tags to the specified Amazon Chime SDK identity resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified Amazon Chime SDK identity resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates AppInstance metadata.
    func updateAppInstance(input: UpdateAppInstanceInput) async throws -> UpdateAppInstanceOutputResponse
    /// Updates the name and metadata of an AppInstanceBot.
    func updateAppInstanceBot(input: UpdateAppInstanceBotInput) async throws -> UpdateAppInstanceBotOutputResponse
    /// Updates the details of an AppInstanceUser. You can update names and metadata.
    func updateAppInstanceUser(input: UpdateAppInstanceUserInput) async throws -> UpdateAppInstanceUserOutputResponse
    /// Updates the details of an AppInstanceUserEndpoint. You can update the name and AllowMessage values.
    func updateAppInstanceUserEndpoint(input: UpdateAppInstanceUserEndpointInput) async throws -> UpdateAppInstanceUserEndpointOutputResponse
}

public protocol ChimeSDKIdentityClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ChimeSDKIdentityClientTypes {}

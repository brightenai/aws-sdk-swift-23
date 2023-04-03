// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// The Amazon AppIntegrations service enables you to configure and reuse connections to external applications. For information about how you can use external applications with Amazon Connect, see [Set up pre-built integrations](https://docs.aws.amazon.com/connect/latest/adminguide/crm.html) and [Deliver information to agents using Amazon Connect Wisdom](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-wisdom.html) in the Amazon Connect Administrator Guide.
public protocol AppIntegrationsClientProtocol {
    /// Creates and persists a DataIntegration resource. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the CreateDataIntegration API.
    func createDataIntegration(input: CreateDataIntegrationInput) async throws -> CreateDataIntegrationOutputResponse
    /// Creates an EventIntegration, given a specified name, description, and a reference to an Amazon EventBridge bus in your account and a partner event source that pushes events to that bus. No objects are created in the your account, only metadata that is persisted on the EventIntegration control plane.
    func createEventIntegration(input: CreateEventIntegrationInput) async throws -> CreateEventIntegrationOutputResponse
    /// Deletes the DataIntegration. Only DataIntegrations that don't have any DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the underlying Amazon AppFlow flow and service linked role. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    func deleteDataIntegration(input: DeleteDataIntegrationInput) async throws -> DeleteDataIntegrationOutputResponse
    /// Deletes the specified existing event integration. If the event integration is associated with clients, the request is rejected.
    func deleteEventIntegration(input: DeleteEventIntegrationInput) async throws -> DeleteEventIntegrationOutputResponse
    /// Returns information about the DataIntegration. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    func getDataIntegration(input: GetDataIntegrationInput) async throws -> GetDataIntegrationOutputResponse
    /// Returns information about the event integration.
    func getEventIntegration(input: GetEventIntegrationInput) async throws -> GetEventIntegrationOutputResponse
    /// Returns a paginated list of DataIntegration associations in the account. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    func listDataIntegrationAssociations(input: ListDataIntegrationAssociationsInput) async throws -> ListDataIntegrationAssociationsOutputResponse
    /// Returns a paginated list of DataIntegrations in the account. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    func listDataIntegrations(input: ListDataIntegrationsInput) async throws -> ListDataIntegrationsOutputResponse
    /// Returns a paginated list of event integration associations in the account.
    func listEventIntegrationAssociations(input: ListEventIntegrationAssociationsInput) async throws -> ListEventIntegrationAssociationsOutputResponse
    /// Returns a paginated list of event integrations in the account.
    func listEventIntegrations(input: ListEventIntegrationsInput) async throws -> ListEventIntegrationsOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds the specified tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the description of a DataIntegration. You cannot create a DataIntegration association for a DataIntegration that has been previously associated. Use a different DataIntegration, or recreate the DataIntegration using the [CreateDataIntegration](https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html) API.
    func updateDataIntegration(input: UpdateDataIntegrationInput) async throws -> UpdateDataIntegrationOutputResponse
    /// Updates the description of an event integration.
    func updateEventIntegration(input: UpdateEventIntegrationInput) async throws -> UpdateEventIntegrationOutputResponse
}

public protocol AppIntegrationsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum AppIntegrationsClientTypes {}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// An example service, deployed with the Octane Service creator, which will echo the string
public protocol IoTRoboRunnerClientProtocol {
    /// Grants permission to create a destination
    func createDestination(input: CreateDestinationInput) async throws -> CreateDestinationOutputResponse
    /// Grants permission to create a site
    func createSite(input: CreateSiteInput) async throws -> CreateSiteOutputResponse
    /// Grants permission to create a worker
    func createWorker(input: CreateWorkerInput) async throws -> CreateWorkerOutputResponse
    /// Grants permission to create a worker fleet
    func createWorkerFleet(input: CreateWorkerFleetInput) async throws -> CreateWorkerFleetOutputResponse
    /// Grants permission to delete a destination
    func deleteDestination(input: DeleteDestinationInput) async throws -> DeleteDestinationOutputResponse
    /// Grants permission to delete a site
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutputResponse
    /// Grants permission to delete a worker
    func deleteWorker(input: DeleteWorkerInput) async throws -> DeleteWorkerOutputResponse
    /// Grants permission to delete a worker fleet
    func deleteWorkerFleet(input: DeleteWorkerFleetInput) async throws -> DeleteWorkerFleetOutputResponse
    /// Grants permission to get a destination
    func getDestination(input: GetDestinationInput) async throws -> GetDestinationOutputResponse
    /// Grants permission to get a site
    func getSite(input: GetSiteInput) async throws -> GetSiteOutputResponse
    /// Grants permission to get a worker
    func getWorker(input: GetWorkerInput) async throws -> GetWorkerOutputResponse
    /// Grants permission to get a worker fleet
    func getWorkerFleet(input: GetWorkerFleetInput) async throws -> GetWorkerFleetOutputResponse
    /// Grants permission to list destinations
    func listDestinations(input: ListDestinationsInput) async throws -> ListDestinationsOutputResponse
    /// Grants permission to list sites
    func listSites(input: ListSitesInput) async throws -> ListSitesOutputResponse
    /// Grants permission to list worker fleets
    func listWorkerFleets(input: ListWorkerFleetsInput) async throws -> ListWorkerFleetsOutputResponse
    /// Grants permission to list workers
    func listWorkers(input: ListWorkersInput) async throws -> ListWorkersOutputResponse
    /// Grants permission to update a destination
    func updateDestination(input: UpdateDestinationInput) async throws -> UpdateDestinationOutputResponse
    /// Grants permission to update a site
    func updateSite(input: UpdateSiteInput) async throws -> UpdateSiteOutputResponse
    /// Grants permission to update a worker
    func updateWorker(input: UpdateWorkerInput) async throws -> UpdateWorkerOutputResponse
    /// Grants permission to update a worker fleet
    func updateWorkerFleet(input: UpdateWorkerFleetInput) async throws -> UpdateWorkerFleetOutputResponse
}

public protocol IoTRoboRunnerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTRoboRunnerClientTypes {}

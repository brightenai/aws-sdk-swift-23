// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Amazon Web Services IoT FleetWise is a fully managed service that you can use to collect, model, and transfer vehicle data to the Amazon Web Services cloud at scale. With Amazon Web Services IoT FleetWise, you can standardize all of your vehicle data models, independent of the in-vehicle communication architecture, and define data collection rules to transfer only high-value data to the cloud. For more information, see [What is Amazon Web Services IoT FleetWise?](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/) in the Amazon Web Services IoT FleetWise Developer Guide.
public protocol IoTFleetWiseClientProtocol {
    /// Adds, or associates, a vehicle with a fleet.
    func associateVehicleFleet(input: AssociateVehicleFleetInput) async throws -> AssociateVehicleFleetOutputResponse
    /// Creates a group, or batch, of vehicles. You must specify a decoder manifest and a vehicle model (model manifest) for each vehicle. For more information, see [Create multiple vehicles (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicles-cli.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func batchCreateVehicle(input: BatchCreateVehicleInput) async throws -> BatchCreateVehicleOutputResponse
    /// Updates a group, or batch, of vehicles. You must specify a decoder manifest and a vehicle model (model manifest) for each vehicle. For more information, see [Update multiple vehicles (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/update-vehicles-cli.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func batchUpdateVehicle(input: BatchUpdateVehicleInput) async throws -> BatchUpdateVehicleOutputResponse
    /// Creates an orchestration of data collection rules. The Amazon Web Services IoT FleetWise Edge Agent software running in vehicles uses campaigns to decide how to collect and transfer data to the cloud. You create campaigns in the cloud. After you or your team approve campaigns, Amazon Web Services IoT FleetWise automatically deploys them to vehicles. For more information, see [Collect and transfer data with campaigns](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/campaigns.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func createCampaign(input: CreateCampaignInput) async throws -> CreateCampaignOutputResponse
    /// Creates the decoder manifest associated with a model manifest. To create a decoder manifest, the following must be true:
    ///
    /// * Every signal decoder has a unique name.
    ///
    /// * Each signal decoder is associated with a network interface.
    ///
    /// * Each network interface has a unique ID.
    ///
    /// * The signal decoders are specified in the model manifest.
    func createDecoderManifest(input: CreateDecoderManifestInput) async throws -> CreateDecoderManifestOutputResponse
    /// Creates a fleet that represents a group of vehicles. You must create both a signal catalog and vehicles before you can create a fleet. For more information, see [Fleets](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/fleets.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func createFleet(input: CreateFleetInput) async throws -> CreateFleetOutputResponse
    /// Creates a vehicle model (model manifest) that specifies signals (attributes, branches, sensors, and actuators). For more information, see [Vehicle models](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/vehicle-models.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func createModelManifest(input: CreateModelManifestInput) async throws -> CreateModelManifestOutputResponse
    /// Creates a collection of standardized signals that can be reused to create vehicle models.
    func createSignalCatalog(input: CreateSignalCatalogInput) async throws -> CreateSignalCatalogOutputResponse
    /// Creates a vehicle, which is an instance of a vehicle model (model manifest). Vehicles created from the same vehicle model consist of the same signals inherited from the vehicle model. If you have an existing Amazon Web Services IoT Thing, you can use Amazon Web Services IoT FleetWise to create a vehicle and collect data from your thing. For more information, see [Create a vehicle (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/create-vehicle-cli.html) in the Amazon Web Services IoT FleetWise Developer Guide.
    func createVehicle(input: CreateVehicleInput) async throws -> CreateVehicleOutputResponse
    /// Deletes a data collection campaign. Deleting a campaign suspends all data collection and removes it from any vehicles.
    func deleteCampaign(input: DeleteCampaignInput) async throws -> DeleteCampaignOutputResponse
    /// Deletes a decoder manifest. You can't delete a decoder manifest if it has vehicles associated with it. If the decoder manifest is successfully deleted, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func deleteDecoderManifest(input: DeleteDecoderManifestInput) async throws -> DeleteDecoderManifestOutputResponse
    /// Deletes a fleet. Before you delete a fleet, all vehicles must be dissociated from the fleet. For more information, see [Delete a fleet (AWS CLI)](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/delete-fleet-cli.html) in the Amazon Web Services IoT FleetWise Developer Guide. If the fleet is successfully deleted, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func deleteFleet(input: DeleteFleetInput) async throws -> DeleteFleetOutputResponse
    /// Deletes a vehicle model (model manifest). If the vehicle model is successfully deleted, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func deleteModelManifest(input: DeleteModelManifestInput) async throws -> DeleteModelManifestOutputResponse
    /// Deletes a signal catalog. If the signal catalog is successfully deleted, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func deleteSignalCatalog(input: DeleteSignalCatalogInput) async throws -> DeleteSignalCatalogOutputResponse
    /// Deletes a vehicle and removes it from any campaigns. If the vehicle is successfully deleted, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func deleteVehicle(input: DeleteVehicleInput) async throws -> DeleteVehicleOutputResponse
    /// Removes, or disassociates, a vehicle from a fleet. Disassociating a vehicle from a fleet doesn't delete the vehicle. If the vehicle is successfully dissociated from a fleet, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty body.
    func disassociateVehicleFleet(input: DisassociateVehicleFleetInput) async throws -> DisassociateVehicleFleetOutputResponse
    /// Retrieves information about a campaign.
    func getCampaign(input: GetCampaignInput) async throws -> GetCampaignOutputResponse
    /// Retrieves information about a created decoder manifest.
    func getDecoderManifest(input: GetDecoderManifestInput) async throws -> GetDecoderManifestOutputResponse
    /// Retrieves information about a fleet.
    func getFleet(input: GetFleetInput) async throws -> GetFleetOutputResponse
    /// Retrieves the logging options.
    func getLoggingOptions(input: GetLoggingOptionsInput) async throws -> GetLoggingOptionsOutputResponse
    /// Retrieves information about a vehicle model (model manifest).
    func getModelManifest(input: GetModelManifestInput) async throws -> GetModelManifestOutputResponse
    /// Retrieves information about the status of registering your Amazon Web Services account, IAM, and Amazon Timestream resources so that Amazon Web Services IoT FleetWise can transfer your vehicle data to the Amazon Web Services Cloud. For more information, including step-by-step procedures, see [Setting up Amazon Web Services IoT FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html). This API operation doesn't require input parameters.
    func getRegisterAccountStatus(input: GetRegisterAccountStatusInput) async throws -> GetRegisterAccountStatusOutputResponse
    /// Retrieves information about a signal catalog.
    func getSignalCatalog(input: GetSignalCatalogInput) async throws -> GetSignalCatalogOutputResponse
    /// Retrieves information about a vehicle.
    func getVehicle(input: GetVehicleInput) async throws -> GetVehicleOutputResponse
    /// Retrieves information about the status of a vehicle with any associated campaigns.
    func getVehicleStatus(input: GetVehicleStatusInput) async throws -> GetVehicleStatusOutputResponse
    /// Creates a decoder manifest using your existing CAN DBC file from your local device.
    func importDecoderManifest(input: ImportDecoderManifestInput) async throws -> ImportDecoderManifestOutputResponse
    /// Creates a signal catalog using your existing VSS formatted content from your local device.
    func importSignalCatalog(input: ImportSignalCatalogInput) async throws -> ImportSignalCatalogOutputResponse
    /// Lists information about created campaigns. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listCampaigns(input: ListCampaignsInput) async throws -> ListCampaignsOutputResponse
    /// Lists the network interfaces specified in a decoder manifest. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listDecoderManifestNetworkInterfaces(input: ListDecoderManifestNetworkInterfacesInput) async throws -> ListDecoderManifestNetworkInterfacesOutputResponse
    /// Lists decoder manifests. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listDecoderManifests(input: ListDecoderManifestsInput) async throws -> ListDecoderManifestsOutputResponse
    /// A list of information about signal decoders specified in a decoder manifest. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listDecoderManifestSignals(input: ListDecoderManifestSignalsInput) async throws -> ListDecoderManifestSignalsOutputResponse
    /// Retrieves information for each created fleet in an Amazon Web Services account. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listFleets(input: ListFleetsInput) async throws -> ListFleetsOutputResponse
    /// Retrieves a list of IDs for all fleets that the vehicle is associated with. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listFleetsForVehicle(input: ListFleetsForVehicleInput) async throws -> ListFleetsForVehicleOutputResponse
    /// Lists information about nodes specified in a vehicle model (model manifest). This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listModelManifestNodes(input: ListModelManifestNodesInput) async throws -> ListModelManifestNodesOutputResponse
    /// Retrieves a list of vehicle models (model manifests). This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listModelManifests(input: ListModelManifestsInput) async throws -> ListModelManifestsOutputResponse
    /// Lists of information about the signals (nodes) specified in a signal catalog. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listSignalCatalogNodes(input: ListSignalCatalogNodesInput) async throws -> ListSignalCatalogNodesOutputResponse
    /// Lists all the created signal catalogs in an Amazon Web Services account. You can use to list information about each signal (node) specified in a signal catalog. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listSignalCatalogs(input: ListSignalCatalogsInput) async throws -> ListSignalCatalogsOutputResponse
    /// Lists the tags (metadata) you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Retrieves a list of summaries of created vehicles. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listVehicles(input: ListVehiclesInput) async throws -> ListVehiclesOutputResponse
    /// Retrieves a list of summaries of all vehicles associated with a fleet. This API operation uses pagination. Specify the nextToken parameter in the request to return more results.
    func listVehiclesInFleet(input: ListVehiclesInFleetInput) async throws -> ListVehiclesInFleetOutputResponse
    /// Creates or updates the logging option.
    func putLoggingOptions(input: PutLoggingOptionsInput) async throws -> PutLoggingOptionsOutputResponse
    /// Registers your Amazon Web Services account, IAM, and Amazon Timestream resources so Amazon Web Services IoT FleetWise can transfer your vehicle data to the Amazon Web Services Cloud. For more information, including step-by-step procedures, see [Setting up Amazon Web Services IoT FleetWise](https://docs.aws.amazon.com/iot-fleetwise/latest/developerguide/setting-up.html). An Amazon Web Services account is not the same thing as a "user account". An [Amazon Web Services user](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction_identity-management.html#intro-identity-users) is an identity that you create using Identity and Access Management (IAM) and takes the form of either an [IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html) or an [IAM role, both with credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html). A single Amazon Web Services account can, and typically does, contain many users and roles.
    func registerAccount(input: RegisterAccountInput) async throws -> RegisterAccountOutputResponse
    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the given tags (metadata) from the resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a campaign.
    func updateCampaign(input: UpdateCampaignInput) async throws -> UpdateCampaignOutputResponse
    /// Updates a decoder manifest. A decoder manifest can only be updated when the status is DRAFT. Only ACTIVE decoder manifests can be associated with vehicles.
    func updateDecoderManifest(input: UpdateDecoderManifestInput) async throws -> UpdateDecoderManifestOutputResponse
    /// Updates the description of an existing fleet. If the fleet is successfully updated, Amazon Web Services IoT FleetWise sends back an HTTP 200 response with an empty HTTP body.
    func updateFleet(input: UpdateFleetInput) async throws -> UpdateFleetOutputResponse
    /// Updates a vehicle model (model manifest). If created vehicles are associated with a vehicle model, it can't be updated.
    func updateModelManifest(input: UpdateModelManifestInput) async throws -> UpdateModelManifestOutputResponse
    /// Updates a signal catalog.
    func updateSignalCatalog(input: UpdateSignalCatalogInput) async throws -> UpdateSignalCatalogOutputResponse
    /// Updates a vehicle.
    func updateVehicle(input: UpdateVehicleInput) async throws -> UpdateVehicleOutputResponse
}

public protocol IoTFleetWiseClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTFleetWiseClientTypes {}

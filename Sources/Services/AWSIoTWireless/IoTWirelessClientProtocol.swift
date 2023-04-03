// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// AWS IoT Wireless provides bi-directional communication between internet-connected wireless devices and the AWS Cloud. To onboard both LoRaWAN and Sidewalk devices to AWS IoT, use the IoT Wireless API. These wireless devices use the Low Power Wide Area Networking (LPWAN) communication protocol to communicate with AWS IoT. Using the API, you can perform create, read, update, and delete operations for your wireless devices, gateways, destinations, and profiles. After onboarding your devices, you can use the API operations to set log levels and monitor your devices with CloudWatch. You can also use the API operations to create multicast groups and schedule a multicast session for sending a downlink message to devices in the group. By using Firmware Updates Over-The-Air (FUOTA) API operations, you can create a FUOTA task and schedule a session to update the firmware of individual devices or an entire group of devices in a multicast group.
public protocol IoTWirelessClientProtocol {
    /// Associates a partner account with your AWS account.
    func associateAwsAccountWithPartnerAccount(input: AssociateAwsAccountWithPartnerAccountInput) async throws -> AssociateAwsAccountWithPartnerAccountOutputResponse
    /// Associate a multicast group with a FUOTA task.
    func associateMulticastGroupWithFuotaTask(input: AssociateMulticastGroupWithFuotaTaskInput) async throws -> AssociateMulticastGroupWithFuotaTaskOutputResponse
    /// Associate a wireless device with a FUOTA task.
    func associateWirelessDeviceWithFuotaTask(input: AssociateWirelessDeviceWithFuotaTaskInput) async throws -> AssociateWirelessDeviceWithFuotaTaskOutputResponse
    /// Associates a wireless device with a multicast group.
    func associateWirelessDeviceWithMulticastGroup(input: AssociateWirelessDeviceWithMulticastGroupInput) async throws -> AssociateWirelessDeviceWithMulticastGroupOutputResponse
    /// Associates a wireless device with a thing.
    func associateWirelessDeviceWithThing(input: AssociateWirelessDeviceWithThingInput) async throws -> AssociateWirelessDeviceWithThingOutputResponse
    /// Associates a wireless gateway with a certificate.
    func associateWirelessGatewayWithCertificate(input: AssociateWirelessGatewayWithCertificateInput) async throws -> AssociateWirelessGatewayWithCertificateOutputResponse
    /// Associates a wireless gateway with a thing.
    func associateWirelessGatewayWithThing(input: AssociateWirelessGatewayWithThingInput) async throws -> AssociateWirelessGatewayWithThingOutputResponse
    /// Cancels an existing multicast group session.
    func cancelMulticastGroupSession(input: CancelMulticastGroupSessionInput) async throws -> CancelMulticastGroupSessionOutputResponse
    /// Creates a new destination that maps a device message to an AWS IoT rule.
    func createDestination(input: CreateDestinationInput) async throws -> CreateDestinationOutputResponse
    /// Creates a new device profile.
    func createDeviceProfile(input: CreateDeviceProfileInput) async throws -> CreateDeviceProfileOutputResponse
    /// Creates a FUOTA task.
    func createFuotaTask(input: CreateFuotaTaskInput) async throws -> CreateFuotaTaskOutputResponse
    /// Creates a multicast group.
    func createMulticastGroup(input: CreateMulticastGroupInput) async throws -> CreateMulticastGroupOutputResponse
    /// Creates a new network analyzer configuration.
    func createNetworkAnalyzerConfiguration(input: CreateNetworkAnalyzerConfigurationInput) async throws -> CreateNetworkAnalyzerConfigurationOutputResponse
    /// Creates a new service profile.
    func createServiceProfile(input: CreateServiceProfileInput) async throws -> CreateServiceProfileOutputResponse
    /// Provisions a wireless device.
    func createWirelessDevice(input: CreateWirelessDeviceInput) async throws -> CreateWirelessDeviceOutputResponse
    /// Provisions a wireless gateway.
    func createWirelessGateway(input: CreateWirelessGatewayInput) async throws -> CreateWirelessGatewayOutputResponse
    /// Creates a task for a wireless gateway.
    func createWirelessGatewayTask(input: CreateWirelessGatewayTaskInput) async throws -> CreateWirelessGatewayTaskOutputResponse
    /// Creates a gateway task definition.
    func createWirelessGatewayTaskDefinition(input: CreateWirelessGatewayTaskDefinitionInput) async throws -> CreateWirelessGatewayTaskDefinitionOutputResponse
    /// Deletes a destination.
    func deleteDestination(input: DeleteDestinationInput) async throws -> DeleteDestinationOutputResponse
    /// Deletes a device profile.
    func deleteDeviceProfile(input: DeleteDeviceProfileInput) async throws -> DeleteDeviceProfileOutputResponse
    /// Deletes a FUOTA task.
    func deleteFuotaTask(input: DeleteFuotaTaskInput) async throws -> DeleteFuotaTaskOutputResponse
    /// Deletes a multicast group if it is not in use by a fuota task.
    func deleteMulticastGroup(input: DeleteMulticastGroupInput) async throws -> DeleteMulticastGroupOutputResponse
    /// Deletes a network analyzer configuration.
    func deleteNetworkAnalyzerConfiguration(input: DeleteNetworkAnalyzerConfigurationInput) async throws -> DeleteNetworkAnalyzerConfigurationOutputResponse
    /// Remove queued messages from the downlink queue.
    func deleteQueuedMessages(input: DeleteQueuedMessagesInput) async throws -> DeleteQueuedMessagesOutputResponse
    /// Deletes a service profile.
    func deleteServiceProfile(input: DeleteServiceProfileInput) async throws -> DeleteServiceProfileOutputResponse
    /// Deletes a wireless device.
    func deleteWirelessDevice(input: DeleteWirelessDeviceInput) async throws -> DeleteWirelessDeviceOutputResponse
    /// Delete an import task.
    func deleteWirelessDeviceImportTask(input: DeleteWirelessDeviceImportTaskInput) async throws -> DeleteWirelessDeviceImportTaskOutputResponse
    /// Deletes a wireless gateway.
    func deleteWirelessGateway(input: DeleteWirelessGatewayInput) async throws -> DeleteWirelessGatewayOutputResponse
    /// Deletes a wireless gateway task.
    func deleteWirelessGatewayTask(input: DeleteWirelessGatewayTaskInput) async throws -> DeleteWirelessGatewayTaskOutputResponse
    /// Deletes a wireless gateway task definition. Deleting this task definition does not affect tasks that are currently in progress.
    func deleteWirelessGatewayTaskDefinition(input: DeleteWirelessGatewayTaskDefinitionInput) async throws -> DeleteWirelessGatewayTaskDefinitionOutputResponse
    /// Deregister a wireless device from AWS IoT Wireless.
    func deregisterWirelessDevice(input: DeregisterWirelessDeviceInput) async throws -> DeregisterWirelessDeviceOutputResponse
    /// Disassociates your AWS account from a partner account. If PartnerAccountId and PartnerType are null, disassociates your AWS account from all partner accounts.
    func disassociateAwsAccountFromPartnerAccount(input: DisassociateAwsAccountFromPartnerAccountInput) async throws -> DisassociateAwsAccountFromPartnerAccountOutputResponse
    /// Disassociates a multicast group from a fuota task.
    func disassociateMulticastGroupFromFuotaTask(input: DisassociateMulticastGroupFromFuotaTaskInput) async throws -> DisassociateMulticastGroupFromFuotaTaskOutputResponse
    /// Disassociates a wireless device from a FUOTA task.
    func disassociateWirelessDeviceFromFuotaTask(input: DisassociateWirelessDeviceFromFuotaTaskInput) async throws -> DisassociateWirelessDeviceFromFuotaTaskOutputResponse
    /// Disassociates a wireless device from a multicast group.
    func disassociateWirelessDeviceFromMulticastGroup(input: DisassociateWirelessDeviceFromMulticastGroupInput) async throws -> DisassociateWirelessDeviceFromMulticastGroupOutputResponse
    /// Disassociates a wireless device from its currently associated thing.
    func disassociateWirelessDeviceFromThing(input: DisassociateWirelessDeviceFromThingInput) async throws -> DisassociateWirelessDeviceFromThingOutputResponse
    /// Disassociates a wireless gateway from its currently associated certificate.
    func disassociateWirelessGatewayFromCertificate(input: DisassociateWirelessGatewayFromCertificateInput) async throws -> DisassociateWirelessGatewayFromCertificateOutputResponse
    /// Disassociates a wireless gateway from its currently associated thing.
    func disassociateWirelessGatewayFromThing(input: DisassociateWirelessGatewayFromThingInput) async throws -> DisassociateWirelessGatewayFromThingOutputResponse
    /// Gets information about a destination.
    func getDestination(input: GetDestinationInput) async throws -> GetDestinationOutputResponse
    /// Gets information about a device profile.
    func getDeviceProfile(input: GetDeviceProfileInput) async throws -> GetDeviceProfileOutputResponse
    /// Get the event configuration based on resource types.
    func getEventConfigurationByResourceTypes(input: GetEventConfigurationByResourceTypesInput) async throws -> GetEventConfigurationByResourceTypesOutputResponse
    /// Gets information about a FUOTA task.
    func getFuotaTask(input: GetFuotaTaskInput) async throws -> GetFuotaTaskOutputResponse
    /// Returns current default log levels or log levels by resource types. Based on resource types, log levels can be for wireless device log options or wireless gateway log options.
    func getLogLevelsByResourceTypes(input: GetLogLevelsByResourceTypesInput) async throws -> GetLogLevelsByResourceTypesOutputResponse
    /// Gets information about a multicast group.
    func getMulticastGroup(input: GetMulticastGroupInput) async throws -> GetMulticastGroupOutputResponse
    /// Gets information about a multicast group session.
    func getMulticastGroupSession(input: GetMulticastGroupSessionInput) async throws -> GetMulticastGroupSessionOutputResponse
    /// Get network analyzer configuration.
    func getNetworkAnalyzerConfiguration(input: GetNetworkAnalyzerConfigurationInput) async throws -> GetNetworkAnalyzerConfigurationOutputResponse
    /// Gets information about a partner account. If PartnerAccountId and PartnerType are null, returns all partner accounts.
    func getPartnerAccount(input: GetPartnerAccountInput) async throws -> GetPartnerAccountOutputResponse
    /// Get the position information for a given resource. This action is no longer supported. Calls to retrieve the position information should use the [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html) API operation instead.
    @available(*, deprecated, message: "This operation is no longer supported.")
    func getPosition(input: GetPositionInput) async throws -> GetPositionOutputResponse
    /// Get position configuration for a given resource. This action is no longer supported. Calls to retrieve the position configuration should use the [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html) API operation instead.
    @available(*, deprecated, message: "This operation is no longer supported.")
    func getPositionConfiguration(input: GetPositionConfigurationInput) async throws -> GetPositionConfigurationOutputResponse
    /// Get estimated position information as a payload in GeoJSON format. The payload measurement data is resolved using solvers that are provided by third-party vendors.
    func getPositionEstimate(input: GetPositionEstimateInput) async throws -> GetPositionEstimateOutputResponse
    /// Get the event configuration for a particular resource identifier.
    func getResourceEventConfiguration(input: GetResourceEventConfigurationInput) async throws -> GetResourceEventConfigurationOutputResponse
    /// Fetches the log-level override, if any, for a given resource-ID and resource-type. It can be used for a wireless device or a wireless gateway.
    func getResourceLogLevel(input: GetResourceLogLevelInput) async throws -> GetResourceLogLevelOutputResponse
    /// Get the position information for a given wireless device or a wireless gateway resource. The position information uses the [ World Geodetic System (WGS84)](https://gisgeography.com/wgs84-world-geodetic-system/).
    func getResourcePosition(input: GetResourcePositionInput) async throws -> GetResourcePositionOutputResponse
    /// Gets the account-specific endpoint for Configuration and Update Server (CUPS) protocol or LoRaWAN Network Server (LNS) connections.
    func getServiceEndpoint(input: GetServiceEndpointInput) async throws -> GetServiceEndpointOutputResponse
    /// Gets information about a service profile.
    func getServiceProfile(input: GetServiceProfileInput) async throws -> GetServiceProfileOutputResponse
    /// Gets information about a wireless device.
    func getWirelessDevice(input: GetWirelessDeviceInput) async throws -> GetWirelessDeviceOutputResponse
    /// Get information about an import task and count of device onboarding summary information for the import task.
    func getWirelessDeviceImportTask(input: GetWirelessDeviceImportTaskInput) async throws -> GetWirelessDeviceImportTaskOutputResponse
    /// Gets operating information about a wireless device.
    func getWirelessDeviceStatistics(input: GetWirelessDeviceStatisticsInput) async throws -> GetWirelessDeviceStatisticsOutputResponse
    /// Gets information about a wireless gateway.
    func getWirelessGateway(input: GetWirelessGatewayInput) async throws -> GetWirelessGatewayOutputResponse
    /// Gets the ID of the certificate that is currently associated with a wireless gateway.
    func getWirelessGatewayCertificate(input: GetWirelessGatewayCertificateInput) async throws -> GetWirelessGatewayCertificateOutputResponse
    /// Gets the firmware version and other information about a wireless gateway.
    func getWirelessGatewayFirmwareInformation(input: GetWirelessGatewayFirmwareInformationInput) async throws -> GetWirelessGatewayFirmwareInformationOutputResponse
    /// Gets operating information about a wireless gateway.
    func getWirelessGatewayStatistics(input: GetWirelessGatewayStatisticsInput) async throws -> GetWirelessGatewayStatisticsOutputResponse
    /// Gets information about a wireless gateway task.
    func getWirelessGatewayTask(input: GetWirelessGatewayTaskInput) async throws -> GetWirelessGatewayTaskOutputResponse
    /// Gets information about a wireless gateway task definition.
    func getWirelessGatewayTaskDefinition(input: GetWirelessGatewayTaskDefinitionInput) async throws -> GetWirelessGatewayTaskDefinitionOutputResponse
    /// Lists the destinations registered to your AWS account.
    func listDestinations(input: ListDestinationsInput) async throws -> ListDestinationsOutputResponse
    /// Lists the device profiles registered to your AWS account.
    func listDeviceProfiles(input: ListDeviceProfilesInput) async throws -> ListDeviceProfilesOutputResponse
    /// List the Sidewalk devices in an import task and their onboarding status.
    func listDevicesForWirelessDeviceImportTask(input: ListDevicesForWirelessDeviceImportTaskInput) async throws -> ListDevicesForWirelessDeviceImportTaskOutputResponse
    /// List event configurations where at least one event topic has been enabled.
    func listEventConfigurations(input: ListEventConfigurationsInput) async throws -> ListEventConfigurationsOutputResponse
    /// Lists the FUOTA tasks registered to your AWS account.
    func listFuotaTasks(input: ListFuotaTasksInput) async throws -> ListFuotaTasksOutputResponse
    /// Lists the multicast groups registered to your AWS account.
    func listMulticastGroups(input: ListMulticastGroupsInput) async throws -> ListMulticastGroupsOutputResponse
    /// List all multicast groups associated with a fuota task.
    func listMulticastGroupsByFuotaTask(input: ListMulticastGroupsByFuotaTaskInput) async throws -> ListMulticastGroupsByFuotaTaskOutputResponse
    /// Lists the network analyzer configurations.
    func listNetworkAnalyzerConfigurations(input: ListNetworkAnalyzerConfigurationsInput) async throws -> ListNetworkAnalyzerConfigurationsOutputResponse
    /// Lists the partner accounts associated with your AWS account.
    func listPartnerAccounts(input: ListPartnerAccountsInput) async throws -> ListPartnerAccountsOutputResponse
    /// List position configurations for a given resource, such as positioning solvers. This action is no longer supported. Calls to retrieve position information should use the [GetResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_GetResourcePosition.html) API operation instead.
    @available(*, deprecated, message: "This operation is no longer supported.")
    func listPositionConfigurations(input: ListPositionConfigurationsInput) async throws -> ListPositionConfigurationsOutputResponse
    /// List queued messages in the downlink queue.
    func listQueuedMessages(input: ListQueuedMessagesInput) async throws -> ListQueuedMessagesOutputResponse
    /// Lists the service profiles registered to your AWS account.
    func listServiceProfiles(input: ListServiceProfilesInput) async throws -> ListServiceProfilesOutputResponse
    /// Lists the tags (metadata) you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// List wireless devices that have been added to an import task.
    func listWirelessDeviceImportTasks(input: ListWirelessDeviceImportTasksInput) async throws -> ListWirelessDeviceImportTasksOutputResponse
    /// Lists the wireless devices registered to your AWS account.
    func listWirelessDevices(input: ListWirelessDevicesInput) async throws -> ListWirelessDevicesOutputResponse
    /// Lists the wireless gateways registered to your AWS account.
    func listWirelessGateways(input: ListWirelessGatewaysInput) async throws -> ListWirelessGatewaysOutputResponse
    /// List the wireless gateway tasks definitions registered to your AWS account.
    func listWirelessGatewayTaskDefinitions(input: ListWirelessGatewayTaskDefinitionsInput) async throws -> ListWirelessGatewayTaskDefinitionsOutputResponse
    /// Put position configuration for a given resource. This action is no longer supported. Calls to update the position configuration should use the [UpdateResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html) API operation instead.
    @available(*, deprecated, message: "This operation is no longer supported.")
    func putPositionConfiguration(input: PutPositionConfigurationInput) async throws -> PutPositionConfigurationOutputResponse
    /// Sets the log-level override for a resource-ID and resource-type. This option can be specified for a wireless gateway or a wireless device. A limit of 200 log level override can be set per account.
    func putResourceLogLevel(input: PutResourceLogLevelInput) async throws -> PutResourceLogLevelOutputResponse
    /// Removes the log-level overrides for all resources; both wireless devices and wireless gateways.
    func resetAllResourceLogLevels(input: ResetAllResourceLogLevelsInput) async throws -> ResetAllResourceLogLevelsOutputResponse
    /// Removes the log-level override, if any, for a specific resource-ID and resource-type. It can be used for a wireless device or a wireless gateway.
    func resetResourceLogLevel(input: ResetResourceLogLevelInput) async throws -> ResetResourceLogLevelOutputResponse
    /// Sends the specified data to a multicast group.
    func sendDataToMulticastGroup(input: SendDataToMulticastGroupInput) async throws -> SendDataToMulticastGroupOutputResponse
    /// Sends a decrypted application data frame to a device.
    func sendDataToWirelessDevice(input: SendDataToWirelessDeviceInput) async throws -> SendDataToWirelessDeviceOutputResponse
    /// Starts a bulk association of all qualifying wireless devices with a multicast group.
    func startBulkAssociateWirelessDeviceWithMulticastGroup(input: StartBulkAssociateWirelessDeviceWithMulticastGroupInput) async throws -> StartBulkAssociateWirelessDeviceWithMulticastGroupOutputResponse
    /// Starts a bulk disassociatin of all qualifying wireless devices from a multicast group.
    func startBulkDisassociateWirelessDeviceFromMulticastGroup(input: StartBulkDisassociateWirelessDeviceFromMulticastGroupInput) async throws -> StartBulkDisassociateWirelessDeviceFromMulticastGroupOutputResponse
    /// Starts a FUOTA task.
    func startFuotaTask(input: StartFuotaTaskInput) async throws -> StartFuotaTaskOutputResponse
    /// Starts a multicast group session.
    func startMulticastGroupSession(input: StartMulticastGroupSessionInput) async throws -> StartMulticastGroupSessionOutputResponse
    /// Start import task for a single wireless device.
    func startSingleWirelessDeviceImportTask(input: StartSingleWirelessDeviceImportTaskInput) async throws -> StartSingleWirelessDeviceImportTaskOutputResponse
    /// Start import task for provisioning Sidewalk devices in bulk using an S3 CSV file.
    func startWirelessDeviceImportTask(input: StartWirelessDeviceImportTaskInput) async throws -> StartWirelessDeviceImportTaskOutputResponse
    /// Adds a tag to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Simulates a provisioned device by sending an uplink data payload of Hello.
    func testWirelessDevice(input: TestWirelessDeviceInput) async throws -> TestWirelessDeviceOutputResponse
    /// Removes one or more tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates properties of a destination.
    func updateDestination(input: UpdateDestinationInput) async throws -> UpdateDestinationOutputResponse
    /// Update the event configuration based on resource types.
    func updateEventConfigurationByResourceTypes(input: UpdateEventConfigurationByResourceTypesInput) async throws -> UpdateEventConfigurationByResourceTypesOutputResponse
    /// Updates properties of a FUOTA task.
    func updateFuotaTask(input: UpdateFuotaTaskInput) async throws -> UpdateFuotaTaskOutputResponse
    /// Set default log level, or log levels by resource types. This can be for wireless device log options or wireless gateways log options and is used to control the log messages that'll be displayed in CloudWatch.
    func updateLogLevelsByResourceTypes(input: UpdateLogLevelsByResourceTypesInput) async throws -> UpdateLogLevelsByResourceTypesOutputResponse
    /// Updates properties of a multicast group session.
    func updateMulticastGroup(input: UpdateMulticastGroupInput) async throws -> UpdateMulticastGroupOutputResponse
    /// Update network analyzer configuration.
    func updateNetworkAnalyzerConfiguration(input: UpdateNetworkAnalyzerConfigurationInput) async throws -> UpdateNetworkAnalyzerConfigurationOutputResponse
    /// Updates properties of a partner account.
    func updatePartnerAccount(input: UpdatePartnerAccountInput) async throws -> UpdatePartnerAccountOutputResponse
    /// Update the position information of a resource. This action is no longer supported. Calls to update the position information should use the [UpdateResourcePosition](https://docs.aws.amazon.com/iot-wireless/2020-11-22/apireference/API_UpdateResourcePosition.html) API operation instead.
    @available(*, deprecated, message: "This operation is no longer supported.")
    func updatePosition(input: UpdatePositionInput) async throws -> UpdatePositionOutputResponse
    /// Update the event configuration for a particular resource identifier.
    func updateResourceEventConfiguration(input: UpdateResourceEventConfigurationInput) async throws -> UpdateResourceEventConfigurationOutputResponse
    /// Update the position information of a given wireless device or a wireless gateway resource. The position coordinates are based on the [ World Geodetic System (WGS84)](https://gisgeography.com/wgs84-world-geodetic-system/).
    func updateResourcePosition(input: UpdateResourcePositionInput) async throws -> UpdateResourcePositionOutputResponse
    /// Updates properties of a wireless device.
    func updateWirelessDevice(input: UpdateWirelessDeviceInput) async throws -> UpdateWirelessDeviceOutputResponse
    /// Update an import task to add more devices to the task.
    func updateWirelessDeviceImportTask(input: UpdateWirelessDeviceImportTaskInput) async throws -> UpdateWirelessDeviceImportTaskOutputResponse
    /// Updates properties of a wireless gateway.
    func updateWirelessGateway(input: UpdateWirelessGatewayInput) async throws -> UpdateWirelessGatewayOutputResponse
}

public protocol IoTWirelessClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTWirelessClientTypes {}

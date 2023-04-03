// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and triggers actions when such events occur. You can use AWS IoT Events API operations to create, read, update, and delete inputs and detector models, and to list their versions.
public protocol IoTEventsClientProtocol {
    /// Creates an alarm model to monitor an AWS IoT Events input attribute. You can use the alarm to get notified when the value is outside a specified range. For more information, see [Create an alarm model](https://docs.aws.amazon.com/iotevents/latest/developerguide/create-alarms.html) in the AWS IoT Events Developer Guide.
    func createAlarmModel(input: CreateAlarmModelInput) async throws -> CreateAlarmModelOutputResponse
    /// Creates a detector model.
    func createDetectorModel(input: CreateDetectorModelInput) async throws -> CreateDetectorModelOutputResponse
    /// Creates an input.
    func createInput(input: CreateInputInput) async throws -> CreateInputOutputResponse
    /// Deletes an alarm model. Any alarm instances that were created based on this alarm model are also deleted. This action can't be undone.
    func deleteAlarmModel(input: DeleteAlarmModelInput) async throws -> DeleteAlarmModelOutputResponse
    /// Deletes a detector model. Any active instances of the detector model are also deleted.
    func deleteDetectorModel(input: DeleteDetectorModelInput) async throws -> DeleteDetectorModelOutputResponse
    /// Deletes an input.
    func deleteInput(input: DeleteInputInput) async throws -> DeleteInputOutputResponse
    /// Retrieves information about an alarm model. If you don't specify a value for the alarmModelVersion parameter, the latest version is returned.
    func describeAlarmModel(input: DescribeAlarmModelInput) async throws -> DescribeAlarmModelOutputResponse
    /// Describes a detector model. If the version parameter is not specified, information about the latest version is returned.
    func describeDetectorModel(input: DescribeDetectorModelInput) async throws -> DescribeDetectorModelOutputResponse
    /// Retrieves runtime information about a detector model analysis. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func describeDetectorModelAnalysis(input: DescribeDetectorModelAnalysisInput) async throws -> DescribeDetectorModelAnalysisOutputResponse
    /// Describes an input.
    func describeInput(input: DescribeInputInput) async throws -> DescribeInputOutputResponse
    /// Retrieves the current settings of the AWS IoT Events logging options.
    func describeLoggingOptions(input: DescribeLoggingOptionsInput) async throws -> DescribeLoggingOptionsOutputResponse
    /// Retrieves one or more analysis results of the detector model. After AWS IoT Events starts analyzing your detector model, you have up to 24 hours to retrieve the analysis results.
    func getDetectorModelAnalysisResults(input: GetDetectorModelAnalysisResultsInput) async throws -> GetDetectorModelAnalysisResultsOutputResponse
    /// Lists the alarm models that you created. The operation returns only the metadata associated with each alarm model.
    func listAlarmModels(input: ListAlarmModelsInput) async throws -> ListAlarmModelsOutputResponse
    /// Lists all the versions of an alarm model. The operation returns only the metadata associated with each alarm model version.
    func listAlarmModelVersions(input: ListAlarmModelVersionsInput) async throws -> ListAlarmModelVersionsOutputResponse
    /// Lists the detector models you have created. Only the metadata associated with each detector model is returned.
    func listDetectorModels(input: ListDetectorModelsInput) async throws -> ListDetectorModelsOutputResponse
    /// Lists all the versions of a detector model. Only the metadata associated with each detector model version is returned.
    func listDetectorModelVersions(input: ListDetectorModelVersionsInput) async throws -> ListDetectorModelVersionsOutputResponse
    /// Lists one or more input routings.
    func listInputRoutings(input: ListInputRoutingsInput) async throws -> ListInputRoutingsOutputResponse
    /// Lists the inputs you have created.
    func listInputs(input: ListInputsInput) async throws -> ListInputsOutputResponse
    /// Lists the tags (metadata) you have assigned to the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Sets or updates the AWS IoT Events logging options. If you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. If you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy), it takes up to five minutes for that change to take effect.
    func putLoggingOptions(input: PutLoggingOptionsInput) async throws -> PutLoggingOptionsOutputResponse
    /// Performs an analysis of your detector model. For more information, see [Troubleshooting a detector model](https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-analyze-api.html) in the AWS IoT Events Developer Guide.
    func startDetectorModelAnalysis(input: StartDetectorModelAnalysisInput) async throws -> StartDetectorModelAnalysisOutputResponse
    /// Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the given tags (metadata) from the resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an alarm model. Any alarms that were created based on the previous version are deleted and then created again as new data arrives.
    func updateAlarmModel(input: UpdateAlarmModelInput) async throws -> UpdateAlarmModelOutputResponse
    /// Updates a detector model. Detectors (instances) spawned by the previous version are deleted and then re-created as new inputs arrive.
    func updateDetectorModel(input: UpdateDetectorModelInput) async throws -> UpdateDetectorModelOutputResponse
    /// Updates an input.
    func updateInput(input: UpdateInputInput) async throws -> UpdateInputOutputResponse
}

public protocol IoTEventsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTEventsClientTypes {}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data. AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management. AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.
public protocol DataPipelineClientProtocol {
    /// Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails. If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call [DeactivatePipeline]. To activate a finished pipeline, modify the end date for the pipeline and then activate it. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ActivatePipeline Content-Length: 39 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE"} HTTP/1.1 200 x-amzn-RequestId: ee19d5bf-074e-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 2 Date: Mon, 12 Nov 2012 17:50:53 GMT {}
    func activatePipeline(input: ActivatePipelineInput) async throws -> ActivatePipelineOutputResponse
    /// Adds or modifies tags for the specified pipeline.
    func addTags(input: AddTagsInput) async throws -> AddTagsOutputResponse
    /// Creates a new, empty pipeline. Use [PutPipelineDefinition] to populate the pipeline. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.CreatePipeline Content-Length: 91 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"name": "myPipeline", "uniqueId": "123456789", "description": "This is my first pipeline"} HTTP/1.1 200 x-amzn-RequestId: b16911ce-0774-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 40 Date: Mon, 12 Nov 2012 17:50:53 GMT {"pipelineId": "df-06372391ZG65EXAMPLE"}
    func createPipeline(input: CreatePipelineInput) async throws -> CreatePipelineOutputResponse
    /// Deactivates the specified running pipeline. The pipeline is set to the DEACTIVATING state until the deactivation process completes. To resume a deactivated pipeline, use [ActivatePipeline]. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.
    func deactivatePipeline(input: DeactivatePipelineInput) async throws -> DeactivatePipelineOutputResponse
    /// Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners. Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call [SetStatus] with the status set to PAUSE on individual components. Components that are paused by [SetStatus] can be resumed. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.DeletePipeline Content-Length: 50 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE"} x-amzn-RequestId: b7a88c81-0754-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 0 Date: Mon, 12 Nov 2012 17:50:53 GMT Unexpected response: 200, OK, undefined
    func deletePipeline(input: DeletePipelineInput) async throws -> DeletePipelineOutputResponse
    /// Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.DescribeObjects Content-Length: 98 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE", "objectIds": ["Schedule"], "evaluateExpressions": true} x-amzn-RequestId: 4c18ea5d-0777-11e2-8a14-21bb8a1f50ef Content-Type: application/x-amz-json-1.1 Content-Length: 1488 Date: Mon, 12 Nov 2012 17:50:53 GMT {"hasMoreResults": false, "pipelineObjects": [ {"fields": [ {"key": "startDateTime", "stringValue": "2012-12-12T00:00:00"}, {"key": "parent", "refValue": "Default"}, {"key": "@sphere", "stringValue": "COMPONENT"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-12-21T18:00:00"}, {"key": "@version", "stringValue": "1"}, {"key": "@status", "stringValue": "PENDING"}, {"key": "@pipelineId", "stringValue": "df-06372391ZG65EXAMPLE"} ], "id": "Schedule", "name": "Schedule"} ] }
    func describeObjects(input: DescribeObjectsInput) async throws -> DescribeObjectsOutputResponse
    /// Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions. To retrieve the full pipeline definition instead of metadata about the pipeline, call [GetPipelineDefinition]. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.DescribePipelines Content-Length: 70 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineIds": ["df-08785951KAKJEXAMPLE"] } x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 767 Date: Mon, 12 Nov 2012 17:50:53 GMT {"pipelineDescriptionList": [ {"description": "This is my first pipeline", "fields": [ {"key": "@pipelineState", "stringValue": "SCHEDULED"}, {"key": "description", "stringValue": "This is my first pipeline"}, {"key": "name", "stringValue": "myPipeline"}, {"key": "@creationTime", "stringValue": "2012-12-13T01:24:06"}, {"key": "@id", "stringValue": "df-0937003356ZJEXAMPLE"}, {"key": "@sphere", "stringValue": "PIPELINE"}, {"key": "@version", "stringValue": "1"}, {"key": "@userId", "stringValue": "924374875933"}, {"key": "@accountId", "stringValue": "924374875933"}, {"key": "uniqueId", "stringValue": "1234567890"} ], "name": "myPipeline", "pipelineId": "df-0937003356ZJEXAMPLE"} ] }
    func describePipelines(input: DescribePipelinesInput) async throws -> DescribePipelinesOutputResponse
    /// Task runners call EvaluateExpression to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.DescribePipelines Content-Length: 164 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-08785951KAKJEXAMPLE", "objectId": "Schedule", "expression": "Transform started at #{startDateTime} and finished at #{endDateTime}"} x-amzn-RequestId: 02870eb7-0736-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 103 Date: Mon, 12 Nov 2012 17:50:53 GMT {"evaluatedExpression": "Transform started at 2012-12-12T00:00:00 and finished at 2012-12-21T18:00:00"}
    func evaluateExpression(input: EvaluateExpressionInput) async throws -> EvaluateExpressionOutputResponse
    /// Gets the definition of the specified pipeline. You can call GetPipelineDefinition to retrieve the pipeline definition that you provided using [PutPipelineDefinition]. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.GetPipelineDefinition Content-Length: 40 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE"} x-amzn-RequestId: e28309e5-0776-11e2-8a14-21bb8a1f50ef Content-Type: application/x-amz-json-1.1 Content-Length: 890 Date: Mon, 12 Nov 2012 17:50:53 GMT {"pipelineObjects": [ {"fields": [ {"key": "workerGroup", "stringValue": "workerGroup"} ], "id": "Default", "name": "Default"}, {"fields": [ {"key": "startDateTime", "stringValue": "2012-09-25T17:00:00"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-09-25T18:00:00"} ], "id": "Schedule", "name": "Schedule"}, {"fields": [ {"key": "schedule", "refValue": "Schedule"}, {"key": "command", "stringValue": "echo hello"}, {"key": "parent", "refValue": "Default"}, {"key": "type", "stringValue": "ShellCommandActivity"} ], "id": "SayHello", "name": "SayHello"} ] }
    func getPipelineDefinition(input: GetPipelineDefinitionInput) async throws -> GetPipelineDefinitionOutputResponse
    /// Lists the pipeline identifiers for all active pipelines that you have permission to access. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ListPipelines Content-Length: 14 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {} Status: x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 39 Date: Mon, 12 Nov 2012 17:50:53 GMT {"PipelineIdList": [ {"id": "df-08785951KAKJEXAMPLE", "name": "MyPipeline"}, {"id": "df-08662578ISYEXAMPLE", "name": "MySecondPipeline"} ] }
    func listPipelines(input: ListPipelinesInput) async throws -> ListPipelinesOutputResponse
    /// Task runners call PollForTask to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the workerGroup parameter. The task returned can come from any of the pipelines that match the workerGroup value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner. If tasks are ready in the work queue, PollForTask returns a response immediately. If no tasks are available in the queue, PollForTask uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call PollForTask again on the same workerGroup until it receives a response, and this can take up to 90 seconds. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.PollForTask Content-Length: 59 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"workerGroup": "MyworkerGroup", "hostname": "example.com"} x-amzn-RequestId: 41c713d2-0775-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 39 Date: Mon, 12 Nov 2012 17:50:53 GMT {"taskObject": {"attemptId": "@SayHello_2012-12-12T00:00:00_Attempt=1", "objects": {"@SayHello_2012-12-12T00:00:00_Attempt=1": {"fields": [ {"key": "@componentParent", "refValue": "SayHello"}, {"key": "@scheduledStartTime", "stringValue": "2012-12-12T00:00:00"}, {"key": "parent", "refValue": "SayHello"}, {"key": "@sphere", "stringValue": "ATTEMPT"}, {"key": "workerGroup", "stringValue": "workerGroup"}, {"key": "@instanceParent", "refValue": "@SayHello_2012-12-12T00:00:00"}, {"key": "type", "stringValue": "ShellCommandActivity"}, {"key": "@status", "stringValue": "WAITING_FOR_RUNNER"}, {"key": "@version", "stringValue": "1"}, {"key": "schedule", "refValue": "Schedule"}, {"key": "@actualStartTime", "stringValue": "2012-12-13T01:40:50"}, {"key": "command", "stringValue": "echo hello"}, {"key": "@scheduledEndTime", "stringValue": "2012-12-12T01:00:00"}, {"key": "@activeInstances", "refValue": "@SayHello_2012-12-12T00:00:00"}, {"key": "@pipelineId", "stringValue": "df-0937003356ZJEXAMPLE"} ], "id": "@SayHello_2012-12-12T00:00:00_Attempt=1", "name": "@SayHello_2012-12-12T00:00:00_Attempt=1"} }, "pipelineId": "df-0937003356ZJEXAMPLE", "taskId": "2xaM4wRs5zOsIH+g9U3oVHfAgAlbSqU6XduncB0HhZ3xMnmvfePZPn4dIbYXHyWyRK+cU15MqDHwdrvftx/4wv+sNS4w34vJfv7QA9aOoOazW28l1GYSb2ZRR0N0paiQp+d1MhSKo10hOTWOsVK5S5Lnx9Qm6omFgXHyIvZRIvTlrQMpr1xuUrflyGOfbFOGpOLpvPE172MYdqpZKnbSS4TcuqgQKSWV2833fEubI57DPOP7ghWa2TcYeSIv4pdLYG53fTuwfbnbdc98g2LNUQzSVhSnt7BoqyNwht2aQ6b/UHg9A80+KVpuXuqmz3m1MXwHFgxjdmuesXNOrrlGpeLCcRWD+aGo0RN1NqhQRzNAig8V4GlaPTQzMsRCljKqvrIyAoP3Tt2XEGsHkkQo12rEX8Z90957XX2qKRwhruwYzqGkSLWjINoLdAxUJdpRXRc5DJTrBd3D5mdzn7kY1l7NEh4kFHJDt3Cx4Z3Mk8MYCACyCk/CEyy9DwuPi66cLz0NBcgbCM5LKjTBOwo1m+am+pvM1kSposE9FPP1+RFGb8k6jQBTJx3TRz1yKilnGXQTZ5xvdOFpJrklIT0OXP1MG3+auM9FlJA+1dX90QoNJE5z7axmK//MOGXUdkqFe2kiDkorqjxwDvc0Js9pVKfKvAmW8YqUbmI9l0ERpWCXXnLVHNmPWz3jaPY+OBAmuJWDmxB/Z8p94aEDg4BVXQ7LvsKQ3DLYhaB7yJ390CJT+i0mm+EBqY60V6YikPSWDFrYQ/NPi2b1DgE19mX8zHqw8qprIl4yh1Ckx2Iige4En/N5ktOoIxnASxAw/TzcE2skxdw5KlHDF+UTj71m16CR/dIaKlXijlfNlNzUBo/bNSadCQn3G5NoO501wPKI:XO50TgDNyo8EXAMPLE/g==:1"} }
    func pollForTask(input: PollForTaskInput) async throws -> PollForTaskOutputResponse
    /// Adds tasks, schedules, and preconditions to the specified pipeline. You can use PutPipelineDefinition to populate a new pipeline. PutPipelineDefinition also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline.
    ///
    /// * An object is missing a name or identifier field.
    ///
    /// * A string or reference field is empty.
    ///
    /// * The number of objects in the pipeline exceeds the maximum allowed objects.
    ///
    /// * The pipeline is in a FINISHED state.
    ///
    ///
    /// Pipeline object definitions are passed to the PutPipelineDefinition action and returned by the [GetPipelineDefinition] action. Example 1 This example sets an valid pipeline configuration and returns success. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.PutPipelineDefinition Content-Length: 914 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-0937003356ZJEXAMPLE", "pipelineObjects": [ {"id": "Default", "name": "Default", "fields": [ {"key": "workerGroup", "stringValue": "workerGroup"} ] }, {"id": "Schedule", "name": "Schedule", "fields": [ {"key": "startDateTime", "stringValue": "2012-12-12T00:00:00"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-12-21T18:00:00"} ] }, {"id": "SayHello", "name": "SayHello", "fields": [ {"key": "type", "stringValue": "ShellCommandActivity"}, {"key": "command", "stringValue": "echo hello"}, {"key": "parent", "refValue": "Default"}, {"key": "schedule", "refValue": "Schedule"} ] } ] } HTTP/1.1 200 x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 18 Date: Mon, 12 Nov 2012 17:50:53 GMT {"errored": false} Example 2 This example sets an invalid pipeline configuration (the value for workerGroup is an empty string) and returns an error message. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.PutPipelineDefinition Content-Length: 903 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE", "pipelineObjects": [ {"id": "Default", "name": "Default", "fields": [ {"key": "workerGroup", "stringValue": ""} ] }, {"id": "Schedule", "name": "Schedule", "fields": [ {"key": "startDateTime", "stringValue": "2012-09-25T17:00:00"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-09-25T18:00:00"} ] }, {"id": "SayHello", "name": "SayHello", "fields": [ {"key": "type", "stringValue": "ShellCommandActivity"}, {"key": "command", "stringValue": "echo hello"}, {"key": "parent", "refValue": "Default"}, {"key": "schedule", "refValue": "Schedule"} ] } ] } HTTP/1.1 200 x-amzn-RequestId: f74afc14-0754-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 18 Date: Mon, 12 Nov 2012 17:50:53 GMT {"__type": "com.amazon.setl.webservice#InvalidRequestException", "message": "Pipeline definition has errors: Could not save the pipeline definition due to FATAL errors: [com.amazon.setl.webservice.ValidationError@108d7ea9] Please call Validate to validate your pipeline"}
    func putPipelineDefinition(input: PutPipelineDefinitionInput) async throws -> PutPipelineDefinitionOutputResponse
    /// Queries the specified pipeline for the names of objects that match the specified set of conditions. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.QueryObjects Content-Length: 123 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE", "query": {"selectors": [ ] }, "sphere": "INSTANCE", "marker": "", "limit": 10} x-amzn-RequestId: 14d704c1-0775-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 72 Date: Mon, 12 Nov 2012 17:50:53 GMT {"hasMoreResults": false, "ids": ["@SayHello_1_2012-09-25T17:00:00"] }
    func queryObjects(input: QueryObjectsInput) async throws -> QueryObjectsOutputResponse
    /// Removes existing tags from the specified pipeline.
    func removeTags(input: RemoveTagsInput) async throws -> RemoveTagsOutputResponse
    /// Task runners call ReportTaskProgress when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent [PollForTask] call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a reportProgressTimeout field in your pipeline. If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to [PollForTask]. Task runners should call ReportTaskProgress every 60 seconds. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ReportTaskProgress Content-Length: 832 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE", "fields": [ {"key": "percentComplete", "stringValue": "50"} ] } x-amzn-RequestId: 640bd023-0775-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 18 Date: Mon, 12 Nov 2012 17:50:53 GMT {"canceled": false}
    func reportTaskProgress(input: ReportTaskProgressInput) async throws -> ReportTaskProgressOutputResponse
    /// Task runners call ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ReportTaskRunnerHeartbeat Content-Length: 84 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"taskrunnerId": "1234567890", "workerGroup": "wg-12345", "hostname": "example.com"} Status: x-amzn-RequestId: b3104dc5-0734-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 20 Date: Mon, 12 Nov 2012 17:50:53 GMT {"terminate": false}
    func reportTaskRunnerHeartbeat(input: ReportTaskRunnerHeartbeatInput) async throws -> ReportTaskRunnerHeartbeatOutputResponse
    /// Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on FINISHED pipelines and attempting to do so returns InvalidRequestException. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.SetStatus Content-Length: 100 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-0634701J7KEXAMPLE", "objectIds": ["o-08600941GHJWMBR9E2"], "status": "pause"} x-amzn-RequestId: e83b8ab7-076a-11e2-af6f-6bc7a6be60d9 Content-Type: application/x-amz-json-1.1 Content-Length: 0 Date: Mon, 12 Nov 2012 17:50:53 GMT Unexpected response: 200, OK, undefined
    func setStatus(input: SetStatusInput) async throws -> SetStatusOutputResponse
    /// Task runners call SetTaskStatus to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call SetTaskStatus for tasks that are canceled by the web service during a call to [ReportTaskProgress]. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.SetTaskStatus Content-Length: 847 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"taskId": "aaGgHT4LuH0T0Y0oLrJRjas5qH0d8cDPADxqq3tn+zCWGELkCdV2JprLreXm1oxeP5EFZHFLJ69kjSsLYE0iYHYBYVGBrB+E/pYq7ANEEeGJFnSBMRiXZVA+8UJ3OzcInvXeinqBmBaKwii7hnnKb/AXjXiNTXyxgydX1KAyg1AxkwBYG4cfPYMZbuEbQJFJvv5C/2+GVXz1w94nKYTeUeepwUOFOuRLS6JVtZoYwpF56E+Yfk1IcGpFOvCZ01B4Bkuu7x3J+MD/j6kJgZLAgbCJQtI3eiW3kdGmX0p0I2BdY1ZsX6b4UiSvM3OMj6NEHJCJL4E0ZfitnhCoe24Kvjo6C2hFbZq+ei/HPgSXBQMSagkr4vS9c0ChzxH2+LNYvec6bY4kymkaZI1dvOzmpa0FcnGf5AjSK4GpsViZ/ujz6zxFv81qBXzjF0/4M1775rjV1VUdyKaixiA/sJiACNezqZqETidp8d24BDPRhGsj6pBCrnelqGFrk/gXEXUsJ+xwMifRC8UVwiKekpAvHUywVk7Ku4jH/n3i2VoLRP6FXwpUbelu34iiZ9czpXyLtyPKwxa87dlrnRVURwkcVjOt2Mcrcaqe+cbWHvNRhyrPkkdfSF3ac8/wfgVbXvLEB2k9mKc67aD9rvdc1PKX09Tk8BKklsMTpZ3TRCd4NzQlJKigMe8Jat9+1tKj4Ole5ZzW6uyTu2s2iFjEV8KXu4MaiRJyNKCdKeGhhZWY37Qk4NBK4Ppgu+C6Y41dpfOh288SLDEVx0/UySlqOEdhba7c6BiPp5r3hKj3mk9lFy5OYp1aoGLeeFmjXveTnPdf2gkWqXXg7AUbJ7jEs1F0lKZQg4szep2gcKyAJXgvXLfJJHcha8Lfb/Ee7wYmyOcAaRpDBoFNSbtoVXar46teIrpho+ZDvynUXvU0grHWGOk=:wn3SgymHZM99bEXAMPLE", "taskStatus": "FINISHED"} x-amzn-RequestId: 8c8deb53-0788-11e2-af9c-6bc7a6be6qr8 Content-Type: application/x-amz-json-1.1 Content-Length: 0 Date: Mon, 12 Nov 2012 17:50:53 GMT {}
    func setTaskStatus(input: SetTaskStatusInput) async throws -> SetTaskStatusOutputResponse
    /// Validates the specified pipeline definition to ensure that it is well formed and can be run without error. Example 1 This example sets an valid pipeline configuration and returns success. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ValidatePipelineDefinition Content-Length: 936 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE", "pipelineObjects": [ {"id": "Default", "name": "Default", "fields": [ {"key": "workerGroup", "stringValue": "MyworkerGroup"} ] }, {"id": "Schedule", "name": "Schedule", "fields": [ {"key": "startDateTime", "stringValue": "2012-09-25T17:00:00"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-09-25T18:00:00"} ] }, {"id": "SayHello", "name": "SayHello", "fields": [ {"key": "type", "stringValue": "ShellCommandActivity"}, {"key": "command", "stringValue": "echo hello"}, {"key": "parent", "refValue": "Default"}, {"key": "schedule", "refValue": "Schedule"} ] } ] } x-amzn-RequestId: 92c9f347-0776-11e2-8a14-21bb8a1f50ef Content-Type: application/x-amz-json-1.1 Content-Length: 18 Date: Mon, 12 Nov 2012 17:50:53 GMT {"errored": false} Example 2 This example sets an invalid pipeline configuration and returns the associated set of validation errors. POST / HTTP/1.1 Content-Type: application/x-amz-json-1.1 X-Amz-Target: DataPipeline.ValidatePipelineDefinition Content-Length: 903 Host: datapipeline.us-east-1.amazonaws.com X-Amz-Date: Mon, 12 Nov 2012 17:49:52 GMT Authorization: AuthParams {"pipelineId": "df-06372391ZG65EXAMPLE", "pipelineObjects": [ {"id": "Default", "name": "Default", "fields": [ {"key": "workerGroup", "stringValue": "MyworkerGroup"} ] }, {"id": "Schedule", "name": "Schedule", "fields": [ {"key": "startDateTime", "stringValue": "bad-time"}, {"key": "type", "stringValue": "Schedule"}, {"key": "period", "stringValue": "1 hour"}, {"key": "endDateTime", "stringValue": "2012-09-25T18:00:00"} ] }, {"id": "SayHello", "name": "SayHello", "fields": [ {"key": "type", "stringValue": "ShellCommandActivity"}, {"key": "command", "stringValue": "echo hello"}, {"key": "parent", "refValue": "Default"}, {"key": "schedule", "refValue": "Schedule"} ] } ] } x-amzn-RequestId: 496a1f5a-0e6a-11e2-a61c-bd6312c92ddd Content-Type: application/x-amz-json-1.1 Content-Length: 278 Date: Mon, 12 Nov 2012 17:50:53 GMT {"errored": true, "validationErrors": [ {"errors": ["INVALID_FIELD_VALUE: 'startDateTime' value must be a literal datetime value."], "id": "Schedule"} ] }
    func validatePipelineDefinition(input: ValidatePipelineDefinitionInput) async throws -> ValidatePipelineDefinitionOutputResponse
}

public protocol DataPipelineClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum DataPipelineClientTypes {}

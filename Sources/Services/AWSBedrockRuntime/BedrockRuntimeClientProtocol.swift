// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Describes the API operations for running inference using Bedrock models.
public protocol BedrockRuntimeClientProtocol {
    /// Invokes the specified Bedrock model to run inference using the input provided in the request body. You use InvokeModel to run inference for text models, image models, and embedding models. For more information, see [Run inference](https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html) in the Bedrock User Guide. For example requests, see Examples (after the Errors section).
    ///
    /// - Parameter InvokeModelInput : [no documentation found]
    ///
    /// - Returns: `InvokeModelOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ModelErrorException` : The request failed due to an error while processing the model.
    /// - `ModelNotReadyException` : The model specified in the request is not ready to serve inference requests.
    /// - `ModelTimeoutException` : The request took too long to process. Processing time exceeded the model timeout length.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ServiceQuotaExceededException` : The number of requests exceeds the service quota. Resubmit your request later.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func invokeModel(input: InvokeModelInput) async throws -> InvokeModelOutput
    /// Invoke the specified Bedrock model to run inference using the input provided. Return the response in a stream. For more information, see [Run inference](https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html) in the Bedrock User Guide. For an example request and response, see Examples (after the Errors section).
    ///
    /// - Parameter InvokeModelWithResponseStreamInput : [no documentation found]
    ///
    /// - Returns: `InvokeModelWithResponseStreamOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The request is denied because of missing access permissions.
    /// - `InternalServerException` : An internal server error occurred. Retry your request.
    /// - `ModelErrorException` : The request failed due to an error while processing the model.
    /// - `ModelNotReadyException` : The model specified in the request is not ready to serve inference requests.
    /// - `ModelStreamErrorException` : An error occurred while streaming the response.
    /// - `ModelTimeoutException` : The request took too long to process. Processing time exceeded the model timeout length.
    /// - `ResourceNotFoundException` : The specified resource ARN was not found. Check the ARN and try your request again.
    /// - `ServiceQuotaExceededException` : The number of requests exceeds the service quota. Resubmit your request later.
    /// - `ThrottlingException` : The number of requests exceeds the limit. Resubmit your request later.
    /// - `ValidationException` : Input validation failed. Check your request parameters and retry the request.
    func invokeModelWithResponseStream(input: InvokeModelWithResponseStreamInput) async throws -> InvokeModelWithResponseStreamOutput
}

public enum BedrockRuntimeClientTypes {}
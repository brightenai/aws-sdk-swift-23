// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class LexRuntimeV2Client {
    public static let clientName = "LexRuntimeV2Client"
    let client: ClientRuntime.SdkHttpClient
    let config: LexRuntimeV2ClientConfigurationProtocol
    let serviceName = "Lex Runtime V2"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: LexRuntimeV2ClientConfigurationProtocol) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String) async throws {
        let config = try await LexRuntimeV2ClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await LexRuntimeV2ClientConfiguration()
        self.init(config: config)
    }

    public class LexRuntimeV2ClientConfiguration: LexRuntimeV2ClientConfigurationProtocol {
        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpoint: Swift.String?
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?
        public var useDualStack: Swift.Bool?
        public var useFIPS: Swift.Bool?

        public var endpointResolver: EndpointResolver

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpoint: Swift.String? = nil,
            endpointResolver: EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration? = nil,
            signingRegion: Swift.String? = nil,
            useDualStack: Swift.Bool? = nil,
            useFIPS: Swift.Bool? = nil
        ) async throws {
            let runtimeConfig = try runtimeConfig ?? ClientRuntime.DefaultSDKRuntimeConfiguration("LexRuntimeV2Client")

            let fileBasedConfigurationStore = try CRTFiledBasedConfigurationStore()

            let resolvedRegionResolver = try regionResolver ?? DefaultRegionResolver(fileBasedConfigurationProvider: fileBasedConfigurationStore)

            let resolvedRegion: String?
            if let region = region {
                resolvedRegion = region
            } else {
                resolvedRegion = await resolvedRegionResolver.resolveRegion()
            }

            let resolvedSigningRegion = signingRegion ?? resolvedRegion

            let resolvedCredentialProvider = try await AWSClientRuntime.AWSCredentialsProvider.resolvedProvider(
                credentialsProvider,
                configuration: .init(fileBasedConfigurationStore: fileBasedConfigurationStore)
            )

            let resolvedEndpointsResolver = try endpointResolver ?? DefaultEndpointResolver()

            self.credentialsProvider = resolvedCredentialProvider
            self.endpoint = endpoint
            self.endpointResolver = resolvedEndpointsResolver
            self.frameworkMetadata = frameworkMetadata
            self.region = resolvedRegion
            self.regionResolver = resolvedRegionResolver
            self.signingRegion = resolvedSigningRegion
            self.useDualStack = useDualStack
            self.useFIPS = useFIPS
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public var partitionID: String? {
            return "LexRuntimeV2Client - \(region ?? "")"
        }
    }
}

public struct LexRuntimeV2ClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "LexRuntimeV2Client"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension LexRuntimeV2Client: LexRuntimeV2ClientProtocol {
    /// Removes session information for a specified bot, alias, and user ID. You can use this operation to restart a conversation with a bot. When you remove a session, the entire history of the session is removed so that you can start again. You don't need to delete a session. Sessions have a time limit and will expire. Set the session time limit when you create the bot. The default is 5 minutes, but you can specify anything between 1 minute and 24 hours. If you specify a bot or alias ID that doesn't exist, you receive a BadRequestException. If the locale doesn't exist in the bot, or if the locale hasn't been enables for the alias, you receive a BadRequestException.
    public func deleteSession(input: DeleteSessionInput) async throws -> DeleteSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>(id: "deleteSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteSessionInput, DeleteSessionOutputResponse, DeleteSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteSessionInput, DeleteSessionOutputResponse>())
        guard let region = config.region else {
            throw SdkError<DeleteSessionOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteSessionOutputResponse, DeleteSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Returns session information for a specified bot, alias, and user. For example, you can use this operation to retrieve session information for a user that has left a long-running session in use. If the bot, alias, or session identifier doesn't exist, Amazon Lex V2 returns a BadRequestException. If the locale doesn't exist or is not enabled for the alias, you receive a BadRequestException.
    public func getSession(input: GetSessionInput) async throws -> GetSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>(id: "getSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetSessionInput, GetSessionOutputResponse, GetSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetSessionInput, GetSessionOutputResponse>())
        guard let region = config.region else {
            throw SdkError<GetSessionOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetSessionOutputResponse, GetSessionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetSessionOutputResponse, GetSessionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetSessionOutputResponse, GetSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetSessionOutputResponse, GetSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetSessionOutputResponse, GetSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Creates a new session or modifies an existing session with an Amazon Lex V2 bot. Use this operation to enable your application to set the state of the bot.
    public func putSession(input: PutSessionInput) async throws -> PutSessionOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putSession")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>(id: "putSession")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<PutSessionInput, PutSessionOutputResponse, PutSessionOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<PutSessionInput, PutSessionOutputResponse>())
        guard let region = config.region else {
            throw SdkError<PutSessionOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<PutSessionOutputResponse, PutSessionOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<PutSessionInput, PutSessionOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<PutSessionInput, PutSessionOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<PutSessionInput, PutSessionOutputResponse>(xmlName: "PutSessionRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<PutSessionOutputResponse, PutSessionOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<PutSessionOutputResponse, PutSessionOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<PutSessionOutputResponse, PutSessionOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<PutSessionOutputResponse, PutSessionOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Sends user input to Amazon Lex V2. Client applications use this API to send requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user input using the machine learning model that it build for the bot. In response, Amazon Lex V2 returns the next message to convey to the user and an optional response card to display. If the optional post-fulfillment response is specified, the messages are returned as follows. For more information, see [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html).
    ///
    /// * Success message - Returned if the Lambda function completes successfully and the intent state is fulfilled or ready fulfillment if the message is present.
    ///
    /// * Failed message - The failed message is returned if the Lambda function throws an exception or if the Lambda function returns a failed intent state without a message.
    ///
    /// * Timeout message - If you don't configure a timeout message and a timeout, and the Lambda function doesn't return within 30 seconds, the timeout message is returned. If you configure a timeout, the timeout message is returned when the period times out.
    ///
    ///
    /// For more information, see [Completion message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).
    public func recognizeText(input: RecognizeTextInput) async throws -> RecognizeTextOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "recognizeText")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<RecognizeTextInput, RecognizeTextOutputResponse, RecognizeTextOutputError>(id: "recognizeText")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<RecognizeTextInput, RecognizeTextOutputResponse, RecognizeTextOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<RecognizeTextInput, RecognizeTextOutputResponse>())
        guard let region = config.region else {
            throw SdkError<RecognizeTextOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<RecognizeTextOutputResponse, RecognizeTextOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<RecognizeTextInput, RecognizeTextOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<RecognizeTextInput, RecognizeTextOutputResponse>(xmlName: "RecognizeTextRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<RecognizeTextOutputResponse, RecognizeTextOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<RecognizeTextOutputResponse, RecognizeTextOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<RecognizeTextOutputResponse, RecognizeTextOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<RecognizeTextOutputResponse, RecognizeTextOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Sends user input to Amazon Lex V2. You can send text or speech. Clients use this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2 interprets the user input using the machine learning model built for the bot. The following request fields must be compressed with gzip and then base64 encoded before you send them to Amazon Lex V2.
    ///
    /// * requestAttributes
    ///
    /// * sessionState
    ///
    ///
    /// The following response fields are compressed using gzip and then base64 encoded by Amazon Lex V2. Before you can use these fields, you must decode and decompress them.
    ///
    /// * inputTranscript
    ///
    /// * interpretations
    ///
    /// * messages
    ///
    /// * requestAttributes
    ///
    /// * sessionState
    ///
    ///
    /// The example contains a Java application that compresses and encodes a Java object to send to Amazon Lex V2, and a second that decodes and decompresses a response from Amazon Lex V2. If the optional post-fulfillment response is specified, the messages are returned as follows. For more information, see [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html).
    ///
    /// * Success message - Returned if the Lambda function completes successfully and the intent state is fulfilled or ready fulfillment if the message is present.
    ///
    /// * Failed message - The failed message is returned if the Lambda function throws an exception or if the Lambda function returns a failed intent state without a message.
    ///
    /// * Timeout message - If you don't configure a timeout message and a timeout, and the Lambda function doesn't return within 30 seconds, the timeout message is returned. If you configure a timeout, the timeout message is returned when the period times out.
    ///
    ///
    /// For more information, see [Completion message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html).
    public func recognizeUtterance(input: RecognizeUtteranceInput) async throws -> RecognizeUtteranceOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "recognizeUtterance")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<RecognizeUtteranceInput, RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>(id: "recognizeUtterance")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<RecognizeUtteranceInput, RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<RecognizeUtteranceInput, RecognizeUtteranceOutputResponse>())
        guard let region = config.region else {
            throw SdkError<RecognizeUtteranceOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<RecognizeUtteranceInput, RecognizeUtteranceOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<RecognizeUtteranceInput, RecognizeUtteranceOutputResponse>(contentType: "application/octet-stream"))
        operation.serializeStep.intercept(position: .after, middleware: RecognizeUtteranceInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: true, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Starts an HTTP/2 bidirectional event stream that enables you to send audio, text, or DTMF input in real time. After your application starts a conversation, users send input to Amazon Lex V2 as a stream of events. Amazon Lex V2 processes the incoming events and responds with streaming text or audio events. Audio input must be in the following format: audio/lpcm sample-rate=8000 sample-size-bits=16 channel-count=1; is-big-endian=false. If the optional post-fulfillment response is specified, the messages are returned as follows. For more information, see [PostFulfillmentStatusSpecification](https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html).
    ///
    /// * Success message - Returned if the Lambda function completes successfully and the intent state is fulfilled or ready fulfillment if the message is present.
    ///
    /// * Failed message - The failed message is returned if the Lambda function throws an exception or if the Lambda function returns a failed intent state without a message.
    ///
    /// * Timeout message - If you don't configure a timeout message and a timeout, and the Lambda function doesn't return within 30 seconds, the timeout message is returned. If you configure a timeout, the timeout message is returned when the period times out.
    ///
    ///
    /// For more information, see [Completion message](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html). If the optional update message is configured, it is played at the specified frequency while the Lambda function is running and the update message state is active. If the fulfillment update message is not active, the Lambda function runs with a 30 second timeout. For more information, see [Update message ](https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html) The StartConversation operation is supported only in the following SDKs:
    ///
    /// * [AWS SDK for C++](https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation)
    ///
    /// * [AWS SDK for Java V2](https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation)
    ///
    /// * [AWS SDK for Ruby V3](https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation)
    public func startConversation(input: StartConversationInput) async throws -> StartConversationOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startConversation")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "lex")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<StartConversationInput, StartConversationOutputResponse, StartConversationOutputError>(id: "startConversation")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartConversationInput, StartConversationOutputResponse, StartConversationOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartConversationInput, StartConversationOutputResponse>())
        guard let region = config.region else {
            throw SdkError<StartConversationOutputError>.client(ClientError.unknownError(("Missing required parameter: Region")))
        }
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartConversationOutputResponse, StartConversationOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.HeaderMiddleware<StartConversationInput, StartConversationOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartConversationInput, StartConversationOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: StartConversationInputBodyMiddleware())
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<StartConversationOutputResponse, StartConversationOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<StartConversationOutputResponse, StartConversationOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartConversationOutputResponse, StartConversationOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartConversationOutputResponse, StartConversationOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SageMakerA2IRuntimeClient: Client {
    public static let clientName = "SageMakerA2IRuntimeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration
    let serviceName = "SageMaker A2I Runtime"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public required init(config: SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = decoder
        self.config = config
    }

    public convenience init(region: Swift.String) throws {
        let config = try SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await SageMakerA2IRuntimeClient.SageMakerA2IRuntimeClientConfiguration()
        self.init(config: config)
    }
}

extension SageMakerA2IRuntimeClient {
    public class SageMakerA2IRuntimeClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
        public var useFIPS: Swift.Bool?

        public var useDualStack: Swift.Bool?

        public var appID: Swift.String?

        public var awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver

        public var awsRetryMode: AWSClientRuntime.AWSRetryMode

        public var region: Swift.String?

        public var signingRegion: Swift.String?

        public var endpointResolver: EndpointResolver

        public var logger: ClientRuntime.LogAgent

        public var retryStrategyOptions: ClientRuntime.RetryStrategyOptions

        public var clientLogMode: ClientRuntime.ClientLogMode

        public var endpoint: Swift.String?

        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator

        public var httpClientEngine: ClientRuntime.HTTPClient

        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration

        public var authSchemes: [ClientRuntime.AuthScheme]?

        public var authSchemeResolver: ClientRuntime.AuthSchemeResolver

        private init(_ useFIPS: Swift.Bool?, _ useDualStack: Swift.Bool?, _ appID: Swift.String?, _ awsCredentialIdentityResolver: any AWSClientRuntime.AWSCredentialIdentityResolver, _ awsRetryMode: AWSClientRuntime.AWSRetryMode, _ region: Swift.String?, _ signingRegion: Swift.String?, _ endpointResolver: EndpointResolver, _ logger: ClientRuntime.LogAgent, _ retryStrategyOptions: ClientRuntime.RetryStrategyOptions, _ clientLogMode: ClientRuntime.ClientLogMode, _ endpoint: Swift.String?, _ idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator, _ httpClientEngine: ClientRuntime.HTTPClient, _ httpClientConfiguration: ClientRuntime.HttpClientConfiguration, _ authSchemes: [ClientRuntime.AuthScheme]?, _ authSchemeResolver: ClientRuntime.AuthSchemeResolver) {
            self.useFIPS = useFIPS
            self.useDualStack = useDualStack
            self.appID = appID
            self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
            self.awsRetryMode = awsRetryMode
            self.region = region
            self.signingRegion = signingRegion
            self.endpointResolver = endpointResolver
            self.logger = logger
            self.retryStrategyOptions = retryStrategyOptions
            self.clientLogMode = clientLogMode
            self.endpoint = endpoint
            self.idempotencyTokenGenerator = idempotencyTokenGenerator
            self.httpClientEngine = httpClientEngine
            self.httpClientConfiguration = httpClientConfiguration
            self.authSchemes = authSchemes
            self.authSchemeResolver = authSchemeResolver
        }

        public convenience init(useFIPS: Bool? = nil, useDualStack: Bool? = nil, appID: String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSRetryMode? = nil, region: String? = nil, signingRegion: String? = nil, endpointResolver: EndpointResolver? = nil, logger: LogAgent? = nil, retryStrategyOptions: RetryStrategyOptions? = nil, clientLogMode: ClientLogMode? = nil, endpoint: String? = nil, idempotencyTokenGenerator: IdempotencyTokenGenerator? = nil, httpClientEngine: HTTPClient? = nil, httpClientConfiguration: HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) async throws {
            self.init(useFIPS, useDualStack, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, endpoint, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSageMakerA2IRuntimeAuthSchemeResolver())}

        public convenience init(useFIPS: Bool? = nil, useDualStack: Bool? = nil, appID: String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSRetryMode? = nil, region: String? = nil, signingRegion: String? = nil, endpointResolver: EndpointResolver? = nil, logger: LogAgent? = nil, retryStrategyOptions: RetryStrategyOptions? = nil, clientLogMode: ClientLogMode? = nil, endpoint: String? = nil, idempotencyTokenGenerator: IdempotencyTokenGenerator? = nil, httpClientEngine: HTTPClient? = nil, httpClientConfiguration: HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), logger ?? AWSClientConfigDefaultsProvider.logger(clientName), try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSageMakerA2IRuntimeAuthSchemeResolver())}

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, logger: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultSageMakerA2IRuntimeAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(SageMakerA2IRuntimeClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<SageMakerA2IRuntimeClient> {
        return ClientBuilder<SageMakerA2IRuntimeClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName)
        ])
    }
}

public struct SageMakerA2IRuntimeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SageMakerA2IRuntimeClient"
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

extension SageMakerA2IRuntimeClient {
    /// Performs the `DeleteHumanLoop` operation on the `AmazonSageMakerA2IRuntime` service.
    ///
    /// Deletes the specified human loop for a flow definition. If the human loop was deleted, this operation will return a ResourceNotFoundException.
    ///
    /// - Parameter DeleteHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `DeleteHumanLoopOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func deleteHumanLoop(input: DeleteHumanLoopInput) async throws -> DeleteHumanLoopOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DeleteHumanLoopInput, DeleteHumanLoopOutput>(id: "deleteHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteHumanLoopInput, DeleteHumanLoopOutput>(DeleteHumanLoopInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteHumanLoopInput, DeleteHumanLoopOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteHumanLoopOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<DeleteHumanLoopOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DeleteHumanLoopOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<DeleteHumanLoopOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteHumanLoopOutput>(responseClosure(decoder: decoder), responseErrorClosure(DeleteHumanLoopOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteHumanLoopOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `DescribeHumanLoop` operation on the `AmazonSageMakerA2IRuntime` service.
    ///
    /// Returns information about the specified human loop. If the human loop was deleted, this operation will return a ResourceNotFoundException error.
    ///
    /// - Parameter DescribeHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `DescribeHumanLoopOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func describeHumanLoop(input: DescribeHumanLoopInput) async throws -> DescribeHumanLoopOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<DescribeHumanLoopInput, DescribeHumanLoopOutput>(id: "describeHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DescribeHumanLoopInput, DescribeHumanLoopOutput>(DescribeHumanLoopInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DescribeHumanLoopInput, DescribeHumanLoopOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DescribeHumanLoopOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<DescribeHumanLoopOutput>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, DescribeHumanLoopOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<DescribeHumanLoopOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DescribeHumanLoopOutput>(responseClosure(decoder: decoder), responseErrorClosure(DescribeHumanLoopOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DescribeHumanLoopOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `ListHumanLoops` operation on the `AmazonSageMakerA2IRuntime` service.
    ///
    /// Returns information about human loops, given the specified parameters. If a human loop was deleted, it will not be included.
    ///
    /// - Parameter ListHumanLoopsInput : [no documentation found]
    ///
    /// - Returns: `ListHumanLoopsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func listHumanLoops(input: ListHumanLoopsInput) async throws -> ListHumanLoopsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listHumanLoops")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<ListHumanLoopsInput, ListHumanLoopsOutput>(id: "listHumanLoops")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListHumanLoopsInput, ListHumanLoopsOutput>(ListHumanLoopsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListHumanLoopsInput, ListHumanLoopsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListHumanLoopsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<ListHumanLoopsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListHumanLoopsInput, ListHumanLoopsOutput>(ListHumanLoopsInput.queryItemProvider(_:)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, ListHumanLoopsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<ListHumanLoopsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListHumanLoopsOutput>(responseClosure(decoder: decoder), responseErrorClosure(ListHumanLoopsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListHumanLoopsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StartHumanLoop` operation on the `AmazonSageMakerA2IRuntime` service.
    ///
    /// Starts a human loop, provided that at least one activation condition is met.
    ///
    /// - Parameter StartHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `StartHumanLoopOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : Your request has the same name as another active human loop but has different input data. You cannot start two human loops with the same name and different input data.
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ServiceQuotaExceededException` : You exceeded your service quota. Service quotas, also referred to as limits, are the maximum number of service resources or operations for your AWS account. For a list of Amazon A2I service quotes, see [Amazon Augmented AI Service Quotes](https://docs.aws.amazon.com/general/latest/gr/a2i.html). Delete some resources or request an increase in your service quota. You can request a quota increase using Service Quotas or the AWS Support Center. To request an increase, see [AWS Service Quotas](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) in the AWS General Reference.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func startHumanLoop(input: StartHumanLoopInput) async throws -> StartHumanLoopOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StartHumanLoopInput, StartHumanLoopOutput>(id: "startHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartHumanLoopInput, StartHumanLoopOutput>(StartHumanLoopInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartHumanLoopInput, StartHumanLoopOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartHumanLoopOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartHumanLoopOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartHumanLoopInput, StartHumanLoopOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<StartHumanLoopInput, StartHumanLoopOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartHumanLoopOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartHumanLoopOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartHumanLoopOutput>(responseClosure(decoder: decoder), responseErrorClosure(StartHumanLoopOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartHumanLoopOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StopHumanLoop` operation on the `AmazonSageMakerA2IRuntime` service.
    ///
    /// Stops the specified human loop.
    ///
    /// - Parameter StopHumanLoopInput : [no documentation found]
    ///
    /// - Returns: `StopHumanLoopOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : We couldn't process your request because of an issue with the server. Try again later.
    /// - `ResourceNotFoundException` : We couldn't find the requested resource. Check that your resources exists and were created in the same AWS Region as your request, and try your request again.
    /// - `ThrottlingException` : You exceeded the maximum number of requests.
    /// - `ValidationException` : The request isn't valid. Check the syntax and try again.
    public func stopHumanLoop(input: StopHumanLoopInput) async throws -> StopHumanLoopOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "stopHumanLoop")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sagemaker")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<StopHumanLoopInput, StopHumanLoopOutput>(id: "stopHumanLoop")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StopHumanLoopInput, StopHumanLoopOutput>(StopHumanLoopInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StopHumanLoopInput, StopHumanLoopOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StopHumanLoopOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StopHumanLoopOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StopHumanLoopInput, StopHumanLoopOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<StopHumanLoopInput, StopHumanLoopOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StopHumanLoopOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StopHumanLoopOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StopHumanLoopOutput>(responseClosure(decoder: decoder), responseErrorClosure(StopHumanLoopOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StopHumanLoopOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

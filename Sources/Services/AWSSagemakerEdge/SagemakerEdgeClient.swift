// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SagemakerEdgeClient: Client {
    public static let clientName = "SagemakerEdgeClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration
    let serviceName = "Sagemaker Edge"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public required init(config: SagemakerEdgeClient.SagemakerEdgeClientConfiguration) {
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
        let config = try SagemakerEdgeClient.SagemakerEdgeClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await SagemakerEdgeClient.SagemakerEdgeClientConfiguration()
        self.init(config: config)
    }
}

extension SagemakerEdgeClient {
    public class SagemakerEdgeClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
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
            self.init(useFIPS, useDualStack, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, endpoint, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSagemakerEdgeAuthSchemeResolver())}

        public convenience init(useFIPS: Bool? = nil, useDualStack: Bool? = nil, appID: String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSRetryMode? = nil, region: String? = nil, signingRegion: String? = nil, endpointResolver: EndpointResolver? = nil, logger: LogAgent? = nil, retryStrategyOptions: RetryStrategyOptions? = nil, clientLogMode: ClientLogMode? = nil, endpoint: String? = nil, idempotencyTokenGenerator: IdempotencyTokenGenerator? = nil, httpClientEngine: HTTPClient? = nil, httpClientConfiguration: HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), logger ?? AWSClientConfigDefaultsProvider.logger(clientName), try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSagemakerEdgeAuthSchemeResolver())}

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, logger: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultSagemakerEdgeAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(SagemakerEdgeClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<SagemakerEdgeClient> {
        return ClientBuilder<SagemakerEdgeClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName)
        ])
    }
}

public struct SagemakerEdgeClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SagemakerEdgeClient"
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

extension SagemakerEdgeClient {
    /// Performs the `GetDeployments` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to get the active deployments from a device.
    ///
    /// - Parameter GetDeploymentsInput : [no documentation found]
    ///
    /// - Returns: `GetDeploymentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeployments(input: GetDeploymentsInput) async throws -> GetDeploymentsOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeployments")
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
        var operation = ClientRuntime.OperationStack<GetDeploymentsInput, GetDeploymentsOutput>(id: "getDeployments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(GetDeploymentsInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeploymentsInput, GetDeploymentsOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetDeploymentsOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetDeploymentsOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetDeploymentsInput, GetDeploymentsOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetDeploymentsInput, GetDeploymentsOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeploymentsOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetDeploymentsOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeploymentsOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetDeploymentsOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeploymentsOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `GetDeviceRegistration` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to check if a device is registered with SageMaker Edge Manager.
    ///
    /// - Parameter GetDeviceRegistrationInput : [no documentation found]
    ///
    /// - Returns: `GetDeviceRegistrationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func getDeviceRegistration(input: GetDeviceRegistrationInput) async throws -> GetDeviceRegistrationOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getDeviceRegistration")
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
        var operation = ClientRuntime.OperationStack<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(id: "getDeviceRegistration")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(GetDeviceRegistrationInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetDeviceRegistrationOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<GetDeviceRegistrationOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<GetDeviceRegistrationInput, GetDeviceRegistrationOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, GetDeviceRegistrationOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<GetDeviceRegistrationOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetDeviceRegistrationOutput>(responseClosure(decoder: decoder), responseErrorClosure(GetDeviceRegistrationOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetDeviceRegistrationOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `SendHeartbeat` operation on the `AmazonSageMakerEdge` service.
    ///
    /// Use to get the current status of devices registered on SageMaker Edge Manager.
    ///
    /// - Parameter SendHeartbeatInput : [no documentation found]
    ///
    /// - Returns: `SendHeartbeatOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServiceException` : An internal failure occurred. Try your request again. If the problem persists, contact Amazon Web Services customer support.
    public func sendHeartbeat(input: SendHeartbeatInput) async throws -> SendHeartbeatOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "sendHeartbeat")
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
        var operation = ClientRuntime.OperationStack<SendHeartbeatInput, SendHeartbeatOutput>(id: "sendHeartbeat")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(SendHeartbeatInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<SendHeartbeatInput, SendHeartbeatOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<SendHeartbeatOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<SendHeartbeatOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<SendHeartbeatInput, SendHeartbeatOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<SendHeartbeatInput, SendHeartbeatOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, SendHeartbeatOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<SendHeartbeatOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<SendHeartbeatOutput>(responseClosure(decoder: decoder), responseErrorClosure(SendHeartbeatOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<SendHeartbeatOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

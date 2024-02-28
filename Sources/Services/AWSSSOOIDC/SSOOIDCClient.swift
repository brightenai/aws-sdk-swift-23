// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class SSOOIDCClient: Client {
    public static let clientName = "SSOOIDCClient"
    let client: ClientRuntime.SdkHttpClient
    let config: SSOOIDCClient.SSOOIDCClientConfiguration
    let serviceName = "SSO OIDC"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public required init(config: SSOOIDCClient.SSOOIDCClientConfiguration) {
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
        let config = try SSOOIDCClient.SSOOIDCClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience required init() async throws {
        let config = try await SSOOIDCClient.SSOOIDCClientConfiguration()
        self.init(config: config)
    }
}

extension SSOOIDCClient {
    public class SSOOIDCClientConfiguration: AWSDefaultClientConfiguration & AWSRegionClientConfiguration & DefaultClientConfiguration & DefaultHttpClientConfiguration {
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
            self.init(useFIPS, useDualStack, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try AWSClientConfigDefaultsProvider.retryMode(), try await AWSClientConfigDefaultsProvider.region(region), try await AWSClientConfigDefaultsProvider.region(region), try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, endpoint, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSSOOIDCAuthSchemeResolver())}

        public convenience init(useFIPS: Bool? = nil, useDualStack: Bool? = nil, appID: String? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil, awsRetryMode: AWSRetryMode? = nil, region: String? = nil, signingRegion: String? = nil, endpointResolver: EndpointResolver? = nil, logger: LogAgent? = nil, retryStrategyOptions: RetryStrategyOptions? = nil, clientLogMode: ClientLogMode? = nil, endpoint: String? = nil, idempotencyTokenGenerator: IdempotencyTokenGenerator? = nil, httpClientEngine: HTTPClient? = nil, httpClientConfiguration: HttpClientConfiguration? = nil, authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: ClientRuntime.AuthSchemeResolver? = nil) throws {
            self.init(useFIPS, useDualStack, try appID ?? AWSClientConfigDefaultsProvider.appID(), try awsCredentialIdentityResolver ?? AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(awsCredentialIdentityResolver), try awsRetryMode ?? AWSClientConfigDefaultsProvider.retryMode(), region, signingRegion, try endpointResolver ?? DefaultEndpointResolver(), logger ?? AWSClientConfigDefaultsProvider.logger(clientName), try retryStrategyOptions ?? AWSClientConfigDefaultsProvider.retryStrategyOptions(), clientLogMode ?? AWSClientConfigDefaultsProvider.clientLogMode, endpoint, idempotencyTokenGenerator ?? AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, httpClientEngine ?? AWSClientConfigDefaultsProvider.httpClientEngine, httpClientConfiguration ?? AWSClientConfigDefaultsProvider.httpClientConfiguration, authSchemes ?? [SigV4AuthScheme()], authSchemeResolver ?? DefaultSSOOIDCAuthSchemeResolver())}

        public convenience required init() async throws {
            try await self.init(useFIPS: nil, useDualStack: nil, appID: nil, awsCredentialIdentityResolver: nil, awsRetryMode: nil, region: nil, signingRegion: nil, endpointResolver: nil, logger: nil, retryStrategyOptions: nil, clientLogMode: nil, endpoint: nil, idempotencyTokenGenerator: nil, httpClientEngine: nil, httpClientConfiguration: nil, authSchemes: nil, authSchemeResolver: nil)
        }

        public convenience init(region: String) throws {
            self.init(nil, nil, try AWSClientConfigDefaultsProvider.appID(), try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver(), try AWSClientConfigDefaultsProvider.retryMode(), region, region, try DefaultEndpointResolver(), AWSClientConfigDefaultsProvider.logger(clientName), try AWSClientConfigDefaultsProvider.retryStrategyOptions(), AWSClientConfigDefaultsProvider.clientLogMode, nil, AWSClientConfigDefaultsProvider.idempotencyTokenGenerator, AWSClientConfigDefaultsProvider.httpClientEngine, AWSClientConfigDefaultsProvider.httpClientConfiguration, [SigV4AuthScheme()], DefaultSSOOIDCAuthSchemeResolver())
        }

        public var partitionID: String? {
            return "\(SSOOIDCClient.clientName) - \(region ?? "")"
        }
    }

    public static func builder() -> ClientBuilder<SSOOIDCClient> {
        return ClientBuilder<SSOOIDCClient>(defaultPlugins: [
            ClientRuntime.DefaultClientPlugin(),
            AWSClientRuntime.DefaultAWSClientPlugin(clientName: self.clientName)
        ])
    }
}

public struct SSOOIDCClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "SSOOIDCClient"
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

extension SSOOIDCClient {
    /// Performs the `CreateToken` operation on the `AWSSSOOIDCService` service.
    ///
    /// Creates and returns access and refresh tokens for clients that are authenticated using client secrets. The access token can be used to fetch short-term credentials for the assigned AWS accounts or to access application APIs using bearer authentication.
    ///
    /// - Parameter CreateTokenInput : [no documentation found]
    ///
    /// - Returns: `CreateTokenOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `AuthorizationPendingException` : Indicates that a request to authorize a client with an access user session token is pending.
    /// - `ExpiredTokenException` : Indicates that the token issued by the service is expired and is no longer valid.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidGrantException` : Indicates that a request contains an invalid grant. This can occur if a client makes a [CreateToken] request with an invalid grant type.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    /// - `UnsupportedGrantTypeException` : Indicates that the grant type in the request is not supported by the service.
    public func createToken(input: CreateTokenInput) async throws -> CreateTokenOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createToken")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<CreateTokenInput, CreateTokenOutput>(id: "createToken")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateTokenInput, CreateTokenOutput>(CreateTokenInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateTokenInput, CreateTokenOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateTokenOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<CreateTokenOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateTokenInput, CreateTokenOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<CreateTokenInput, CreateTokenOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, CreateTokenOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<CreateTokenOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateTokenOutput>(responseClosure(decoder: decoder), responseErrorClosure(CreateTokenOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateTokenOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `CreateTokenWithIAM` operation on the `AWSSSOOIDCService` service.
    ///
    /// Creates and returns access and refresh tokens for clients and applications that are authenticated using IAM entities. The access token can be used to fetch short-term credentials for the assigned AWS accounts or to access application APIs using bearer authentication.
    ///
    /// - Parameter CreateTokenWithIAMInput : [no documentation found]
    ///
    /// - Returns: `CreateTokenWithIAMOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `AuthorizationPendingException` : Indicates that a request to authorize a client with an access user session token is pending.
    /// - `ExpiredTokenException` : Indicates that the token issued by the service is expired and is no longer valid.
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidGrantException` : Indicates that a request contains an invalid grant. This can occur if a client makes a [CreateToken] request with an invalid grant type.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidRequestRegionException` : Indicates that a token provided as input to the request was issued by and is only usable by calling IAM Identity Center endpoints in another region.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    /// - `UnsupportedGrantTypeException` : Indicates that the grant type in the request is not supported by the service.
    public func createTokenWithIAM(input: CreateTokenWithIAMInput) async throws -> CreateTokenWithIAMOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createTokenWithIAM")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .withSigningName(value: "sso-oauth")
                      .withSigningRegion(value: config.signingRegion)
                      .build()
        var operation = ClientRuntime.OperationStack<CreateTokenWithIAMInput, CreateTokenWithIAMOutput>(id: "createTokenWithIAM")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateTokenWithIAMInput, CreateTokenWithIAMOutput>(CreateTokenWithIAMInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateTokenWithIAMInput, CreateTokenWithIAMOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateTokenWithIAMOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<CreateTokenWithIAMOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<CreateTokenWithIAMInput, CreateTokenWithIAMOutput>(CreateTokenWithIAMInput.queryItemProvider(_:)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateTokenWithIAMInput, CreateTokenWithIAMOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<CreateTokenWithIAMInput, CreateTokenWithIAMOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, CreateTokenWithIAMOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<CreateTokenWithIAMOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateTokenWithIAMOutput>(responseClosure(decoder: decoder), responseErrorClosure(CreateTokenWithIAMOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateTokenWithIAMOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `RegisterClient` operation on the `AWSSSOOIDCService` service.
    ///
    /// Registers a client with IAM Identity Center. This allows clients to initiate device authorization. The output should be persisted for reuse through many authentication requests.
    ///
    /// - Parameter RegisterClientInput : [no documentation found]
    ///
    /// - Returns: `RegisterClientOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientMetadataException` : Indicates that the client information sent in the request during registration is invalid.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `InvalidScopeException` : Indicates that the scope provided in the request is invalid.
    public func registerClient(input: RegisterClientInput) async throws -> RegisterClientOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "registerClient")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<RegisterClientInput, RegisterClientOutput>(id: "registerClient")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<RegisterClientInput, RegisterClientOutput>(RegisterClientInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<RegisterClientInput, RegisterClientOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<RegisterClientOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<RegisterClientOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<RegisterClientInput, RegisterClientOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<RegisterClientInput, RegisterClientOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, RegisterClientOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<RegisterClientOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<RegisterClientOutput>(responseClosure(decoder: decoder), responseErrorClosure(RegisterClientOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<RegisterClientOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

    /// Performs the `StartDeviceAuthorization` operation on the `AWSSSOOIDCService` service.
    ///
    /// Initiates device authorization by requesting a pair of verification codes from the authorization service.
    ///
    /// - Parameter StartDeviceAuthorizationInput : [no documentation found]
    ///
    /// - Returns: `StartDeviceAuthorizationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Indicates that an error from the service occurred while trying to process a request.
    /// - `InvalidClientException` : Indicates that the clientId or clientSecret in the request is invalid. For example, this can occur when a client sends an incorrect clientId or an expired clientSecret.
    /// - `InvalidRequestException` : Indicates that something is wrong with the input to the request. For example, a required parameter might be missing or out of range.
    /// - `SlowDownException` : Indicates that the client is making the request too frequently and is more than the service can handle.
    /// - `UnauthorizedClientException` : Indicates that the client is not currently authorized to make the request. This can happen when a clientId is not issued for a public client.
    public func startDeviceAuthorization(input: StartDeviceAuthorizationInput) async throws -> StartDeviceAuthorizationOutput {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startDeviceAuthorization")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withAuthSchemes(value: config.authSchemes ?? [])
                      .withAuthSchemeResolver(value: config.authSchemeResolver)
                      .withUnsignedPayloadTrait(value: false)
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4")
                      .withIdentityResolver(value: config.awsCredentialIdentityResolver, schemeID: "aws.auth#sigv4a")
                      .withRegion(value: config.region)
                      .build()
        var operation = ClientRuntime.OperationStack<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutput>(id: "startDeviceAuthorization")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutput>(StartDeviceAuthorizationInput.urlPathProvider(_:)))
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutput>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<StartDeviceAuthorizationOutput>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromConfig(serviceID: serviceName, version: "1.0", config: config)))
        operation.buildStep.intercept(position: .before, middleware: ClientRuntime.AuthSchemeMiddleware<StartDeviceAuthorizationOutput>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutput>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.BodyMiddleware<StartDeviceAuthorizationInput, StartDeviceAuthorizationOutput, ClientRuntime.JSONWriter>(documentWritingClosure: ClientRuntime.JSONReadWrite.documentWritingClosure(encoder: encoder), inputWritingClosure: JSONReadWrite.writingClosure()))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryMiddleware<ClientRuntime.DefaultRetryStrategy, AWSClientRuntime.AWSRetryErrorInfoProvider, StartDeviceAuthorizationOutput>(options: config.retryStrategyOptions))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.SignerMiddleware<StartDeviceAuthorizationOutput>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<StartDeviceAuthorizationOutput>(responseClosure(decoder: decoder), responseErrorClosure(StartDeviceAuthorizationOutputError.self, decoder: decoder)))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<StartDeviceAuthorizationOutput>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context, input: input, next: client.getHandler())
        return result
    }

}

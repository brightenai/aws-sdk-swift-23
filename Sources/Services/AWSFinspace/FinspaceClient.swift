// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class FinspaceClient {
    public static let clientName = "FinspaceClient"
    let client: ClientRuntime.SdkHttpClient
    let config: FinspaceClientConfigurationProtocol
    let serviceName = "finspace"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: FinspaceClientConfigurationProtocol) {
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
        let config = try await FinspaceClientConfiguration(region: region)
        self.init(config: config)
    }

    public convenience init() async throws {
        let config = try await FinspaceClientConfiguration()
        self.init(config: config)
    }

    public class FinspaceClientConfiguration: FinspaceClientConfigurationProtocol {
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
            let runtimeConfig = try runtimeConfig ?? ClientRuntime.DefaultSDKRuntimeConfiguration("FinspaceClient")

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
            return "FinspaceClient - \(region ?? "")"
        }
    }
}

public struct FinspaceClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "FinspaceClient"
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

extension FinspaceClient: FinspaceClientProtocol {
    /// Create a new FinSpace environment.
    public func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createEnvironment")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<CreateEnvironmentInput, CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>(id: "createEnvironment")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<CreateEnvironmentInput, CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<CreateEnvironmentInput, CreateEnvironmentOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateEnvironmentInput, CreateEnvironmentOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<CreateEnvironmentInput, CreateEnvironmentOutputResponse>(xmlName: "CreateEnvironmentRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Delete an FinSpace environment.
    public func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "deleteEnvironment")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DeleteEnvironmentInput, DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>(id: "deleteEnvironment")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<DeleteEnvironmentInput, DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<DeleteEnvironmentInput, DeleteEnvironmentOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Returns the FinSpace environment object.
    public func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getEnvironment")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetEnvironmentInput, GetEnvironmentOutputResponse, GetEnvironmentOutputError>(id: "getEnvironment")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetEnvironmentInput, GetEnvironmentOutputResponse, GetEnvironmentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetEnvironmentInput, GetEnvironmentOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<GetEnvironmentOutputResponse, GetEnvironmentOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<GetEnvironmentOutputResponse, GetEnvironmentOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetEnvironmentOutputResponse, GetEnvironmentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetEnvironmentOutputResponse, GetEnvironmentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<GetEnvironmentOutputResponse, GetEnvironmentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// A list of all of your FinSpace environments.
    public func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listEnvironments")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListEnvironmentsInput, ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>(id: "listEnvironments")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListEnvironmentsInput, ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListEnvironmentsInput, ListEnvironmentsOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<ListEnvironmentsInput, ListEnvironmentsOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// A list of all tags for a resource.
    public func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "listTagsForResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<ListTagsForResourceInput, ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(id: "listTagsForResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<ListTagsForResourceInput, ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<ListTagsForResourceInput, ListTagsForResourceOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Adds metadata tags to a FinSpace resource.
    public func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "tagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>(id: "tagResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<TagResourceInput, TagResourceOutputResponse, TagResourceOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<TagResourceInput, TagResourceOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<TagResourceOutputResponse, TagResourceOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<TagResourceInput, TagResourceOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<TagResourceInput, TagResourceOutputResponse>(xmlName: "TagResourceRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<TagResourceOutputResponse, TagResourceOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<TagResourceOutputResponse, TagResourceOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<TagResourceOutputResponse, TagResourceOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<TagResourceOutputResponse, TagResourceOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Removes metadata tags from a FinSpace resource.
    public func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .delete)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "untagResource")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UntagResourceInput, UntagResourceOutputResponse, UntagResourceOutputError>(id: "untagResource")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UntagResourceInput, UntagResourceOutputResponse, UntagResourceOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UntagResourceInput, UntagResourceOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UntagResourceOutputResponse, UntagResourceOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.QueryItemMiddleware<UntagResourceInput, UntagResourceOutputResponse>())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<UntagResourceOutputResponse, UntagResourceOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UntagResourceOutputResponse, UntagResourceOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UntagResourceOutputResponse, UntagResourceOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UntagResourceOutputResponse, UntagResourceOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

    /// Update your FinSpace environment.
    public func updateEnvironment(input: UpdateEnvironmentInput) async throws -> UpdateEnvironmentOutputResponse
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .put)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "updateEnvironment")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withPartitionID(value: config.partitionID)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "finspace")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<UpdateEnvironmentInput, UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>(id: "updateEnvironment")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<UpdateEnvironmentInput, UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<UpdateEnvironmentInput, UpdateEnvironmentOutputResponse>())
        let endpointParams = EndpointParams(endpoint: config.endpoint, region: config.region, useDualStack: config.useDualStack ?? false, useFIPS: config.useFIPS ?? false)
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>(endpointResolver: config.endpointResolver, endpointParams: endpointParams))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<UpdateEnvironmentInput, UpdateEnvironmentOutputResponse>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<UpdateEnvironmentInput, UpdateEnvironmentOutputResponse>(xmlName: "UpdateEnvironmentRequest"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: ClientRuntime.RetryerMiddleware<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false, signingAlgorithm: .sigv4)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>())
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.LoggerMiddleware<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>(clientLogMode: config.clientLogMode))
        let result = try await operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        return result
    }

}

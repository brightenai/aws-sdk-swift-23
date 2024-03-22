// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(FileBasedConfig) import AWSClientRuntime
import ClientRuntime

public class SageMakerMetricsClientEndpointPlugin: Plugin {
    private var endpointResolver: EndpointResolver
    public init(endpointResolver: EndpointResolver) {
        self.endpointResolver = endpointResolver
    }
    public convenience init() throws {
        self.init(endpointResolver: try DefaultEndpointResolver())
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? SageMakerMetricsClient.SageMakerMetricsClientConfiguration {
            config.endpointResolver = self.endpointResolver
        }
    }
}

public class DefaultAWSAuthSchemePlugin: Plugin {
    public init() {
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? SageMakerMetricsClient.SageMakerMetricsClientConfiguration {
            config.authSchemeResolver = DefaultSageMakerMetricsAuthSchemeResolver()
            config.authSchemes = [SigV4AuthScheme()]
            config.awsCredentialIdentityResolver = try AWSClientConfigDefaultsProvider.awsCredentialIdentityResolver()
        }
    }
}

public class SageMakerMetricsClientAuthSchemePlugin: Plugin {
    private var authSchemes: [ClientRuntime.AuthScheme]?
    private var authSchemeResolver: ClientRuntime.AuthSchemeResolver?
    private var awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)?
    public init(authSchemes: [ClientRuntime.AuthScheme]? = nil, authSchemeResolver: SageMakerMetricsAuthSchemeResolver? = nil, awsCredentialIdentityResolver: (any AWSClientRuntime.AWSCredentialIdentityResolver)? = nil) {
        self.authSchemeResolver = authSchemeResolver
        self.authSchemes = authSchemes
        self.awsCredentialIdentityResolver = awsCredentialIdentityResolver
    }
    public func configureClient(clientConfiguration: ClientRuntime.ClientConfiguration) throws {
        if let config = clientConfiguration as? SageMakerMetricsClient.SageMakerMetricsClientConfiguration {
            if (self.authSchemes != nil) {
                config.authSchemes = self.authSchemes
            }
            if (self.authSchemeResolver != nil) {
                config.authSchemeResolver = self.authSchemeResolver!
            }
            if (self.awsCredentialIdentityResolver != nil) {
                config.awsCredentialIdentityResolver = self.awsCredentialIdentityResolver!
            }
        }
    }
}
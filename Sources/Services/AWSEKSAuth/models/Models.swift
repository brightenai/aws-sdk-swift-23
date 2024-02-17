// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension AccessDeniedException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: AccessDeniedExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// You don't have permissions to perform the requested operation. The IAM principal making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see [Access management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html) in the IAM User Guide.
public struct AccessDeniedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "AccessDeniedException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct AccessDeniedExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension AccessDeniedExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension AssumeRoleForPodIdentityInput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "AssumeRoleForPodIdentityInput(clusterName: \(Swift.String(describing: clusterName)), token: \"CONTENT_REDACTED\")"}
}

extension AssumeRoleForPodIdentityInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case token
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let token = self.token {
            try encodeContainer.encode(token, forKey: .token)
        }
    }
}

extension AssumeRoleForPodIdentityInput {

    static func urlPathProvider(_ value: AssumeRoleForPodIdentityInput) -> Swift.String? {
        guard let clusterName = value.clusterName else {
            return nil
        }
        return "/clusters/\(clusterName.urlPercentEncoding())/assume-role-for-pod-identity"
    }
}

public struct AssumeRoleForPodIdentityInput: Swift.Equatable {
    /// The name of the cluster for the request.
    /// This member is required.
    public var clusterName: Swift.String?
    /// The token of the Kubernetes service account for the pod.
    /// This member is required.
    public var token: Swift.String?

    public init(
        clusterName: Swift.String? = nil,
        token: Swift.String? = nil
    )
    {
        self.clusterName = clusterName
        self.token = token
    }
}

struct AssumeRoleForPodIdentityInputBody: Swift.Equatable {
    let token: Swift.String?
}

extension AssumeRoleForPodIdentityInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case token
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let tokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .token)
        token = tokenDecoded
    }
}

extension AssumeRoleForPodIdentityOutput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "AssumeRoleForPodIdentityOutput(assumedRoleUser: \(Swift.String(describing: assumedRoleUser)), audience: \(Swift.String(describing: audience)), podIdentityAssociation: \(Swift.String(describing: podIdentityAssociation)), subject: \(Swift.String(describing: subject)), credentials: \"CONTENT_REDACTED\")"}
}

extension AssumeRoleForPodIdentityOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: AssumeRoleForPodIdentityOutputBody = try responseDecoder.decode(responseBody: data)
            self.assumedRoleUser = output.assumedRoleUser
            self.audience = output.audience
            self.credentials = output.credentials
            self.podIdentityAssociation = output.podIdentityAssociation
            self.subject = output.subject
        } else {
            self.assumedRoleUser = nil
            self.audience = nil
            self.credentials = nil
            self.podIdentityAssociation = nil
            self.subject = nil
        }
    }
}

public struct AssumeRoleForPodIdentityOutput: Swift.Equatable {
    /// An object with the permanent IAM role identity and the temporary session name. The ARN of the IAM role that the temporary credentials authenticate to. The session name of the temporary session requested to STS. The value is a unique identifier that contains the role ID, a colon (:), and the role session name of the role that is being assumed. The role ID is generated by IAM when the role is created. The role session name part of the value follows this format: eks-clustername-podname-random UUID
    /// This member is required.
    public var assumedRoleUser: EKSAuthClientTypes.AssumedRoleUser?
    /// The identity that is allowed to use the credentials. This value is always pods.eks.amazonaws.com.
    /// This member is required.
    public var audience: Swift.String?
    /// The Amazon Web Services Signature Version 4 type of temporary credentials.
    /// This member is required.
    public var credentials: EKSAuthClientTypes.Credentials?
    /// The Amazon Resource Name (ARN) and ID of the EKS Pod Identity association.
    /// This member is required.
    public var podIdentityAssociation: EKSAuthClientTypes.PodIdentityAssociation?
    /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
    /// This member is required.
    public var subject: EKSAuthClientTypes.Subject?

    public init(
        assumedRoleUser: EKSAuthClientTypes.AssumedRoleUser? = nil,
        audience: Swift.String? = nil,
        credentials: EKSAuthClientTypes.Credentials? = nil,
        podIdentityAssociation: EKSAuthClientTypes.PodIdentityAssociation? = nil,
        subject: EKSAuthClientTypes.Subject? = nil
    )
    {
        self.assumedRoleUser = assumedRoleUser
        self.audience = audience
        self.credentials = credentials
        self.podIdentityAssociation = podIdentityAssociation
        self.subject = subject
    }
}

struct AssumeRoleForPodIdentityOutputBody: Swift.Equatable {
    let subject: EKSAuthClientTypes.Subject?
    let audience: Swift.String?
    let podIdentityAssociation: EKSAuthClientTypes.PodIdentityAssociation?
    let assumedRoleUser: EKSAuthClientTypes.AssumedRoleUser?
    let credentials: EKSAuthClientTypes.Credentials?
}

extension AssumeRoleForPodIdentityOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case assumedRoleUser
        case audience
        case credentials
        case podIdentityAssociation
        case subject
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let subjectDecoded = try containerValues.decodeIfPresent(EKSAuthClientTypes.Subject.self, forKey: .subject)
        subject = subjectDecoded
        let audienceDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .audience)
        audience = audienceDecoded
        let podIdentityAssociationDecoded = try containerValues.decodeIfPresent(EKSAuthClientTypes.PodIdentityAssociation.self, forKey: .podIdentityAssociation)
        podIdentityAssociation = podIdentityAssociationDecoded
        let assumedRoleUserDecoded = try containerValues.decodeIfPresent(EKSAuthClientTypes.AssumedRoleUser.self, forKey: .assumedRoleUser)
        assumedRoleUser = assumedRoleUserDecoded
        let credentialsDecoded = try containerValues.decodeIfPresent(EKSAuthClientTypes.Credentials.self, forKey: .credentials)
        credentials = credentialsDecoded
    }
}

enum AssumeRoleForPodIdentityOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            case "AccessDeniedException": return try await AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ExpiredTokenException": return try await ExpiredTokenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InternalServerException": return try await InternalServerException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidParameterException": return try await InvalidParameterException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidRequestException": return try await InvalidRequestException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "InvalidTokenException": return try await InvalidTokenException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ResourceNotFoundException": return try await ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ServiceUnavailableException": return try await ServiceUnavailableException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            case "ThrottlingException": return try await ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: restJSONError.errorMessage, requestID: requestID)
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension EKSAuthClientTypes.AssumedRoleUser: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case arn
        case assumeRoleId
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let arn = self.arn {
            try encodeContainer.encode(arn, forKey: .arn)
        }
        if let assumeRoleId = self.assumeRoleId {
            try encodeContainer.encode(assumeRoleId, forKey: .assumeRoleId)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let arnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .arn)
        arn = arnDecoded
        let assumeRoleIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .assumeRoleId)
        assumeRoleId = assumeRoleIdDecoded
    }
}

extension EKSAuthClientTypes {
    /// An object with the permanent IAM role identity and the temporary session name.
    public struct AssumedRoleUser: Swift.Equatable {
        /// The ARN of the IAM role that the temporary credentials authenticate to.
        /// This member is required.
        public var arn: Swift.String?
        /// The session name of the temporary session requested to STS. The value is a unique identifier that contains the role ID, a colon (:), and the role session name of the role that is being assumed. The role ID is generated by IAM when the role is created. The role session name part of the value follows this format: eks-clustername-podname-random UUID
        /// This member is required.
        public var assumeRoleId: Swift.String?

        public init(
            arn: Swift.String? = nil,
            assumeRoleId: Swift.String? = nil
        )
        {
            self.arn = arn
            self.assumeRoleId = assumeRoleId
        }
    }

}

extension EKSAuthClientTypes.Credentials: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case accessKeyId
        case expiration
        case secretAccessKey
        case sessionToken
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let accessKeyId = self.accessKeyId {
            try encodeContainer.encode(accessKeyId, forKey: .accessKeyId)
        }
        if let expiration = self.expiration {
            try encodeContainer.encodeTimestamp(expiration, format: .epochSeconds, forKey: .expiration)
        }
        if let secretAccessKey = self.secretAccessKey {
            try encodeContainer.encode(secretAccessKey, forKey: .secretAccessKey)
        }
        if let sessionToken = self.sessionToken {
            try encodeContainer.encode(sessionToken, forKey: .sessionToken)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let sessionTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sessionToken)
        sessionToken = sessionTokenDecoded
        let secretAccessKeyDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .secretAccessKey)
        secretAccessKey = secretAccessKeyDecoded
        let accessKeyIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .accessKeyId)
        accessKeyId = accessKeyIdDecoded
        let expirationDecoded = try containerValues.decodeTimestampIfPresent(.epochSeconds, forKey: .expiration)
        expiration = expirationDecoded
    }
}

extension EKSAuthClientTypes.Credentials: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "CONTENT_REDACTED"
    }
}

extension EKSAuthClientTypes {
    /// The Amazon Web Services Signature Version 4 type of temporary credentials.
    public struct Credentials: Swift.Equatable {
        /// The access key ID that identifies the temporary security credentials.
        /// This member is required.
        public var accessKeyId: Swift.String?
        /// The Unix epoch timestamp in seconds when the current credentials expire.
        /// This member is required.
        public var expiration: ClientRuntime.Date?
        /// The secret access key that applications inside the pods use to sign requests.
        /// This member is required.
        public var secretAccessKey: Swift.String?
        /// The token that applications inside the pods must pass to any service API to use the temporary credentials.
        /// This member is required.
        public var sessionToken: Swift.String?

        public init(
            accessKeyId: Swift.String? = nil,
            expiration: ClientRuntime.Date? = nil,
            secretAccessKey: Swift.String? = nil,
            sessionToken: Swift.String? = nil
        )
        {
            self.accessKeyId = accessKeyId
            self.expiration = expiration
            self.secretAccessKey = secretAccessKey
            self.sessionToken = sessionToken
        }
    }

}

public enum EKSAuthClientTypes {}

extension ExpiredTokenException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ExpiredTokenExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified Kubernetes service account token is expired.
public struct ExpiredTokenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ExpiredTokenException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ExpiredTokenExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ExpiredTokenExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InternalServerException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InternalServerExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// These errors are usually caused by a server-side issue.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InternalServerExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InternalServerExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidParameterException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidParameterExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified parameter is invalid. Review the available parameters for the API request.
public struct InvalidParameterException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidParameterException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidParameterExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidParameterExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidRequestException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidRequestExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// This exception is thrown if the request contains a semantic error. The precise meaning will depend on the API, and will be documented in the error message.
public struct InvalidRequestException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidRequestException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidRequestExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidRequestExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidTokenException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: InvalidTokenExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified Kubernetes service account token is invalid.
public struct InvalidTokenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidTokenException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct InvalidTokenExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidTokenExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EKSAuthClientTypes.PodIdentityAssociation: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case associationArn
        case associationId
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let associationArn = self.associationArn {
            try encodeContainer.encode(associationArn, forKey: .associationArn)
        }
        if let associationId = self.associationId {
            try encodeContainer.encode(associationId, forKey: .associationId)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let associationArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .associationArn)
        associationArn = associationArnDecoded
        let associationIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .associationId)
        associationId = associationIdDecoded
    }
}

extension EKSAuthClientTypes {
    /// Amazon EKS Pod Identity associations provide the ability to manage credentials for your applications, similar to the way that Amazon EC2 instance profiles provide credentials to Amazon EC2 instances.
    public struct PodIdentityAssociation: Swift.Equatable {
        /// The Amazon Resource Name (ARN) of the EKS Pod Identity association.
        /// This member is required.
        public var associationArn: Swift.String?
        /// The ID of the association.
        /// This member is required.
        public var associationId: Swift.String?

        public init(
            associationArn: Swift.String? = nil,
            associationId: Swift.String? = nil
        )
        {
            self.associationArn = associationArn
            self.associationId = associationId
        }
    }

}

extension ResourceNotFoundException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The specified resource could not be found.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ServiceUnavailableException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ServiceUnavailableExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The service is unavailable. Back off and retry the operation.
public struct ServiceUnavailableException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ServiceUnavailableException" }
    public static var fault: ErrorFault { .server }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ServiceUnavailableExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ServiceUnavailableExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension EKSAuthClientTypes.Subject: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case namespace
        case serviceAccount
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let namespace = self.namespace {
            try encodeContainer.encode(namespace, forKey: .namespace)
        }
        if let serviceAccount = self.serviceAccount {
            try encodeContainer.encode(serviceAccount, forKey: .serviceAccount)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let namespaceDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .namespace)
        namespace = namespaceDecoded
        let serviceAccountDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .serviceAccount)
        serviceAccount = serviceAccountDecoded
    }
}

extension EKSAuthClientTypes {
    /// An object containing the name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
    public struct Subject: Swift.Equatable {
        /// The name of the Kubernetes namespace inside the cluster to create the association in. The service account and the pods that use the service account must be in this namespace.
        /// This member is required.
        public var namespace: Swift.String?
        /// The name of the Kubernetes service account inside the cluster to associate the IAM credentials with.
        /// This member is required.
        public var serviceAccount: Swift.String?

        public init(
            namespace: Swift.String? = nil,
            serviceAccount: Swift.String? = nil
        )
        {
            self.namespace = namespace
            self.serviceAccount = serviceAccount
        }
    }

}

extension ThrottlingException {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: ThrottlingExceptionBody = try responseDecoder.decode(responseBody: data)
            self.properties.message = output.message
        } else {
            self.properties.message = nil
        }
        self.httpResponse = httpResponse
        self.requestID = requestID
        self.message = message
    }
}

/// The request was denied because your request rate is too high. Reduce the frequency of requests.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

struct ThrottlingExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ThrottlingExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

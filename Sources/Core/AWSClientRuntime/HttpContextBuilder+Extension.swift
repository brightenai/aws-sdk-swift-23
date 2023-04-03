//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import ClientRuntime

extension HttpContext {
    static let credentialsProvider = AttributeKey<CredentialsProviding>(name: "CredentialsProvider")
    static let region = AttributeKey<String>(name: "Region")
    public static let signingName = AttributeKey<String>(name: "SigningName")
    public static let signingRegion = AttributeKey<String>(name: "SigningRegion")
    public static let signingAlgorithm = AttributeKey<String>(name: "SigningAlgorithm")

    func getCredentialsProvider() -> CredentialsProviding? {
        return attributes.get(key: HttpContext.credentialsProvider)
    }

    func getRegion() -> String? {
        return attributes.get(key: HttpContext.region)
    }

    func getSigningName() -> String? {
        return attributes.get(key: HttpContext.signingName)
    }

    func getSigningRegion() -> String? {
        return attributes.get(key: HttpContext.signingRegion)
    }

    func getSigningAlgorithm() -> AWSSigningAlgorithm? {
        guard let algorithmRawValue = attributes.get(key: HttpContext.signingAlgorithm) else {
            return nil
        }
        return AWSSigningAlgorithm(rawValue: algorithmRawValue)
    }
}

extension HttpContextBuilder {

    @discardableResult
    public func withRegion(value: String?) -> HttpContextBuilder {
        self.attributes.set(key: AttributeKey<String>(name: "Region"), value: value)
        return self
    }

    @discardableResult
    public func withCredentialsProvider(value: CredentialsProviding) -> HttpContextBuilder {
        self.attributes.set(key: AttributeKey<CredentialsProviding>(name: "CredentialsProvider"), value: value)
        return self
    }

    @discardableResult
    public func withSigningName(value: String) -> HttpContextBuilder {
        self.attributes.set(key: AttributeKey<String>(name: "SigningName"), value: value)
        return self
    }

    @discardableResult
    public func withSigningRegion(value: String?) -> HttpContextBuilder {
        self.attributes.set(key: AttributeKey<String>(name: "SigningRegion"), value: value)
        return self
    }

    @discardableResult
    public func withSigningAlgorithm(value: AWSSigningAlgorithm?) -> HttpContextBuilder {
        self.attributes.set(key: AttributeKey<String>(name: "SigningAlgorithm"), value: value?.rawValue)
        return self
    }
}

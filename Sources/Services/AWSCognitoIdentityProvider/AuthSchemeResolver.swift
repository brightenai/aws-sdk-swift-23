// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct CognitoIdentityProviderAuthSchemeResolverParameters: ClientRuntime.AuthSchemeResolverParameters {
    public let operation: String
    // Region is used for SigV4 auth scheme
    public let region: String?
}

public protocol CognitoIdentityProviderAuthSchemeResolver: ClientRuntime.AuthSchemeResolver {
    // Intentionally empty.
    // This is the parent protocol that all auth scheme resolver implementations of
    // the service CognitoIdentityProvider must conform to.
}

public struct DefaultCognitoIdentityProviderAuthSchemeResolver: CognitoIdentityProviderAuthSchemeResolver {
    public func resolveAuthScheme(params: ClientRuntime.AuthSchemeResolverParameters) throws -> [AuthOption] {
        var validAuthOptions = [AuthOption]()
        guard let serviceParams = params as? CognitoIdentityProviderAuthSchemeResolverParameters else {
            throw ClientError.authError("Service specific auth scheme parameters type must be passed to auth scheme resolver.")
        }
        switch serviceParams.operation {
            case "associateSoftwareToken":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "changePassword":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "confirmDevice":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "confirmForgotPassword":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "confirmSignUp":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "deleteUser":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "deleteUserAttributes":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "forgetDevice":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "forgotPassword":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "getDevice":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "getUser":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "getUserAttributeVerificationCode":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "globalSignOut":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "initiateAuth":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "listDevices":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "resendConfirmationCode":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "respondToAuthChallenge":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "revokeToken":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "setUserMFAPreference":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "setUserSettings":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "signUp":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "updateAuthEventFeedback":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "updateDeviceStatus":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "updateUserAttributes":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "verifySoftwareToken":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            case "verifyUserAttribute":
                validAuthOptions.append(AuthOption(schemeID: "smithy.api#noAuth"))
            default:
                var sigV4Option = AuthOption(schemeID: "aws.auth#sigv4")
                sigV4Option.signingProperties.set(key: AttributeKeys.signingName, value: "cognito-idp")
                guard let region = serviceParams.region else {
                    throw ClientError.authError("Missing region in auth scheme parameters for SigV4 auth scheme.")
                }
                sigV4Option.signingProperties.set(key: AttributeKeys.signingRegion, value: region)
                validAuthOptions.append(sigV4Option)
        }
        return validAuthOptions
    }

    public func constructParameters(context: HttpContext) throws -> ClientRuntime.AuthSchemeResolverParameters {
        guard let opName = context.getOperation() else {
            throw ClientError.dataNotFound("Operation name not configured in middleware context for auth scheme resolver params construction.")
        }
        let opRegion = context.getRegion()
        return CognitoIdentityProviderAuthSchemeResolverParameters(operation: opName, region: opRegion)
    }
}

// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// IoT Secure Tunneling IoT Secure Tunneling creates remote connections to devices deployed in the field. For more information about how IoT Secure Tunneling works, see [IoT Secure Tunneling](https://docs.aws.amazon.com/iot/latest/developerguide/secure-tunneling.html).
public protocol IoTSecureTunnelingClientProtocol {
    /// Closes a tunnel identified by the unique tunnel id. When a CloseTunnel request is received, we close the WebSocket connections between the client and proxy server so no data can be transmitted. Requires permission to access the [CloseTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    func closeTunnel(input: CloseTunnelInput) async throws -> CloseTunnelOutputResponse
    /// Gets information about a tunnel identified by the unique tunnel id. Requires permission to access the [DescribeTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    func describeTunnel(input: DescribeTunnelInput) async throws -> DescribeTunnelOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// List all tunnels for an Amazon Web Services account. Tunnels are listed by creation time in descending order, newer tunnels will be listed before older tunnels. Requires permission to access the [ListTunnels](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    func listTunnels(input: ListTunnelsInput) async throws -> ListTunnelsOutputResponse
    /// Creates a new tunnel, and returns two client access tokens for clients to use to connect to the IoT Secure Tunneling proxy server. Requires permission to access the [OpenTunnel](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action.
    func openTunnel(input: OpenTunnelInput) async throws -> OpenTunnelOutputResponse
    /// Revokes the current client access token (CAT) and returns new CAT for clients to use when reconnecting to secure tunneling to access the same tunnel. Requires permission to access the [RotateTunnelAccessToken](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions) action. Rotating the CAT doesn't extend the tunnel duration. For example, say the tunnel duration is 12 hours and the tunnel has already been open for 4 hours. When you rotate the access tokens, the new tokens that are generated can only be used for the remaining 8 hours.
    func rotateTunnelAccessToken(input: RotateTunnelAccessTokenInput) async throws -> RotateTunnelAccessTokenOutputResponse
    /// A resource tag.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
}

public protocol IoTSecureTunnelingClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IoTSecureTunnelingClientTypes {}

package software.amazon.smithy.aws.swift.codegen.restjson

import software.amazon.smithy.aws.swift.codegen.AWSHttpProtocolCustomizations
import software.amazon.smithy.aws.swift.codegen.AWSHttpRequestJsonEncoder
import software.amazon.smithy.aws.swift.codegen.AWSHttpResponseJsonDecoder
import software.amazon.smithy.swift.codegen.integration.ClientProperty
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator

class AWSHttpProtocolRestJsonCustomizations : AWSHttpProtocolCustomizations() {

    override fun getClientProperties(ctx: ProtocolGenerator.GenerationContext): List<ClientProperty> {
        val properties = mutableListOf<ClientProperty>()
        val requestEncoderOptions = mutableMapOf<String, String>()
        val responseDecoderOptions = mutableMapOf<String, String>()
        // TODO:: Subject to change if Foundation dependency is removed
        requestEncoderOptions["dateEncodingStrategy"] = ".secondsSince1970"
        responseDecoderOptions["dateDecodingStrategy"] = ".secondsSince1970"
        properties.add(AWSHttpRequestJsonEncoder(requestEncoderOptions))
        properties.add(AWSHttpResponseJsonDecoder(responseDecoderOptions))
        return properties
    }
}

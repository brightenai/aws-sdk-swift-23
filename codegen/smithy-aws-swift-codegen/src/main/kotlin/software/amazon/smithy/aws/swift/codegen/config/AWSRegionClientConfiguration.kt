/*
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

package software.amazon.smithy.aws.swift.codegen.config

import software.amazon.smithy.aws.swift.codegen.AWSSwiftDependency
import software.amazon.smithy.codegen.core.Symbol
import software.amazon.smithy.swift.codegen.SwiftTypes
import software.amazon.smithy.swift.codegen.config.ClientConfiguration
import software.amazon.smithy.swift.codegen.config.ClientConfiguration.Companion.runtimeSymbol
import software.amazon.smithy.swift.codegen.config.ConfigProperty
import software.amazon.smithy.swift.codegen.integration.ProtocolGenerator
import software.amazon.smithy.swift.codegen.model.toOptional

class AWSRegionClientConfiguration : ClientConfiguration {
    override val swiftProtocolName: Symbol
        get() = runtimeSymbol("AWSRegionClientConfiguration", AWSSwiftDependency.AWS_CLIENT_RUNTIME)

    override fun getProperties(ctx: ProtocolGenerator.GenerationContext): Set<ConfigProperty> = setOf(
        ConfigProperty(
            "region",
            SwiftTypes.String.toOptional(),
            "AWSClientConfigDefaultsProvider.region(region)",
            true,
            true
        ),
        ConfigProperty(
            "signingRegion",
            SwiftTypes.String.toOptional(),
            "AWSClientConfigDefaultsProvider.region(region)",
            true,
            true
        )
    )
}

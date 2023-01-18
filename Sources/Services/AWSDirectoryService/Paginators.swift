// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeClientAuthenticationSettingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeClientAuthenticationSettingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeClientAuthenticationSettingsOutputResponse`
extension DirectoryClient {
    public func describeClientAuthenticationSettingsPaginated(input: DescribeClientAuthenticationSettingsInput) -> ClientRuntime.PaginatorSequence<DescribeClientAuthenticationSettingsInput, DescribeClientAuthenticationSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeClientAuthenticationSettingsInput, DescribeClientAuthenticationSettingsOutputResponse>(input: input, inputKey: \DescribeClientAuthenticationSettingsInput.nextToken, outputKey: \DescribeClientAuthenticationSettingsOutputResponse.nextToken, paginationFunction: self.describeClientAuthenticationSettings(input:))
    }
}

extension DescribeClientAuthenticationSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeClientAuthenticationSettingsInput {
        return DescribeClientAuthenticationSettingsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            type: self.type
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeClientAuthenticationSettingsPaginated`
/// to access the nested member `[DirectoryClientTypes.ClientAuthenticationSettingInfo]`
/// - Returns: `[DirectoryClientTypes.ClientAuthenticationSettingInfo]`
extension PaginatorSequence where Input == DescribeClientAuthenticationSettingsInput, Output == DescribeClientAuthenticationSettingsOutputResponse {
    public func clientAuthenticationSettingsInfo() async throws -> [DirectoryClientTypes.ClientAuthenticationSettingInfo] {
        return try await self.asyncCompactMap { item in item.clientAuthenticationSettingsInfo }
    }
}

/// Paginate over `[DescribeDirectoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeDirectoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeDirectoriesOutputResponse`
extension DirectoryClient {
    public func describeDirectoriesPaginated(input: DescribeDirectoriesInput) -> ClientRuntime.PaginatorSequence<DescribeDirectoriesInput, DescribeDirectoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeDirectoriesInput, DescribeDirectoriesOutputResponse>(input: input, inputKey: \DescribeDirectoriesInput.nextToken, outputKey: \DescribeDirectoriesOutputResponse.nextToken, paginationFunction: self.describeDirectories(input:))
    }
}

extension DescribeDirectoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDirectoriesInput {
        return DescribeDirectoriesInput(
            directoryIds: self.directoryIds,
            limit: self.limit,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeDirectoriesPaginated`
/// to access the nested member `[DirectoryClientTypes.DirectoryDescription]`
/// - Returns: `[DirectoryClientTypes.DirectoryDescription]`
extension PaginatorSequence where Input == DescribeDirectoriesInput, Output == DescribeDirectoriesOutputResponse {
    public func directoryDescriptions() async throws -> [DirectoryClientTypes.DirectoryDescription] {
        return try await self.asyncCompactMap { item in item.directoryDescriptions }
    }
}

/// Paginate over `[DescribeDomainControllersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeDomainControllersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeDomainControllersOutputResponse`
extension DirectoryClient {
    public func describeDomainControllersPaginated(input: DescribeDomainControllersInput) -> ClientRuntime.PaginatorSequence<DescribeDomainControllersInput, DescribeDomainControllersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeDomainControllersInput, DescribeDomainControllersOutputResponse>(input: input, inputKey: \DescribeDomainControllersInput.nextToken, outputKey: \DescribeDomainControllersOutputResponse.nextToken, paginationFunction: self.describeDomainControllers(input:))
    }
}

extension DescribeDomainControllersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDomainControllersInput {
        return DescribeDomainControllersInput(
            directoryId: self.directoryId,
            domainControllerIds: self.domainControllerIds,
            limit: self.limit,
            nextToken: token
        )}
}

/// Paginate over `[DescribeLDAPSSettingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeLDAPSSettingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeLDAPSSettingsOutputResponse`
extension DirectoryClient {
    public func describeLDAPSSettingsPaginated(input: DescribeLDAPSSettingsInput) -> ClientRuntime.PaginatorSequence<DescribeLDAPSSettingsInput, DescribeLDAPSSettingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeLDAPSSettingsInput, DescribeLDAPSSettingsOutputResponse>(input: input, inputKey: \DescribeLDAPSSettingsInput.nextToken, outputKey: \DescribeLDAPSSettingsOutputResponse.nextToken, paginationFunction: self.describeLDAPSSettings(input:))
    }
}

extension DescribeLDAPSSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeLDAPSSettingsInput {
        return DescribeLDAPSSettingsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            type: self.type
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeLDAPSSettingsPaginated`
/// to access the nested member `[DirectoryClientTypes.LDAPSSettingInfo]`
/// - Returns: `[DirectoryClientTypes.LDAPSSettingInfo]`
extension PaginatorSequence where Input == DescribeLDAPSSettingsInput, Output == DescribeLDAPSSettingsOutputResponse {
    public func ldapsSettingsInfo() async throws -> [DirectoryClientTypes.LDAPSSettingInfo] {
        return try await self.asyncCompactMap { item in item.ldapsSettingsInfo }
    }
}

/// Paginate over `[DescribeRegionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeRegionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeRegionsOutputResponse`
extension DirectoryClient {
    public func describeRegionsPaginated(input: DescribeRegionsInput) -> ClientRuntime.PaginatorSequence<DescribeRegionsInput, DescribeRegionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeRegionsInput, DescribeRegionsOutputResponse>(input: input, inputKey: \DescribeRegionsInput.nextToken, outputKey: \DescribeRegionsOutputResponse.nextToken, paginationFunction: self.describeRegions(input:))
    }
}

extension DescribeRegionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRegionsInput {
        return DescribeRegionsInput(
            directoryId: self.directoryId,
            nextToken: token,
            regionName: self.regionName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeRegionsPaginated`
/// to access the nested member `[DirectoryClientTypes.RegionDescription]`
/// - Returns: `[DirectoryClientTypes.RegionDescription]`
extension PaginatorSequence where Input == DescribeRegionsInput, Output == DescribeRegionsOutputResponse {
    public func regionsDescription() async throws -> [DirectoryClientTypes.RegionDescription] {
        return try await self.asyncCompactMap { item in item.regionsDescription }
    }
}

/// Paginate over `[DescribeSharedDirectoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeSharedDirectoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeSharedDirectoriesOutputResponse`
extension DirectoryClient {
    public func describeSharedDirectoriesPaginated(input: DescribeSharedDirectoriesInput) -> ClientRuntime.PaginatorSequence<DescribeSharedDirectoriesInput, DescribeSharedDirectoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSharedDirectoriesInput, DescribeSharedDirectoriesOutputResponse>(input: input, inputKey: \DescribeSharedDirectoriesInput.nextToken, outputKey: \DescribeSharedDirectoriesOutputResponse.nextToken, paginationFunction: self.describeSharedDirectories(input:))
    }
}

extension DescribeSharedDirectoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSharedDirectoriesInput {
        return DescribeSharedDirectoriesInput(
            limit: self.limit,
            nextToken: token,
            ownerDirectoryId: self.ownerDirectoryId,
            sharedDirectoryIds: self.sharedDirectoryIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeSharedDirectoriesPaginated`
/// to access the nested member `[DirectoryClientTypes.SharedDirectory]`
/// - Returns: `[DirectoryClientTypes.SharedDirectory]`
extension PaginatorSequence where Input == DescribeSharedDirectoriesInput, Output == DescribeSharedDirectoriesOutputResponse {
    public func sharedDirectories() async throws -> [DirectoryClientTypes.SharedDirectory] {
        return try await self.asyncCompactMap { item in item.sharedDirectories }
    }
}

/// Paginate over `[DescribeSnapshotsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeSnapshotsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeSnapshotsOutputResponse`
extension DirectoryClient {
    public func describeSnapshotsPaginated(input: DescribeSnapshotsInput) -> ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse>(input: input, inputKey: \DescribeSnapshotsInput.nextToken, outputKey: \DescribeSnapshotsOutputResponse.nextToken, paginationFunction: self.describeSnapshots(input:))
    }
}

extension DescribeSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSnapshotsInput {
        return DescribeSnapshotsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            snapshotIds: self.snapshotIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeSnapshotsPaginated`
/// to access the nested member `[DirectoryClientTypes.Snapshot]`
/// - Returns: `[DirectoryClientTypes.Snapshot]`
extension PaginatorSequence where Input == DescribeSnapshotsInput, Output == DescribeSnapshotsOutputResponse {
    public func snapshots() async throws -> [DirectoryClientTypes.Snapshot] {
        return try await self.asyncCompactMap { item in item.snapshots }
    }
}

/// Paginate over `[DescribeTrustsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeTrustsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeTrustsOutputResponse`
extension DirectoryClient {
    public func describeTrustsPaginated(input: DescribeTrustsInput) -> ClientRuntime.PaginatorSequence<DescribeTrustsInput, DescribeTrustsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeTrustsInput, DescribeTrustsOutputResponse>(input: input, inputKey: \DescribeTrustsInput.nextToken, outputKey: \DescribeTrustsOutputResponse.nextToken, paginationFunction: self.describeTrusts(input:))
    }
}

extension DescribeTrustsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTrustsInput {
        return DescribeTrustsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            trustIds: self.trustIds
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeTrustsPaginated`
/// to access the nested member `[DirectoryClientTypes.Trust]`
/// - Returns: `[DirectoryClientTypes.Trust]`
extension PaginatorSequence where Input == DescribeTrustsInput, Output == DescribeTrustsOutputResponse {
    public func trusts() async throws -> [DirectoryClientTypes.Trust] {
        return try await self.asyncCompactMap { item in item.trusts }
    }
}

/// Paginate over `[DescribeUpdateDirectoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeUpdateDirectoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeUpdateDirectoryOutputResponse`
extension DirectoryClient {
    public func describeUpdateDirectoryPaginated(input: DescribeUpdateDirectoryInput) -> ClientRuntime.PaginatorSequence<DescribeUpdateDirectoryInput, DescribeUpdateDirectoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeUpdateDirectoryInput, DescribeUpdateDirectoryOutputResponse>(input: input, inputKey: \DescribeUpdateDirectoryInput.nextToken, outputKey: \DescribeUpdateDirectoryOutputResponse.nextToken, paginationFunction: self.describeUpdateDirectory(input:))
    }
}

extension DescribeUpdateDirectoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUpdateDirectoryInput {
        return DescribeUpdateDirectoryInput(
            directoryId: self.directoryId,
            nextToken: token,
            regionName: self.regionName,
            updateType: self.updateType
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeUpdateDirectoryPaginated`
/// to access the nested member `[DirectoryClientTypes.UpdateInfoEntry]`
/// - Returns: `[DirectoryClientTypes.UpdateInfoEntry]`
extension PaginatorSequence where Input == DescribeUpdateDirectoryInput, Output == DescribeUpdateDirectoryOutputResponse {
    public func updateActivities() async throws -> [DirectoryClientTypes.UpdateInfoEntry] {
        return try await self.asyncCompactMap { item in item.updateActivities }
    }
}

/// Paginate over `[ListCertificatesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCertificatesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCertificatesOutputResponse`
extension DirectoryClient {
    public func listCertificatesPaginated(input: ListCertificatesInput) -> ClientRuntime.PaginatorSequence<ListCertificatesInput, ListCertificatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCertificatesInput, ListCertificatesOutputResponse>(input: input, inputKey: \ListCertificatesInput.nextToken, outputKey: \ListCertificatesOutputResponse.nextToken, paginationFunction: self.listCertificates(input:))
    }
}

extension ListCertificatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCertificatesInput {
        return ListCertificatesInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCertificatesPaginated`
/// to access the nested member `[DirectoryClientTypes.CertificateInfo]`
/// - Returns: `[DirectoryClientTypes.CertificateInfo]`
extension PaginatorSequence where Input == ListCertificatesInput, Output == ListCertificatesOutputResponse {
    public func certificatesInfo() async throws -> [DirectoryClientTypes.CertificateInfo] {
        return try await self.asyncCompactMap { item in item.certificatesInfo }
    }
}

/// Paginate over `[ListIpRoutesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListIpRoutesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListIpRoutesOutputResponse`
extension DirectoryClient {
    public func listIpRoutesPaginated(input: ListIpRoutesInput) -> ClientRuntime.PaginatorSequence<ListIpRoutesInput, ListIpRoutesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListIpRoutesInput, ListIpRoutesOutputResponse>(input: input, inputKey: \ListIpRoutesInput.nextToken, outputKey: \ListIpRoutesOutputResponse.nextToken, paginationFunction: self.listIpRoutes(input:))
    }
}

extension ListIpRoutesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIpRoutesInput {
        return ListIpRoutesInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listIpRoutesPaginated`
/// to access the nested member `[DirectoryClientTypes.IpRouteInfo]`
/// - Returns: `[DirectoryClientTypes.IpRouteInfo]`
extension PaginatorSequence where Input == ListIpRoutesInput, Output == ListIpRoutesOutputResponse {
    public func ipRoutesInfo() async throws -> [DirectoryClientTypes.IpRouteInfo] {
        return try await self.asyncCompactMap { item in item.ipRoutesInfo }
    }
}

/// Paginate over `[ListLogSubscriptionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLogSubscriptionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLogSubscriptionsOutputResponse`
extension DirectoryClient {
    public func listLogSubscriptionsPaginated(input: ListLogSubscriptionsInput) -> ClientRuntime.PaginatorSequence<ListLogSubscriptionsInput, ListLogSubscriptionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLogSubscriptionsInput, ListLogSubscriptionsOutputResponse>(input: input, inputKey: \ListLogSubscriptionsInput.nextToken, outputKey: \ListLogSubscriptionsOutputResponse.nextToken, paginationFunction: self.listLogSubscriptions(input:))
    }
}

extension ListLogSubscriptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLogSubscriptionsInput {
        return ListLogSubscriptionsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listLogSubscriptionsPaginated`
/// to access the nested member `[DirectoryClientTypes.LogSubscription]`
/// - Returns: `[DirectoryClientTypes.LogSubscription]`
extension PaginatorSequence where Input == ListLogSubscriptionsInput, Output == ListLogSubscriptionsOutputResponse {
    public func logSubscriptions() async throws -> [DirectoryClientTypes.LogSubscription] {
        return try await self.asyncCompactMap { item in item.logSubscriptions }
    }
}

/// Paginate over `[ListSchemaExtensionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSchemaExtensionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSchemaExtensionsOutputResponse`
extension DirectoryClient {
    public func listSchemaExtensionsPaginated(input: ListSchemaExtensionsInput) -> ClientRuntime.PaginatorSequence<ListSchemaExtensionsInput, ListSchemaExtensionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchemaExtensionsInput, ListSchemaExtensionsOutputResponse>(input: input, inputKey: \ListSchemaExtensionsInput.nextToken, outputKey: \ListSchemaExtensionsOutputResponse.nextToken, paginationFunction: self.listSchemaExtensions(input:))
    }
}

extension ListSchemaExtensionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemaExtensionsInput {
        return ListSchemaExtensionsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSchemaExtensionsPaginated`
/// to access the nested member `[DirectoryClientTypes.SchemaExtensionInfo]`
/// - Returns: `[DirectoryClientTypes.SchemaExtensionInfo]`
extension PaginatorSequence where Input == ListSchemaExtensionsInput, Output == ListSchemaExtensionsOutputResponse {
    public func schemaExtensionsInfo() async throws -> [DirectoryClientTypes.SchemaExtensionInfo] {
        return try await self.asyncCompactMap { item in item.schemaExtensionsInfo }
    }
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension DirectoryClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            limit: self.limit,
            nextToken: token,
            resourceId: self.resourceId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
/// to access the nested member `[DirectoryClientTypes.Tag]`
/// - Returns: `[DirectoryClientTypes.Tag]`
extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    public func tags() async throws -> [DirectoryClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
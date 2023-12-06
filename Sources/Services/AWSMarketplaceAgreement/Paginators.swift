// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MarketplaceAgreementClient {
    /// Paginate over `[GetAgreementTermsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetAgreementTermsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetAgreementTermsOutput`
    public func getAgreementTermsPaginated(input: GetAgreementTermsInput) -> ClientRuntime.PaginatorSequence<GetAgreementTermsInput, GetAgreementTermsOutput> {
        return ClientRuntime.PaginatorSequence<GetAgreementTermsInput, GetAgreementTermsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.getAgreementTerms(input:))
    }
}

extension GetAgreementTermsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetAgreementTermsInput {
        return GetAgreementTermsInput(
            agreementId: self.agreementId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension MarketplaceAgreementClient {
    /// Paginate over `[SearchAgreementsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchAgreementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchAgreementsOutput`
    public func searchAgreementsPaginated(input: SearchAgreementsInput) -> ClientRuntime.PaginatorSequence<SearchAgreementsInput, SearchAgreementsOutput> {
        return ClientRuntime.PaginatorSequence<SearchAgreementsInput, SearchAgreementsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.searchAgreements(input:))
    }
}

extension SearchAgreementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchAgreementsInput {
        return SearchAgreementsInput(
            catalog: self.catalog,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}
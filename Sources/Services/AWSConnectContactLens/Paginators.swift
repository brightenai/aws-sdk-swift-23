// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListRealtimeContactAnalysisSegmentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRealtimeContactAnalysisSegmentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRealtimeContactAnalysisSegmentsOutputResponse`
extension ConnectContactLensClient {
    public func listRealtimeContactAnalysisSegmentsPaginated(input: ListRealtimeContactAnalysisSegmentsInput) -> ClientRuntime.PaginatorSequence<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRealtimeContactAnalysisSegmentsInput, ListRealtimeContactAnalysisSegmentsOutputResponse>(input: input, inputKey: \ListRealtimeContactAnalysisSegmentsInput.nextToken, outputKey: \ListRealtimeContactAnalysisSegmentsOutputResponse.nextToken, paginationFunction: self.listRealtimeContactAnalysisSegments(input:))
    }
}

extension ListRealtimeContactAnalysisSegmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRealtimeContactAnalysisSegmentsInput {
        return ListRealtimeContactAnalysisSegmentsInput(
            contactId: self.contactId,
            instanceId: self.instanceId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
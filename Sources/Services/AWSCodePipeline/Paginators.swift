// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListActionExecutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListActionExecutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListActionExecutionsOutputResponse`
extension CodePipelineClient {
    public func listActionExecutionsPaginated(input: ListActionExecutionsInput) -> ClientRuntime.PaginatorSequence<ListActionExecutionsInput, ListActionExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListActionExecutionsInput, ListActionExecutionsOutputResponse>(input: input, inputKey: \ListActionExecutionsInput.nextToken, outputKey: \ListActionExecutionsOutputResponse.nextToken, paginationFunction: self.listActionExecutions(input:))
    }
}

extension ListActionExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActionExecutionsInput {
        return ListActionExecutionsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )}
}

/// Paginate over `[ListActionTypesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListActionTypesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListActionTypesOutputResponse`
extension CodePipelineClient {
    public func listActionTypesPaginated(input: ListActionTypesInput) -> ClientRuntime.PaginatorSequence<ListActionTypesInput, ListActionTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListActionTypesInput, ListActionTypesOutputResponse>(input: input, inputKey: \ListActionTypesInput.nextToken, outputKey: \ListActionTypesOutputResponse.nextToken, paginationFunction: self.listActionTypes(input:))
    }
}

extension ListActionTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListActionTypesInput {
        return ListActionTypesInput(
            actionOwnerFilter: self.actionOwnerFilter,
            nextToken: token,
            regionFilter: self.regionFilter
        )}
}

/// Paginate over `[ListPipelineExecutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPipelineExecutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPipelineExecutionsOutputResponse`
extension CodePipelineClient {
    public func listPipelineExecutionsPaginated(input: ListPipelineExecutionsInput) -> ClientRuntime.PaginatorSequence<ListPipelineExecutionsInput, ListPipelineExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPipelineExecutionsInput, ListPipelineExecutionsOutputResponse>(input: input, inputKey: \ListPipelineExecutionsInput.nextToken, outputKey: \ListPipelineExecutionsOutputResponse.nextToken, paginationFunction: self.listPipelineExecutions(input:))
    }
}

extension ListPipelineExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelineExecutionsInput {
        return ListPipelineExecutionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            pipelineName: self.pipelineName
        )}
}

/// Paginate over `[ListPipelinesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPipelinesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPipelinesOutputResponse`
extension CodePipelineClient {
    public func listPipelinesPaginated(input: ListPipelinesInput) -> ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPipelinesInput, ListPipelinesOutputResponse>(input: input, inputKey: \ListPipelinesInput.nextToken, outputKey: \ListPipelinesOutputResponse.nextToken, paginationFunction: self.listPipelines(input:))
    }
}

extension ListPipelinesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPipelinesInput {
        return ListPipelinesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTagsForResourceOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTagsForResourceInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
extension CodePipelineClient {
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

/// Paginate over `[ListWebhooksOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListWebhooksInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListWebhooksOutputResponse`
extension CodePipelineClient {
    public func listWebhooksPaginated(input: ListWebhooksInput) -> ClientRuntime.PaginatorSequence<ListWebhooksInput, ListWebhooksOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWebhooksInput, ListWebhooksOutputResponse>(input: input, inputKey: \ListWebhooksInput.nextToken, outputKey: \ListWebhooksOutputResponse.nextToken, paginationFunction: self.listWebhooks(input:))
    }
}

extension ListWebhooksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebhooksInput {
        return ListWebhooksInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
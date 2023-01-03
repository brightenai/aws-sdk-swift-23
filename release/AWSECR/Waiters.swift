// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ECRClientProtocol {

    static func imageScanCompleteWaiterConfig() throws -> WaiterConfiguration<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeImageScanFindingsInput, result: Result<DescribeImageScanFindingsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "imageScanStatus.status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "COMPLETE"
                guard case .success(let output) = result else { return false }
                let imageScanStatus = output.imageScanStatus
                let status = imageScanStatus?.status
                return JMESUtils.compare(status, ==, "COMPLETE")
            }),
            .init(state: .failure, matcher: { (input: DescribeImageScanFindingsInput, result: Result<DescribeImageScanFindingsOutputResponse, Error>) -> Bool in
                // JMESPath expression: "imageScanStatus.status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "FAILED"
                guard case .success(let output) = result else { return false }
                let imageScanStatus = output.imageScanStatus
                let status = imageScanStatus?.status
                return JMESUtils.compare(status, ==, "FAILED")
            }),
        ]
        return try WaiterConfiguration<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ImageScanComplete event on the describeImageScanFindings operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeImageScanFindingsInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilImageScanComplete(options: WaiterOptions, input: DescribeImageScanFindingsInput) async throws -> WaiterOutcome<DescribeImageScanFindingsOutputResponse> {
        let waiter = Waiter(config: try Self.imageScanCompleteWaiterConfig(), operation: self.describeImageScanFindings(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func lifecyclePolicyPreviewCompleteWaiterConfig() throws -> WaiterConfiguration<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutputResponse> {
        let acceptors: [WaiterConfiguration<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetLifecyclePolicyPreviewInput, result: Result<GetLifecyclePolicyPreviewOutputResponse, Error>) -> Bool in
                // JMESPath expression: "status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "COMPLETE"
                guard case .success(let output) = result else { return false }
                let status = output.status
                return JMESUtils.compare(status, ==, "COMPLETE")
            }),
            .init(state: .failure, matcher: { (input: GetLifecyclePolicyPreviewInput, result: Result<GetLifecyclePolicyPreviewOutputResponse, Error>) -> Bool in
                // JMESPath expression: "status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "FAILED"
                guard case .success(let output) = result else { return false }
                let status = output.status
                return JMESUtils.compare(status, ==, "FAILED")
            }),
        ]
        return try WaiterConfiguration<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the LifecyclePolicyPreviewComplete event on the getLifecyclePolicyPreview operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetLifecyclePolicyPreviewInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilLifecyclePolicyPreviewComplete(options: WaiterOptions, input: GetLifecyclePolicyPreviewInput) async throws -> WaiterOutcome<GetLifecyclePolicyPreviewOutputResponse> {
        let waiter = Waiter(config: try Self.lifecyclePolicyPreviewCompleteWaiterConfig(), operation: self.getLifecyclePolicyPreview(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
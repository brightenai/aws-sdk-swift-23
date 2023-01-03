// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension Route53RecoveryControlConfigClientProtocol {

    static func clusterCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Cluster.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DEPLOYED"
                guard case .success(let output) = result else { return false }
                let cluster = output.cluster
                let status = cluster?.status
                return JMESUtils.compare(status, ==, "DEPLOYED")
            }),
            .init(state: .retry, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Cluster.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING"
                guard case .success(let output) = result else { return false }
                let cluster = output.cluster
                let status = cluster?.status
                return JMESUtils.compare(status, ==, "PENDING")
            }),
            .init(state: .retry, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ClusterCreated event on the describeCluster operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeClusterInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilClusterCreated(options: WaiterOptions, input: DescribeClusterInput) async throws -> WaiterOutcome<DescribeClusterOutputResponse> {
        let waiter = Waiter(config: try Self.clusterCreatedWaiterConfig(), operation: self.describeCluster(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func clusterDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "ResourceNotFoundException"
            }),
            .init(state: .retry, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                // JMESPath expression: "Cluster.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING_DELETION"
                guard case .success(let output) = result else { return false }
                let cluster = output.cluster
                let status = cluster?.status
                return JMESUtils.compare(status, ==, "PENDING_DELETION")
            }),
            .init(state: .retry, matcher: { (input: DescribeClusterInput, result: Result<DescribeClusterOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeClusterInput, DescribeClusterOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ClusterDeleted event on the describeCluster operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeClusterInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilClusterDeleted(options: WaiterOptions, input: DescribeClusterInput) async throws -> WaiterOutcome<DescribeClusterOutputResponse> {
        let waiter = Waiter(config: try Self.clusterDeletedWaiterConfig(), operation: self.describeCluster(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func controlPanelCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "ControlPanel.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DEPLOYED"
                guard case .success(let output) = result else { return false }
                let controlPanel = output.controlPanel
                let status = controlPanel?.status
                return JMESUtils.compare(status, ==, "DEPLOYED")
            }),
            .init(state: .retry, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "ControlPanel.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING"
                guard case .success(let output) = result else { return false }
                let controlPanel = output.controlPanel
                let status = controlPanel?.status
                return JMESUtils.compare(status, ==, "PENDING")
            }),
            .init(state: .retry, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ControlPanelCreated event on the describeControlPanel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeControlPanelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilControlPanelCreated(options: WaiterOptions, input: DescribeControlPanelInput) async throws -> WaiterOutcome<DescribeControlPanelOutputResponse> {
        let waiter = Waiter(config: try Self.controlPanelCreatedWaiterConfig(), operation: self.describeControlPanel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func controlPanelDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "ResourceNotFoundException"
            }),
            .init(state: .retry, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "ControlPanel.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING_DELETION"
                guard case .success(let output) = result else { return false }
                let controlPanel = output.controlPanel
                let status = controlPanel?.status
                return JMESUtils.compare(status, ==, "PENDING_DELETION")
            }),
            .init(state: .retry, matcher: { (input: DescribeControlPanelInput, result: Result<DescribeControlPanelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeControlPanelInput, DescribeControlPanelOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ControlPanelDeleted event on the describeControlPanel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeControlPanelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilControlPanelDeleted(options: WaiterOptions, input: DescribeControlPanelInput) async throws -> WaiterOutcome<DescribeControlPanelOutputResponse> {
        let waiter = Waiter(config: try Self.controlPanelDeletedWaiterConfig(), operation: self.describeControlPanel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func routingControlCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                // JMESPath expression: "RoutingControl.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DEPLOYED"
                guard case .success(let output) = result else { return false }
                let routingControl = output.routingControl
                let status = routingControl?.status
                return JMESUtils.compare(status, ==, "DEPLOYED")
            }),
            .init(state: .retry, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                // JMESPath expression: "RoutingControl.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING"
                guard case .success(let output) = result else { return false }
                let routingControl = output.routingControl
                let status = routingControl?.status
                return JMESUtils.compare(status, ==, "PENDING")
            }),
            .init(state: .retry, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the RoutingControlCreated event on the describeRoutingControl operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeRoutingControlInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilRoutingControlCreated(options: WaiterOptions, input: DescribeRoutingControlInput) async throws -> WaiterOutcome<DescribeRoutingControlOutputResponse> {
        let waiter = Waiter(config: try Self.routingControlCreatedWaiterConfig(), operation: self.describeRoutingControl(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func routingControlDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "ResourceNotFoundException"
            }),
            .init(state: .retry, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                // JMESPath expression: "RoutingControl.Status"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "PENDING_DELETION"
                guard case .success(let output) = result else { return false }
                let routingControl = output.routingControl
                let status = routingControl?.status
                return JMESUtils.compare(status, ==, "PENDING_DELETION")
            }),
            .init(state: .retry, matcher: { (input: DescribeRoutingControlInput, result: Result<DescribeRoutingControlOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerException"
            }),
        ]
        return try WaiterConfiguration<DescribeRoutingControlInput, DescribeRoutingControlOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the RoutingControlDeleted event on the describeRoutingControl operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeRoutingControlInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilRoutingControlDeleted(options: WaiterOptions, input: DescribeRoutingControlInput) async throws -> WaiterOutcome<DescribeRoutingControlOutputResponse> {
        let waiter = Waiter(config: try Self.routingControlDeletedWaiterConfig(), operation: self.describeRoutingControl(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
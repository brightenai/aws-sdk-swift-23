// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// AWS Auto Scaling Use AWS Auto Scaling to create scaling plans for your applications to automatically scale your scalable AWS resources. API Summary You can use the AWS Auto Scaling service API to accomplish the following tasks:
///
/// * Create and manage scaling plans
///
/// * Define target tracking scaling policies to dynamically scale your resources based on utilization
///
/// * Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic scaling to scale your Amazon EC2 capacity faster
///
/// * Set minimum and maximum capacity limits
///
/// * Retrieve information on existing scaling plans
///
/// * Access current forecast data and historical forecast data for up to 56 days previous
///
///
/// To learn more about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the [AWS Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
public protocol AutoScalingPlansClientProtocol {
    /// Creates a scaling plan.
    func createScalingPlan(input: CreateScalingPlanInput) async throws -> CreateScalingPlanOutputResponse
    /// Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying [ScalingInstruction] for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    func deleteScalingPlan(input: DeleteScalingPlanInput) async throws -> DeleteScalingPlanOutputResponse
    /// Describes the scalable resources in the specified scaling plan.
    func describeScalingPlanResources(input: DescribeScalingPlanResourcesInput) async throws -> DescribeScalingPlanResourcesOutputResponse
    /// Describes one or more of your scaling plans.
    func describeScalingPlans(input: DescribeScalingPlansInput) async throws -> DescribeScalingPlansOutputResponse
    /// Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
    func getScalingPlanResourceForecastData(input: GetScalingPlanResourceForecastDataInput) async throws -> GetScalingPlanResourceForecastDataOutputResponse
    /// Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    func updateScalingPlan(input: UpdateScalingPlanInput) async throws -> UpdateScalingPlanOutputResponse
}

public protocol AutoScalingPlansClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum AutoScalingPlansClientTypes {}
// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Amazon Security Lake is in preview release. Your use of the Security Lake preview is subject to Section 2 of the [Amazon Web Services Service Terms](http://aws.amazon.com/service-terms/)("Betas and Previews"). Amazon Security Lake is a fully managed security data lake service. You can use Security Lake to automatically centralize security data from cloud, on-premises, and custom sources into a data lake that's stored in your Amazon Web Servicesaccount. Amazon Web Services Organizations is an account management service that lets you consolidate multiple Amazon Web Services accounts into an organization that you create and centrally manage. With Organizations, you can create member accounts and invite existing accounts to join your organization. Security Lake helps you analyze security data for a more complete understanding of your security posture across the entire organization. It can also help you improve the protection of your workloads, applications, and data. The data lake is backed by Amazon Simple Storage Service (Amazon S3) buckets, and you retain ownership over your data. Amazon Security Lake integrates with CloudTrail, a service that provides a record of actions taken by a user, role, or an Amazon Web Services service in Security Lake CloudTrail captures API calls for Security Lake as events. The calls captured include calls from the Security Lake console and code calls to the Security Lake API operations. If you create a trail, you can enable continuous delivery of CloudTrail events to an Amazon S3 bucket, including events for Security Lake. If you don't configure a trail, you can still view the most recent events in the CloudTrail console in Event history. Using the information collected by CloudTrail you can determine the request that was made to Security Lake, the IP address from which the request was made, who made the request, when it was made, and additional details. To learn more about Security Lake information in CloudTrail, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/securitylake-cloudtrail.html). Security Lake automates the collection of security-related log and event data from integrated Amazon Web Services and third-party services. It also helps you manage the lifecycle of data with customizable retention and replication settings. Security Lake converts ingested data into Apache Parquet format and a standard open-source schema called the Open Cybersecurity Schema Framework (OCSF). Other Amazon Web Services and third-party services can subscribe to the data that's stored in Security Lake for incident response and security data analytics.
public protocol SecurityLakeClientProtocol {
    /// Adds a natively supported Amazon Web Service as an Amazon Security Lake source. Enables source types for member accounts in required Amazon Web Services Regions, based on the parameters you specify. You can choose any source type in any Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API. By default, a dimension refers to the entire set. When you don't provide a dimension, Security Lake assumes that the missing dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API enables all Security Lake member accounts for all sources. Similarly, when you do not specify Regions, Security Lake is enabled for all the Regions where Security Lake is available as a service. You can use this API only to enable natively supported Amazon Web Services as a source. Use CreateCustomLogSource to enable data collection from a custom source.
    func createAwsLogSource(input: CreateAwsLogSourceInput) async throws -> CreateAwsLogSourceOutputResponse
    /// Adds a third-party custom source in Amazon Security Lake, from the Amazon Web Services Region where you want to create a custom source. Security Lake can collect logs and events from third-party custom sources. After creating the appropriate IAM role to invoke Glue crawler, use this API to add a custom source name in Security Lake. This operation creates a partition in the Amazon S3 bucket for Security Lake as the target location for log files from the custom source in addition to an associated Glue table and an Glue crawler.
    func createCustomLogSource(input: CreateCustomLogSourceInput) async throws -> CreateCustomLogSourceOutputResponse
    /// Initializes an Amazon Security Lake instance with the provided (or default) configuration. You can enable Security Lake in Amazon Web Services Regions with customized settings before enabling log collection in Regions. You can either use the enableAll parameter to specify all Regions or specify the Regions where you want to enable Security Lake. To specify particular Regions, use the Regions parameter and then configure these Regions using the configurations parameter. If you have already enabled Security Lake in a Region when you call this command, the command will update the Region if you provide new configuration parameters. If you have not already enabled Security Lake in the Region when you call this API, it will set up the data lake in the Region with the specified configurations. When you enable Security Lake, it starts ingesting security data after the CreateAwsLogSource call. This includes ingesting security data from sources, storing data, and making data accessible to subscribers. Security Lake also enables all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. For more information, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html).
    func createDatalake(input: CreateDatalakeInput) async throws -> CreateDatalakeOutputResponse
    /// Automatically enables Amazon Security Lake for new member accounts in your organization. Security Lake is not automatically enabled for any existing member accounts in your organization.
    func createDatalakeAutoEnable(input: CreateDatalakeAutoEnableInput) async throws -> CreateDatalakeAutoEnableOutputResponse
    /// Designates the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    func createDatalakeDelegatedAdmin(input: CreateDatalakeDelegatedAdminInput) async throws -> CreateDatalakeDelegatedAdminOutputResponse
    /// Creates the specified notification subscription in Amazon Security Lake for the organization you specify.
    func createDatalakeExceptionsSubscription(input: CreateDatalakeExceptionsSubscriptionInput) async throws -> CreateDatalakeExceptionsSubscriptionOutputResponse
    /// Creates a subscription permission for accounts that are already enabled in Amazon Security Lake. You can create a subscriber with access to data in the current Amazon Web Services Region.
    func createSubscriber(input: CreateSubscriberInput) async throws -> CreateSubscriberOutputResponse
    /// Notifies the subscriber when new data is written to the data lake for the sources that the subscriber consumes in Security Lake. You can create only one subscriber notification per subscriber.
    func createSubscriptionNotificationConfiguration(input: CreateSubscriptionNotificationConfigurationInput) async throws -> CreateSubscriptionNotificationConfigurationOutputResponse
    /// Removes a natively supported Amazon Web Service as an Amazon Security Lake source. When you remove the source, Security Lake stops collecting data from that source, and subscribers can no longer consume new data from the source. Subscribers can still consume data that Security Lake collected from the source before disablement. You can choose any source type in any Amazon Web Services Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API. By default, a dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API disables all Security Lake member accounts for sources. Similarly, when you do not specify Regions, Security Lake is disabled for all the Regions where Security Lake is available as a service. When you don't provide a dimension, Security Lake assumes that the missing dimension refers to the entire set. For example, if you don't provide specific accounts, the API applies to the entire set of accounts in your organization.
    func deleteAwsLogSource(input: DeleteAwsLogSourceInput) async throws -> DeleteAwsLogSourceOutputResponse
    /// Removes a custom log source from Amazon Security Lake.
    func deleteCustomLogSource(input: DeleteCustomLogSourceInput) async throws -> DeleteCustomLogSourceOutputResponse
    /// When you delete Amazon Security Lake from your account, Security Lake is disabled in all Amazon Web Services Regions. Also, this API automatically takes steps to remove the account from Security Lake . This operation disables security data collection from sources, deletes data stored, and stops making data accessible to subscribers. Security Lake also deletes all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. The DeleteDatalake operation does not delete the Amazon S3 bucket, which is owned by your Amazon Web Services account. For more information, see the [Amazon Security Lake User Guide](https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html).
    func deleteDatalake(input: DeleteDatalakeInput) async throws -> DeleteDatalakeOutputResponse
    /// DeleteDatalakeAutoEnable removes automatic enablement of configuration settings for new member accounts (but keeps settings for the delegated administrator) from Amazon Security Lake. You must run this API using credentials of the delegated administrator. When you run this API, new member accounts that are added after the organization enables Security Lake won't contribute to the data lake.
    func deleteDatalakeAutoEnable(input: DeleteDatalakeAutoEnableInput) async throws -> DeleteDatalakeAutoEnableOutputResponse
    /// Deletes the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    func deleteDatalakeDelegatedAdmin(input: DeleteDatalakeDelegatedAdminInput) async throws -> DeleteDatalakeDelegatedAdminOutputResponse
    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    func deleteDatalakeExceptionsSubscription(input: DeleteDatalakeExceptionsSubscriptionInput) async throws -> DeleteDatalakeExceptionsSubscriptionOutputResponse
    /// Deletes the subscription permission for accounts that are already enabled in Amazon Security Lake. You can delete a subscriber and remove access to data in the current Amazon Web Services Region.
    func deleteSubscriber(input: DeleteSubscriberInput) async throws -> DeleteSubscriberOutputResponse
    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    func deleteSubscriptionNotificationConfiguration(input: DeleteSubscriptionNotificationConfigurationInput) async throws -> DeleteSubscriptionNotificationConfigurationOutputResponse
    /// Retrieves the Amazon Security Lake configuration object for the specified Amazon Web Services account ID. You can use the GetDatalake API to know whether Security Lake is enabled for the current Region. This API does not take input parameters.
    func getDatalake(input: GetDatalakeInput) async throws -> GetDatalakeOutputResponse
    /// Retrieves the configuration that will be automatically set up for accounts added to the organization after the organization has onboarded to Amazon Security Lake. This API does not take input parameters.
    func getDatalakeAutoEnable(input: GetDatalakeAutoEnableInput) async throws -> GetDatalakeAutoEnableOutputResponse
    /// Retrieves the expiration period and time-to-live (TTL) for which the exception message will remain. Exceptions are stored by default, for 2 weeks from when a record was created in Amazon Security Lake. This API does not take input parameters.
    func getDatalakeExceptionsExpiry(input: GetDatalakeExceptionsExpiryInput) async throws -> GetDatalakeExceptionsExpiryOutputResponse
    /// Retrieves the details of exception notifications for the account in Amazon Security Lake.
    func getDatalakeExceptionsSubscription(input: GetDatalakeExceptionsSubscriptionInput) async throws -> GetDatalakeExceptionsSubscriptionOutputResponse
    /// Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled for those accounts and which sources Security Lake is collecting data from.
    func getDatalakeStatus(input: GetDatalakeStatusInput) async throws -> GetDatalakeStatusOutputResponse
    /// Retrieves the subscription information for the specified subscription ID. You can get information about a specific subscriber.
    func getSubscriber(input: GetSubscriberInput) async throws -> GetSubscriberOutputResponse
    /// Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.
    func listDatalakeExceptions(input: ListDatalakeExceptionsInput) async throws -> ListDatalakeExceptionsOutputResponse
    /// Retrieves the log sources in the current Amazon Web Services Region.
    func listLogSources(input: ListLogSourcesInput) async throws -> ListLogSourcesOutputResponse
    /// List all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list of subscriptions associated with a specific organization or Amazon Web Services account.
    func listSubscribers(input: ListSubscribersInput) async throws -> ListSubscribersOutputResponse
    /// Specifies where to store your security data and for how long. You can add a rollup Region to consolidate data from multiple Amazon Web Services Regions.
    func updateDatalake(input: UpdateDatalakeInput) async throws -> UpdateDatalakeOutputResponse
    /// Update the expiration period for the exception message to your preferred time, and control the time-to-live (TTL) for the exception message to remain. Exceptions are stored by default for 2 weeks from when a record was created in Amazon Security Lake.
    func updateDatalakeExceptionsExpiry(input: UpdateDatalakeExceptionsExpiryInput) async throws -> UpdateDatalakeExceptionsExpiryOutputResponse
    /// Updates the specified notification subscription in Amazon Security Lake for the organization you specify.
    func updateDatalakeExceptionsSubscription(input: UpdateDatalakeExceptionsSubscriptionInput) async throws -> UpdateDatalakeExceptionsSubscriptionOutputResponse
    /// Updates an existing subscription for the given Amazon Security Lake account ID. You can update a subscriber by changing the sources that the subscriber consumes data from.
    func updateSubscriber(input: UpdateSubscriberInput) async throws -> UpdateSubscriberOutputResponse
    /// Updates an existing notification method for the subscription (SQS or HTTPs endpoint) or switches the notification subscription endpoint for a subscriber.
    func updateSubscriptionNotificationConfiguration(input: UpdateSubscriptionNotificationConfigurationInput) async throws -> UpdateSubscriptionNotificationConfigurationOutputResponse
}

public protocol SecurityLakeClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SecurityLakeClientTypes {}

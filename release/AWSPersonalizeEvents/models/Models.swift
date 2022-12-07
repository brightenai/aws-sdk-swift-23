// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension PersonalizeEventsClientTypes.Event: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventId
        case eventType
        case eventValue
        case impression
        case itemId
        case metricAttribution
        case properties
        case recommendationId
        case sentAt
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventId = self.eventId {
            try encodeContainer.encode(eventId, forKey: .eventId)
        }
        if let eventType = self.eventType {
            try encodeContainer.encode(eventType, forKey: .eventType)
        }
        if let eventValue = self.eventValue {
            try encodeContainer.encode(eventValue, forKey: .eventValue)
        }
        if let impression = impression {
            var impressionContainer = encodeContainer.nestedUnkeyedContainer(forKey: .impression)
            for impression0 in impression {
                try impressionContainer.encode(impression0)
            }
        }
        if let itemId = self.itemId {
            try encodeContainer.encode(itemId, forKey: .itemId)
        }
        if let metricAttribution = self.metricAttribution {
            try encodeContainer.encode(metricAttribution, forKey: .metricAttribution)
        }
        if let properties = self.properties {
            try encodeContainer.encode(properties, forKey: .properties)
        }
        if let recommendationId = self.recommendationId {
            try encodeContainer.encode(recommendationId, forKey: .recommendationId)
        }
        if let sentAt = self.sentAt {
            try encodeContainer.encodeTimestamp(sentAt, format: .epochSeconds, forKey: .sentAt)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventId)
        eventId = eventIdDecoded
        let eventTypeDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventType)
        eventType = eventTypeDecoded
        let eventValueDecoded = try containerValues.decodeIfPresent(Swift.Float.self, forKey: .eventValue)
        eventValue = eventValueDecoded
        let itemIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .itemId)
        itemId = itemIdDecoded
        let propertiesDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .properties)
        properties = propertiesDecoded
        let sentAtDecoded = try containerValues.decodeTimestampIfPresent(.epochSeconds, forKey: .sentAt)
        sentAt = sentAtDecoded
        let recommendationIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .recommendationId)
        recommendationId = recommendationIdDecoded
        let impressionContainer = try containerValues.decodeIfPresent([Swift.String?].self, forKey: .impression)
        var impressionDecoded0:[Swift.String]? = nil
        if let impressionContainer = impressionContainer {
            impressionDecoded0 = [Swift.String]()
            for string0 in impressionContainer {
                if let string0 = string0 {
                    impressionDecoded0?.append(string0)
                }
            }
        }
        impression = impressionDecoded0
        let metricAttributionDecoded = try containerValues.decodeIfPresent(PersonalizeEventsClientTypes.MetricAttribution.self, forKey: .metricAttribution)
        metricAttribution = metricAttributionDecoded
    }
}

extension PersonalizeEventsClientTypes.Event: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "CONTENT_REDACTED"
    }
}

extension PersonalizeEventsClientTypes {
    /// Represents user interaction event information sent using the PutEvents API.
    public struct Event: Swift.Equatable {
        /// An ID associated with the event. If an event ID is not provided, Amazon Personalize generates a unique ID for the event. An event ID is not used as an input to the model. Amazon Personalize uses the event ID to distinquish unique events. Any subsequent events after the first with the same event ID are not used in model training.
        public var eventId: Swift.String?
        /// The type of event, such as click or download. This property corresponds to the EVENT_TYPE field of your Interactions schema and depends on the types of events you are tracking.
        /// This member is required.
        public var eventType: Swift.String?
        /// The event value that corresponds to the EVENT_VALUE field of the Interactions schema.
        public var eventValue: Swift.Float?
        /// A list of item IDs that represents the sequence of items you have shown the user. For example, ["itemId1", "itemId2", "itemId3"]. Provide a list of items to manually record impressions data for an event. For more information on recording impressions data, see [Recording impressions data](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data).
        public var impression: [Swift.String]?
        /// The item ID key that corresponds to the ITEM_ID field of the Interactions schema.
        public var itemId: Swift.String?
        /// Contains information about the metric attribution associated with an event. For more information about metric attributions, see [Measuring impact of recommendations](https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).
        public var metricAttribution: PersonalizeEventsClientTypes.MetricAttribution?
        /// A string map of event-specific data that you might choose to record. For example, if a user rates a movie on your site, other than movie ID (itemId) and rating (eventValue) , you might also send the number of movie ratings made by the user. Each item in the map consists of a key-value pair. For example, {"numberOfRatings": "12"} The keys use camel case names that match the fields in the Interactions schema. In the above example, the numberOfRatings would match the 'NUMBER_OF_RATINGS' field defined in the Interactions schema.
        public var properties: Swift.String?
        /// The ID of the list of recommendations that contains the item the user interacted with. Provide a recommendationId to have Amazon Personalize implicitly record the recommendations you show your user as impressions data. Or provide a recommendationId if you use a metric attribution to measure the impact of recommendations. For more information on recording impressions data, see [Recording impressions data](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data). For more information on creating a metric attribution see [Measuring impact of recommendations](https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).
        public var recommendationId: Swift.String?
        /// The timestamp (in Unix time) on the client side when the event occurred.
        /// This member is required.
        public var sentAt: ClientRuntime.Date?

        public init (
            eventId: Swift.String? = nil,
            eventType: Swift.String? = nil,
            eventValue: Swift.Float? = nil,
            impression: [Swift.String]? = nil,
            itemId: Swift.String? = nil,
            metricAttribution: PersonalizeEventsClientTypes.MetricAttribution? = nil,
            properties: Swift.String? = nil,
            recommendationId: Swift.String? = nil,
            sentAt: ClientRuntime.Date? = nil
        )
        {
            self.eventId = eventId
            self.eventType = eventType
            self.eventValue = eventValue
            self.impression = impression
            self.itemId = itemId
            self.metricAttribution = metricAttribution
            self.properties = properties
            self.recommendationId = recommendationId
            self.sentAt = sentAt
        }
    }

}

extension InvalidInputException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: InvalidInputExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// Provide a valid value for the field or parameter.
public struct InvalidInputException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct InvalidInputExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidInputExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension PersonalizeEventsClientTypes.Item: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case itemId
        case properties
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let itemId = self.itemId {
            try encodeContainer.encode(itemId, forKey: .itemId)
        }
        if let properties = self.properties {
            try encodeContainer.encode(properties, forKey: .properties)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let itemIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .itemId)
        itemId = itemIdDecoded
        let propertiesDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .properties)
        properties = propertiesDecoded
    }
}

extension PersonalizeEventsClientTypes.Item: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "Item(itemId: \(Swift.String(describing: itemId)), properties: \"CONTENT_REDACTED\")"}
}

extension PersonalizeEventsClientTypes {
    /// Represents item metadata added to an Items dataset using the PutItems API. For more information see [Importing Items Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).
    public struct Item: Swift.Equatable {
        /// The ID associated with the item.
        /// This member is required.
        public var itemId: Swift.String?
        /// A string map of item-specific metadata. Each element in the map consists of a key-value pair. For example, {"numberOfRatings": "12"}. The keys use camel case names that match the fields in the schema for the Items dataset. In the previous example, the numberOfRatings matches the 'NUMBER_OF_RATINGS' field defined in the Items schema. For categorical string data, to include multiple categories for a single item, separate each category with a pipe separator (|). For example, \"Horror|Action\".
        public var properties: Swift.String?

        public init (
            itemId: Swift.String? = nil,
            properties: Swift.String? = nil
        )
        {
            self.itemId = itemId
            self.properties = properties
        }
    }

}

extension PersonalizeEventsClientTypes.MetricAttribution: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventAttributionSource
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventAttributionSource = self.eventAttributionSource {
            try encodeContainer.encode(eventAttributionSource, forKey: .eventAttributionSource)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eventAttributionSourceDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eventAttributionSource)
        eventAttributionSource = eventAttributionSourceDecoded
    }
}

extension PersonalizeEventsClientTypes {
    /// Contains information about a metric attribution associated with an event. For more information about metric attributions, see [Measuring impact of recommendations](https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).
    public struct MetricAttribution: Swift.Equatable {
        /// The source of the event, such as a third party.
        /// This member is required.
        public var eventAttributionSource: Swift.String?

        public init (
            eventAttributionSource: Swift.String? = nil
        )
        {
            self.eventAttributionSource = eventAttributionSource
        }
    }

}

extension PutEventsInput: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "PutEventsInput(eventList: \(Swift.String(describing: eventList)), sessionId: \(Swift.String(describing: sessionId)), trackingId: \(Swift.String(describing: trackingId)), userId: \"CONTENT_REDACTED\")"}
}

extension PutEventsInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventList
        case sessionId
        case trackingId
        case userId
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let eventList = eventList {
            var eventListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .eventList)
            for eventlist0 in eventList {
                try eventListContainer.encode(eventlist0)
            }
        }
        if let sessionId = self.sessionId {
            try encodeContainer.encode(sessionId, forKey: .sessionId)
        }
        if let trackingId = self.trackingId {
            try encodeContainer.encode(trackingId, forKey: .trackingId)
        }
        if let userId = self.userId {
            try encodeContainer.encode(userId, forKey: .userId)
        }
    }
}

extension PutEventsInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/events"
    }
}

public struct PutEventsInput: Swift.Equatable {
    /// A list of event data from the session.
    /// This member is required.
    public var eventList: [PersonalizeEventsClientTypes.Event]?
    /// The session ID associated with the user's visit. Your application generates the sessionId when a user first visits your website or uses your application. Amazon Personalize uses the sessionId to associate events with the user before they log in. For more information, see [Recording Events](https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html).
    /// This member is required.
    public var sessionId: Swift.String?
    /// The tracking ID for the event. The ID is generated by a call to the [CreateEventTracker](https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html) API.
    /// This member is required.
    public var trackingId: Swift.String?
    /// The user associated with the event.
    public var userId: Swift.String?

    public init (
        eventList: [PersonalizeEventsClientTypes.Event]? = nil,
        sessionId: Swift.String? = nil,
        trackingId: Swift.String? = nil,
        userId: Swift.String? = nil
    )
    {
        self.eventList = eventList
        self.sessionId = sessionId
        self.trackingId = trackingId
        self.userId = userId
    }
}

struct PutEventsInputBody: Swift.Equatable {
    let trackingId: Swift.String?
    let userId: Swift.String?
    let sessionId: Swift.String?
    let eventList: [PersonalizeEventsClientTypes.Event]?
}

extension PutEventsInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case eventList
        case sessionId
        case trackingId
        case userId
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trackingIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .trackingId)
        trackingId = trackingIdDecoded
        let userIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .userId)
        userId = userIdDecoded
        let sessionIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .sessionId)
        sessionId = sessionIdDecoded
        let eventListContainer = try containerValues.decodeIfPresent([PersonalizeEventsClientTypes.Event?].self, forKey: .eventList)
        var eventListDecoded0:[PersonalizeEventsClientTypes.Event]? = nil
        if let eventListContainer = eventListContainer {
            eventListDecoded0 = [PersonalizeEventsClientTypes.Event]()
            for structure0 in eventListContainer {
                if let structure0 = structure0 {
                    eventListDecoded0?.append(structure0)
                }
            }
        }
        eventList = eventListDecoded0
    }
}

extension PutEventsOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension PutEventsOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "InvalidInputException" : self = .invalidInputException(try InvalidInputException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum PutEventsOutputError: Swift.Error, Swift.Equatable {
    case invalidInputException(InvalidInputException)
    case unknown(UnknownAWSHttpServiceError)
}

extension PutEventsOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct PutEventsOutputResponse: Swift.Equatable {

    public init () { }
}

extension PutItemsInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case datasetArn
        case items
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let datasetArn = self.datasetArn {
            try encodeContainer.encode(datasetArn, forKey: .datasetArn)
        }
        if let items = items {
            var itemsContainer = encodeContainer.nestedUnkeyedContainer(forKey: .items)
            for itemlist0 in items {
                try itemsContainer.encode(itemlist0)
            }
        }
    }
}

extension PutItemsInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/items"
    }
}

public struct PutItemsInput: Swift.Equatable {
    /// The Amazon Resource Name (ARN) of the Items dataset you are adding the item or items to.
    /// This member is required.
    public var datasetArn: Swift.String?
    /// A list of item data.
    /// This member is required.
    public var items: [PersonalizeEventsClientTypes.Item]?

    public init (
        datasetArn: Swift.String? = nil,
        items: [PersonalizeEventsClientTypes.Item]? = nil
    )
    {
        self.datasetArn = datasetArn
        self.items = items
    }
}

struct PutItemsInputBody: Swift.Equatable {
    let datasetArn: Swift.String?
    let items: [PersonalizeEventsClientTypes.Item]?
}

extension PutItemsInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case datasetArn
        case items
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .datasetArn)
        datasetArn = datasetArnDecoded
        let itemsContainer = try containerValues.decodeIfPresent([PersonalizeEventsClientTypes.Item?].self, forKey: .items)
        var itemsDecoded0:[PersonalizeEventsClientTypes.Item]? = nil
        if let itemsContainer = itemsContainer {
            itemsDecoded0 = [PersonalizeEventsClientTypes.Item]()
            for structure0 in itemsContainer {
                if let structure0 = structure0 {
                    itemsDecoded0?.append(structure0)
                }
            }
        }
        items = itemsDecoded0
    }
}

extension PutItemsOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension PutItemsOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "InvalidInputException" : self = .invalidInputException(try InvalidInputException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceInUseException" : self = .resourceInUseException(try ResourceInUseException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum PutItemsOutputError: Swift.Error, Swift.Equatable {
    case invalidInputException(InvalidInputException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

extension PutItemsOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct PutItemsOutputResponse: Swift.Equatable {

    public init () { }
}

extension PutUsersInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case datasetArn
        case users
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let datasetArn = self.datasetArn {
            try encodeContainer.encode(datasetArn, forKey: .datasetArn)
        }
        if let users = users {
            var usersContainer = encodeContainer.nestedUnkeyedContainer(forKey: .users)
            for userlist0 in users {
                try usersContainer.encode(userlist0)
            }
        }
    }
}

extension PutUsersInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/users"
    }
}

public struct PutUsersInput: Swift.Equatable {
    /// The Amazon Resource Name (ARN) of the Users dataset you are adding the user or users to.
    /// This member is required.
    public var datasetArn: Swift.String?
    /// A list of user data.
    /// This member is required.
    public var users: [PersonalizeEventsClientTypes.User]?

    public init (
        datasetArn: Swift.String? = nil,
        users: [PersonalizeEventsClientTypes.User]? = nil
    )
    {
        self.datasetArn = datasetArn
        self.users = users
    }
}

struct PutUsersInputBody: Swift.Equatable {
    let datasetArn: Swift.String?
    let users: [PersonalizeEventsClientTypes.User]?
}

extension PutUsersInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case datasetArn
        case users
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let datasetArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .datasetArn)
        datasetArn = datasetArnDecoded
        let usersContainer = try containerValues.decodeIfPresent([PersonalizeEventsClientTypes.User?].self, forKey: .users)
        var usersDecoded0:[PersonalizeEventsClientTypes.User]? = nil
        if let usersContainer = usersContainer {
            usersDecoded0 = [PersonalizeEventsClientTypes.User]()
            for structure0 in usersContainer {
                if let structure0 = structure0 {
                    usersDecoded0?.append(structure0)
                }
            }
        }
        users = usersDecoded0
    }
}

extension PutUsersOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension PutUsersOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "InvalidInputException" : self = .invalidInputException(try InvalidInputException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceInUseException" : self = .resourceInUseException(try ResourceInUseException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum PutUsersOutputError: Swift.Error, Swift.Equatable {
    case invalidInputException(InvalidInputException)
    case resourceInUseException(ResourceInUseException)
    case resourceNotFoundException(ResourceNotFoundException)
    case unknown(UnknownAWSHttpServiceError)
}

extension PutUsersOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
    }
}

public struct PutUsersOutputResponse: Swift.Equatable {

    public init () { }
}

extension ResourceInUseException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: ResourceInUseExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The specified resource is in use.
public struct ResourceInUseException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct ResourceInUseExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceInUseExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ResourceNotFoundException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// Could not find the specified resource.
public struct ResourceNotFoundException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension PersonalizeEventsClientTypes.User: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case properties
        case userId
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let properties = self.properties {
            try encodeContainer.encode(properties, forKey: .properties)
        }
        if let userId = self.userId {
            try encodeContainer.encode(userId, forKey: .userId)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let userIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .userId)
        userId = userIdDecoded
        let propertiesDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .properties)
        properties = propertiesDecoded
    }
}

extension PersonalizeEventsClientTypes.User: Swift.CustomDebugStringConvertible {
    public var debugDescription: Swift.String {
        "User(userId: \(Swift.String(describing: userId)), properties: \"CONTENT_REDACTED\")"}
}

extension PersonalizeEventsClientTypes {
    /// Represents user metadata added to a Users dataset using the PutUsers API. For more information see [Importing Users Incrementally](https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).
    public struct User: Swift.Equatable {
        /// A string map of user-specific metadata. Each element in the map consists of a key-value pair. For example, {"numberOfVideosWatched": "45"}. The keys use camel case names that match the fields in the schema for the Users dataset. In the previous example, the numberOfVideosWatched matches the 'NUMBER_OF_VIDEOS_WATCHED' field defined in the Users schema. For categorical string data, to include multiple categories for a single user, separate each category with a pipe separator (|). For example, \"Member|Frequent shopper\".
        public var properties: Swift.String?
        /// The ID associated with the user.
        /// This member is required.
        public var userId: Swift.String?

        public init (
            properties: Swift.String? = nil,
            userId: Swift.String? = nil
        )
        {
            self.properties = properties
            self.userId = userId
        }
    }

}

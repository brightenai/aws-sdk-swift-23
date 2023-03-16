// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

public struct EndpointParams {
    /// The S3 AccessPointName used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 AccessPoint.
    public let accessPointName: Swift.String?
    /// The Account ID used to send the request. This is an optional parameter that will be set automatically for operations that require it.
    public let accountId: Swift.String?
    /// The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.
    public let bucket: Swift.String?
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// The Outpost ID.  Some operations have an optional OutpostId which should be used in endpoint construction.
    public let outpostId: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// Internal parameter for operations that require account id host prefix.
    public let requiresAccountId: Swift.Bool?
    /// When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN's region when constructing the endpoint instead of the client's configured region.
    public let useArnRegion: Swift.Bool?
    /// When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
    public let useDualStack: Swift.Bool
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool

    public init(
        accessPointName: Swift.String? = nil,
        accountId: Swift.String? = nil,
        bucket: Swift.String? = nil,
        endpoint: Swift.String? = nil,
        outpostId: Swift.String? = nil,
        region: Swift.String? = nil,
        requiresAccountId: Swift.Bool? = nil,
        useArnRegion: Swift.Bool? = nil,
        useDualStack: Swift.Bool = false,
        useFIPS: Swift.Bool = false
    )
    {
        self.accessPointName = accessPointName
        self.accountId = accountId
        self.bucket = bucket
        self.endpoint = endpoint
        self.outpostId = outpostId
        self.region = region
        self.requiresAccountId = requiresAccountId
        self.useArnRegion = useArnRegion
        self.useDualStack = useDualStack
        self.useFIPS = useFIPS
    }
}

public protocol EndpointResolver {
    func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint
}

public struct DefaultEndpointResolver: EndpointResolver  {

    private let engine: AWSClientRuntime.AWSEndpointsRuleEngine
    private let partitions = "{\"version\":\"1.1\",\"partitions\":[{\"id\":\"aws\",\"regionRegex\":\"^(us|eu|ap|sa|ca|me|af)-\\\\w+-\\\\d+$\",\"regions\":{\"af-south-1\":{},\"ap-east-1\":{},\"ap-northeast-1\":{},\"ap-northeast-2\":{},\"ap-northeast-3\":{},\"ap-south-1\":{},\"ap-southeast-1\":{},\"ap-southeast-2\":{},\"ap-southeast-3\":{},\"ca-central-1\":{},\"eu-central-1\":{},\"eu-north-1\":{},\"eu-south-1\":{},\"eu-west-1\":{},\"eu-west-2\":{},\"eu-west-3\":{},\"me-central-1\":{},\"me-south-1\":{},\"sa-east-1\":{},\"us-east-1\":{},\"us-east-2\":{},\"us-west-1\":{},\"us-west-2\":{},\"aws-global\":{}},\"outputs\":{\"name\":\"aws\",\"dnsSuffix\":\"amazonaws.com\",\"dualStackDnsSuffix\":\"api.aws\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-us-gov\",\"regionRegex\":\"^us\\\\-gov\\\\-\\\\w+\\\\-\\\\d+$\",\"regions\":{\"us-gov-west-1\":{},\"us-gov-east-1\":{},\"aws-us-gov-global\":{}},\"outputs\":{\"name\":\"aws-us-gov\",\"dnsSuffix\":\"amazonaws.com\",\"dualStackDnsSuffix\":\"api.aws\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-cn\",\"regionRegex\":\"^cn\\\\-\\\\w+\\\\-\\\\d+$\",\"regions\":{\"cn-north-1\":{},\"cn-northwest-1\":{},\"aws-cn-global\":{}},\"outputs\":{\"name\":\"aws-cn\",\"dnsSuffix\":\"amazonaws.com.cn\",\"dualStackDnsSuffix\":\"api.amazonwebservices.com.cn\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-iso\",\"regionRegex\":\"^us\\\\-iso\\\\-\\\\w+\\\\-\\\\d+$\",\"outputs\":{\"name\":\"aws-iso\",\"dnsSuffix\":\"c2s.ic.gov\",\"supportsFIPS\":true,\"supportsDualStack\":false,\"dualStackDnsSuffix\":\"c2s.ic.gov\"},\"regions\":{\"us-iso-east-1\":{},\"us-iso-west-1\":{},\"aws-iso-global\":{}}},{\"id\":\"aws-iso-b\",\"regionRegex\":\"^us\\\\-isob\\\\-\\\\w+\\\\-\\\\d+$\",\"outputs\":{\"name\":\"aws-iso-b\",\"dnsSuffix\":\"sc2s.sgov.gov\",\"supportsFIPS\":true,\"supportsDualStack\":false,\"dualStackDnsSuffix\":\"sc2s.sgov.gov\"},\"regions\":{\"us-isob-east-1\":{},\"aws-iso-b-global\":{}}}]}"
    private let ruleSet = "{\"version\":\"1.0\",\"parameters\":{\"Region\":{\"builtIn\":\"AWS::Region\",\"required\":false,\"documentation\":\"The AWS region used to dispatch the request.\",\"type\":\"String\"},\"UseFIPS\":{\"builtIn\":\"AWS::UseFIPS\",\"required\":true,\"default\":false,\"documentation\":\"When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.\",\"type\":\"Boolean\"},\"UseDualStack\":{\"builtIn\":\"AWS::UseDualStack\",\"required\":true,\"default\":false,\"documentation\":\"When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.\",\"type\":\"Boolean\"},\"Endpoint\":{\"builtIn\":\"SDK::Endpoint\",\"required\":false,\"documentation\":\"Override the endpoint used to send this request\",\"type\":\"String\"},\"AccountId\":{\"required\":false,\"documentation\":\"The Account ID used to send the request. This is an optional parameter that will be set automatically for operations that require it.\",\"type\":\"String\"},\"RequiresAccountId\":{\"required\":false,\"documentation\":\"Internal parameter for operations that require account id host prefix.\",\"type\":\"Boolean\"},\"OutpostId\":{\"required\":false,\"documentation\":\"The Outpost ID.  Some operations have an optional OutpostId which should be used in endpoint construction.\",\"type\":\"String\"},\"Bucket\":{\"required\":false,\"documentation\":\"The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.\",\"type\":\"String\"},\"AccessPointName\":{\"required\":false,\"documentation\":\"The S3 AccessPointName used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 AccessPoint.\",\"type\":\"String\"},\"UseArnRegion\":{\"builtIn\":\"AWS::S3Control::UseArnRegion\",\"required\":false,\"documentation\":\"When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN's region when constructing the endpoint instead of the client's configured region.\",\"type\":\"Boolean\"}},\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"OutpostId\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"partitionResult\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"partitionResult\"},\"name\"]},\"aws-cn\"]}],\"error\":\"Partition does not support FIPS\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}]}],\"error\":\"AccountId is required but not set\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"AccountId\"},false]}]}],\"error\":\"AccountId must only contain a-z, A-Z, 0-9 and `-`.\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"not\",\"argv\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"OutpostId\"},false]}]}],\"error\":\"OutpostId must only contain a-z, A-Z, 0-9 and `-`.\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"Region\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid configuration: Outposts do not support dual-stack\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]},{\"fn\":\"parseURL\",\"argv\":[{\"ref\":\"Endpoint\"}],\"assign\":\"url\"}],\"endpoint\":{\"url\":\"{url#scheme}://{url#authority}{url#path}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"endpoint\":{\"url\":\"https://s3-outposts-fips.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://s3-outposts.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid region: region was not a valid DNS name.\",\"type\":\"error\"}]}]}]}]}]}]},{\"conditions\":[],\"error\":\"A valid partition could not be determined\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccessPointName\"}]},{\"fn\":\"aws.parseArn\",\"argv\":[{\"ref\":\"AccessPointName\"}],\"assign\":\"accessPointArn\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"resourceId[0]\"],\"assign\":\"arnType\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"service\"]},\"s3-outposts\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid configuration: Outpost Access Points do not support dual-stack\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"resourceId[1]\"],\"assign\":\"outpostId\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"outpostId\"},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"UseArnRegion\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseArnRegion\"},false]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"region\"]},\"{Region}\"]}]}],\"error\":\"Invalid configuration: region from ARN `{accessPointArn#region}` does not match client region `{Region}` and UseArnRegion is `false`\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"partitionResult\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"region\"]}],\"assign\":\"arnPartition\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arnPartition\"},\"name\"]},{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"partitionResult\"},\"name\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"region\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"accountId\"]},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"accountId\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"AccountId\"},\"{accessPointArn#accountId}\"]}]}],\"error\":\"Invalid ARN: the accountId specified in the ARN (`{accessPointArn#accountId}`) does not match the parameter (`{AccountId}`)\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"resourceId[2]\"],\"assign\":\"outpostType\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"accessPointArn\"},\"resourceId[3]\"],\"assign\":\"accessPointName\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"outpostType\"},\"accesspoint\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"endpoint\":{\"url\":\"https://s3-outposts-fips.{accessPointArn#region}.{arnPartition#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{accessPointArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{accessPointArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]},{\"fn\":\"parseURL\",\"argv\":[{\"ref\":\"Endpoint\"}],\"assign\":\"url\"}],\"endpoint\":{\"url\":\"{url#scheme}://{url#authority}{url#path}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{accessPointArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{accessPointArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://s3-outposts.{accessPointArn#region}.{arnPartition#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{accessPointArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{accessPointArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"Expected an outpost type `accesspoint`, found `{outpostType}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: expected an access point name\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Expected a 4-component resource\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `{accessPointArn#accountId}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: missing account ID\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid region in ARN: `{accessPointArn#region}` (invalid DNS name)\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Client was configured for partition `{partitionResult#name}` but ARN has `{arnPartition#name}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Could not load partition for ARN region `{accessPointArn#region}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"A valid partition could not be determined\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`., found: `{outpostId}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The Outpost Id was not set\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: No ARN type specified\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Bucket\"}]},{\"fn\":\"aws.parseArn\",\"argv\":[{\"ref\":\"Bucket\"}],\"assign\":\"bucketArn\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"resourceId[0]\"],\"assign\":\"arnType\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"service\"]},\"s3-outposts\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid configuration: Outpost buckets do not support dual-stack\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"resourceId[1]\"],\"assign\":\"outpostId\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"outpostId\"},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"UseArnRegion\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseArnRegion\"},false]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"region\"]},\"{Region}\"]}]}],\"error\":\"Invalid configuration: region from ARN `{bucketArn#region}` does not match client region `{Region}` and UseArnRegion is `false`\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"region\"]}],\"assign\":\"arnPartition\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"partitionResult\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arnPartition\"},\"name\"]},{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"partitionResult\"},\"name\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"region\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"accountId\"]},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"accountId\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"AccountId\"},\"{bucketArn#accountId}\"]}]}],\"error\":\"Invalid ARN: the accountId specified in the ARN (`{bucketArn#accountId}`) does not match the parameter (`{AccountId}`)\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"resourceId[2]\"],\"assign\":\"outpostType\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"bucketArn\"},\"resourceId[3]\"],\"assign\":\"bucketName\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"outpostType\"},\"bucket\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"endpoint\":{\"url\":\"https://s3-outposts-fips.{bucketArn#region}.{arnPartition#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{bucketArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{bucketArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]},{\"fn\":\"parseURL\",\"argv\":[{\"ref\":\"Endpoint\"}],\"assign\":\"url\"}],\"endpoint\":{\"url\":\"{url#scheme}://{url#authority}{url#path}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{bucketArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{bucketArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://s3-outposts.{bucketArn#region}.{arnPartition#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3-outposts\",\"signingRegion\":\"{bucketArn#region}\"}]},\"headers\":{\"x-amz-account-id\":[\"{bucketArn#accountId}\"],\"x-amz-outpost-id\":[\"{outpostId}\"]}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Expected an outpost type `bucket`, found `{outpostType}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: expected a bucket name\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Expected a 4-component resource\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `{bucketArn#accountId}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: missing account ID\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid region in ARN: `{bucketArn#region}` (invalid DNS name)\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Client was configured for partition `{partitionResult#name}` but ARN has `{arnPartition#name}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"A valid partition could not be determined\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Could not load partition for ARN region `{bucketArn#region}`\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`., found: `{outpostId}`\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The Outpost Id was not set\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: No ARN type specified\",\"type\":\"error\"}]},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"partitionResult\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"Region\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"partitionResult\"},\"name\"]},\"aws-cn\"]}],\"error\":\"Partition does not support FIPS\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}]}],\"error\":\"AccountId is required but not set\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"ref\":\"AccountId\"},false]}]}],\"error\":\"AccountId must only contain a-z, A-Z, 0-9 and `-`.\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]},{\"fn\":\"parseURL\",\"argv\":[{\"ref\":\"Endpoint\"}],\"assign\":\"url\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid Configuration: Dualstack and custom endpoint are not supported\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}],\"endpoint\":{\"url\":\"{url#scheme}://{AccountId}.{url#authority}{url#path}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"{url#scheme}://{url#authority}{url#path}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}],\"endpoint\":{\"url\":\"https://{AccountId}.s3-control-fips.dualstack.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"endpoint\":{\"url\":\"https://s3-control-fips.dualstack.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},false]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}],\"endpoint\":{\"url\":\"https://{AccountId}.s3-control-fips.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},false]}],\"endpoint\":{\"url\":\"https://s3-control-fips.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},false]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}],\"endpoint\":{\"url\":\"https://{AccountId}.s3-control.dualstack.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},false]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"endpoint\":{\"url\":\"https://s3-control.dualstack.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},false]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},false]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"RequiresAccountId\"}]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"RequiresAccountId\"},true]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"AccountId\"}]}],\"endpoint\":{\"url\":\"https://{AccountId}.s3-control.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},false]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},false]}],\"endpoint\":{\"url\":\"https://s3-control.{Region}.{partitionResult#dnsSuffix}\",\"properties\":{\"authSchemes\":[{\"disableDoubleEncoding\":true,\"name\":\"sigv4\",\"signingName\":\"s3\",\"signingRegion\":\"{Region}\"}]},\"headers\":{}},\"type\":\"endpoint\"}]}]}]}]}]}]},{\"conditions\":[],\"error\":\"Invalid region: region was not a valid DNS name.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"A valid partition could not be determined\",\"type\":\"error\"}]}]}]},{\"conditions\":[],\"error\":\"Region must be set\",\"type\":\"error\"}]}]}"

    public init() throws {
        engine = try AWSClientRuntime.AWSEndpointsRuleEngine(partitions: partitions, ruleSet: ruleSet)
    }

    public func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint {
        let context = try AWSClientRuntime.AWSEndpointsRequestContext()
        try context.add(name: "AccessPointName", value: params.accessPointName)
        try context.add(name: "AccountId", value: params.accountId)
        try context.add(name: "Bucket", value: params.bucket)
        try context.add(name: "Endpoint", value: params.endpoint)
        try context.add(name: "OutpostId", value: params.outpostId)
        try context.add(name: "Region", value: params.region)
        try context.add(name: "RequiresAccountId", value: params.requiresAccountId)
        try context.add(name: "UseArnRegion", value: params.useArnRegion)
        try context.add(name: "UseDualStack", value: params.useDualStack)
        try context.add(name: "UseFIPS", value: params.useFIPS)

        guard let crtResolvedEndpoint = try engine.resolve(context: context) else {
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        if crtResolvedEndpoint.getType() == .error {
            let error = crtResolvedEndpoint.getError()
            throw EndpointError.unresolved(error)
        }

        guard let url = crtResolvedEndpoint.getURL() else {
            assertionFailure("This must be a bug in either CRT or the rule engine, if the endpoint is not an error, it must have a url")
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        let headers = crtResolvedEndpoint.getHeaders() ?? [:]
        let properties = crtResolvedEndpoint.getProperties() ?? [:]
        return try Endpoint(urlString: url, headers: Headers(headers), properties: properties)
    }
}

public struct EndpointResolverMiddleware<OperationStackOutput: ClientRuntime.HttpResponseBinding, OperationStackError: ClientRuntime.HttpResponseBinding>: ClientRuntime.Middleware {
    public let id: Swift.String = "EndpointResolverMiddleware"

    let endpointResolver: EndpointResolver

    let endpointParams: EndpointParams

    let authSchemeResolver: AWSClientRuntime.AuthSchemeResolver

    public init(endpointResolver: EndpointResolver, endpointParams: EndpointParams, authSchemeResolver: AWSClientRuntime.AuthSchemeResolver = AWSClientRuntime.DefaultAuthSchemeResolver()) {
        self.endpointResolver = endpointResolver
        self.endpointParams = endpointParams
        self.authSchemeResolver = authSchemeResolver
    }

    public func handle<H>(context: Context,
                  input: ClientRuntime.SdkHttpRequestBuilder,
                  next: H) async throws -> ClientRuntime.OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        let endpoint = try endpointResolver.resolve(params: endpointParams)

        var signingName: String? = nil
        var signingRegion: String? = nil
        var signingAlgorithm: String? = nil
        if let authSchemes = endpoint.authSchemes() {
            let schemes = try authSchemes.map { try AuthScheme(from: $0) }
            let authScheme = try authSchemeResolver.resolve(authSchemes: schemes)
            signingAlgorithm = authScheme.name
            switch authScheme {
            case .sigV4(let param):
                signingName = param.signingName
                signingRegion = param.signingRegion
            case .sigV4A(let param):
                signingName = param.signingName
                signingRegion = param.signingRegionSet?.first
            case .none:
                break
            }
        }

        let awsEndpoint = AWSEndpoint(endpoint: endpoint, signingName: signingName, signingRegion: signingRegion)

        var host = ""
        if let hostOverride = context.getHost() {
            host = hostOverride
        } else {
            host = "\(context.getHostPrefix() ?? "")\(awsEndpoint.endpoint.host)"
        }

        if let protocolType = awsEndpoint.endpoint.protocolType {
            input.withProtocol(protocolType)
        }

        var updatedContext = context
        if let signingRegion = signingRegion {
            updatedContext.attributes.set(key: HttpContext.signingRegion, value: signingRegion)
        }
        if let signingName = signingName {
            updatedContext.attributes.set(key: HttpContext.signingName, value: signingName)
        }
        if let signingAlgorithm = signingAlgorithm {
            updatedContext.attributes.set(key: HttpContext.signingAlgorithm, value: signingAlgorithm)
        }

        if let headers = endpoint.headers {
            input.withHeaders(headers)
        }

        input.withMethod(context.getMethod())
            .withHost(host)
            .withPort(awsEndpoint.endpoint.port)
            .withPath(awsEndpoint.endpoint.path.appendingPathComponent(context.getPath()))
            .withHeader(name: "Host", value: host)

        return try await next.handle(context: updatedContext, input: input)
    }

    public typealias MInput = ClientRuntime.SdkHttpRequestBuilder
    public typealias MOutput = ClientRuntime.OperationOutput<OperationStackOutput>
    public typealias Context = ClientRuntime.HttpContext
}

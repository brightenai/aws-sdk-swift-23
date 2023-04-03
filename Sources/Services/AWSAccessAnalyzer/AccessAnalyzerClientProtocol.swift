// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Identity and Access Management Access Analyzer helps identify potential resource-access risks by enabling you to identify any policies that grant access to an external principal. It does this by using logic-based reasoning to analyze resource-based policies in your Amazon Web Services environment. An external principal can be another Amazon Web Services account, a root user, an IAM user or role, a federated user, an Amazon Web Services service, or an anonymous user. You can also use IAM Access Analyzer to preview and validate public and cross-account access to your resources before deploying permissions changes. This guide describes the Identity and Access Management Access Analyzer operations that you can call programmatically. For general information about IAM Access Analyzer, see [Identity and Access Management Access Analyzer](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html) in the IAM User Guide. To start using IAM Access Analyzer, you first need to create an analyzer.
public protocol AccessAnalyzerClientProtocol {
    /// Retroactively applies the archive rule to existing findings that meet the archive rule criteria.
    func applyArchiveRule(input: ApplyArchiveRuleInput) async throws -> ApplyArchiveRuleOutputResponse
    /// Cancels the requested policy generation.
    func cancelPolicyGeneration(input: CancelPolicyGenerationInput) async throws -> CancelPolicyGenerationOutputResponse
    /// Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.
    func createAccessPreview(input: CreateAccessPreviewInput) async throws -> CreateAccessPreviewOutputResponse
    /// Creates an analyzer for your account.
    func createAnalyzer(input: CreateAnalyzerInput) async throws -> CreateAnalyzerOutputResponse
    /// Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func createArchiveRule(input: CreateArchiveRuleInput) async throws -> CreateArchiveRuleOutputResponse
    /// Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.
    func deleteAnalyzer(input: DeleteAnalyzerInput) async throws -> DeleteAnalyzerOutputResponse
    /// Deletes the specified archive rule.
    func deleteArchiveRule(input: DeleteArchiveRuleInput) async throws -> DeleteArchiveRuleOutputResponse
    /// Retrieves information about an access preview for the specified analyzer.
    func getAccessPreview(input: GetAccessPreviewInput) async throws -> GetAccessPreviewOutputResponse
    /// Retrieves information about a resource that was analyzed.
    func getAnalyzedResource(input: GetAnalyzedResourceInput) async throws -> GetAnalyzedResourceOutputResponse
    /// Retrieves information about the specified analyzer.
    func getAnalyzer(input: GetAnalyzerInput) async throws -> GetAnalyzerOutputResponse
    /// Retrieves information about an archive rule. To learn about filter keys that you can use to create an archive rule, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func getArchiveRule(input: GetArchiveRuleInput) async throws -> GetArchiveRuleOutputResponse
    /// Retrieves information about the specified finding.
    func getFinding(input: GetFindingInput) async throws -> GetFindingOutputResponse
    /// Retrieves the policy that was generated using StartPolicyGeneration.
    func getGeneratedPolicy(input: GetGeneratedPolicyInput) async throws -> GetGeneratedPolicyOutputResponse
    /// Retrieves a list of access preview findings generated by the specified access preview.
    func listAccessPreviewFindings(input: ListAccessPreviewFindingsInput) async throws -> ListAccessPreviewFindingsOutputResponse
    /// Retrieves a list of access previews for the specified analyzer.
    func listAccessPreviews(input: ListAccessPreviewsInput) async throws -> ListAccessPreviewsOutputResponse
    /// Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer..
    func listAnalyzedResources(input: ListAnalyzedResourcesInput) async throws -> ListAnalyzedResourcesOutputResponse
    /// Retrieves a list of analyzers.
    func listAnalyzers(input: ListAnalyzersInput) async throws -> ListAnalyzersOutputResponse
    /// Retrieves a list of archive rules created for the specified analyzer.
    func listArchiveRules(input: ListArchiveRulesInput) async throws -> ListArchiveRulesOutputResponse
    /// Retrieves a list of findings generated by the specified analyzer. To learn about filter keys that you can use to retrieve a list of findings, see [IAM Access Analyzer filter keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html) in the IAM User Guide.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutputResponse
    /// Lists all of the policy generations requested in the last seven days.
    func listPolicyGenerations(input: ListPolicyGenerationsInput) async throws -> ListPolicyGenerationsOutputResponse
    /// Retrieves a list of tags applied to the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts the policy generation request.
    func startPolicyGeneration(input: StartPolicyGenerationInput) async throws -> StartPolicyGenerationOutputResponse
    /// Immediately starts a scan of the policies applied to the specified resource.
    func startResourceScan(input: StartResourceScanInput) async throws -> StartResourceScanOutputResponse
    /// Adds a tag to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the criteria and values for the specified archive rule.
    func updateArchiveRule(input: UpdateArchiveRuleInput) async throws -> UpdateArchiveRuleOutputResponse
    /// Updates the status for the specified findings.
    func updateFindings(input: UpdateFindingsInput) async throws -> UpdateFindingsOutputResponse
    /// Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices.
    func validatePolicy(input: ValidatePolicyInput) async throws -> ValidatePolicyOutputResponse
}

public protocol AccessAnalyzerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum AccessAnalyzerClientTypes {}

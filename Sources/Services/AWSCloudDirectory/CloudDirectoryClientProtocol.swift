// Code generated by smithy-swift-codegen. DO NOT EDIT!

@_spi(Internal) import AWSClientRuntime
import ClientRuntime

/// Amazon Cloud Directory Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile, and IoT applications. This guide describes the Cloud Directory operations that you can call programmatically and includes detailed information on data types and errors. For information about Cloud Directory features, see [AWS Directory Service](https://aws.amazon.com/directoryservice/) and the [Amazon Cloud Directory Developer Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).
public protocol CloudDirectoryClientProtocol {
    /// Adds a new [Facet] to an object. An object can have more than one facet applied on it.
    func addFacetToObject(input: AddFacetToObjectInput) async throws -> AddFacetToObjectOutputResponse
    /// Copies the input published schema, at the specified version, into the [Directory] with the same name and version as that of the published schema.
    func applySchema(input: ApplySchemaInput) async throws -> ApplySchemaOutputResponse
    /// Attaches an existing object to another object. An object can be accessed in two ways:
    ///
    /// * Using the path
    ///
    /// * Using ObjectIdentifier
    func attachObject(input: AttachObjectInput) async throws -> AttachObjectOutputResponse
    /// Attaches a policy object to a regular object. An object can have a limited number of attached policies.
    func attachPolicy(input: AttachPolicyInput) async throws -> AttachPolicyOutputResponse
    /// Attaches the specified object to the specified index.
    func attachToIndex(input: AttachToIndexInput) async throws -> AttachToIndexOutputResponse
    /// Attaches a typed link to a specified source and target object. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func attachTypedLink(input: AttachTypedLinkInput) async throws -> AttachTypedLinkOutputResponse
    /// Performs all the read operations in a batch.
    func batchRead(input: BatchReadInput) async throws -> BatchReadOutputResponse
    /// Performs all the write operations in a batch. Either all the operations succeed or none.
    func batchWrite(input: BatchWriteInput) async throws -> BatchWriteOutputResponse
    /// Creates a [Directory] by copying the published schema into the directory. A directory cannot be created without a schema. You can also quickly create a directory using a managed schema, called the QuickStartSchema. For more information, see [Managed Schema](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html) in the Amazon Cloud Directory Developer Guide.
    func createDirectory(input: CreateDirectoryInput) async throws -> CreateDirectoryOutputResponse
    /// Creates a new [Facet] in a schema. Facet creation is allowed only in development or applied schemas.
    func createFacet(input: CreateFacetInput) async throws -> CreateFacetOutputResponse
    /// Creates an index object. See [Indexing and search](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html) for more information.
    func createIndex(input: CreateIndexInput) async throws -> CreateIndexOutputResponse
    /// Creates an object in a [Directory]. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of [Facet] attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet.
    func createObject(input: CreateObjectInput) async throws -> CreateObjectOutputResponse
    /// Creates a new schema in a development state. A schema can exist in three phases:
    ///
    /// * Development: This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.
    ///
    /// * Published: Published schemas are immutable and have a version associated with them.
    ///
    /// * Applied: Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories.
    func createSchema(input: CreateSchemaInput) async throws -> CreateSchemaOutputResponse
    /// Creates a [TypedLinkFacet]. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func createTypedLinkFacet(input: CreateTypedLinkFacetInput) async throws -> CreateTypedLinkFacetOutputResponse
    /// Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.
    func deleteDirectory(input: DeleteDirectoryInput) async throws -> DeleteDirectoryOutputResponse
    /// Deletes a given [Facet]. All attributes and [Rule]s that are associated with the facet will be deleted. Only development schema facets are allowed deletion.
    func deleteFacet(input: DeleteFacetInput) async throws -> DeleteFacetOutputResponse
    /// Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted. The maximum number of attributes that can be deleted during an object deletion is 30. For more information, see [Amazon Cloud Directory Limits](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).
    func deleteObject(input: DeleteObjectInput) async throws -> DeleteObjectOutputResponse
    /// Deletes a given schema. Schemas in a development and published state can only be deleted.
    func deleteSchema(input: DeleteSchemaInput) async throws -> DeleteSchemaOutputResponse
    /// Deletes a [TypedLinkFacet]. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func deleteTypedLinkFacet(input: DeleteTypedLinkFacetInput) async throws -> DeleteTypedLinkFacetOutputResponse
    /// Detaches the specified object from the specified index.
    func detachFromIndex(input: DetachFromIndexInput) async throws -> DetachFromIndexOutputResponse
    /// Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.
    func detachObject(input: DetachObjectInput) async throws -> DetachObjectOutputResponse
    /// Detaches a policy from an object.
    func detachPolicy(input: DetachPolicyInput) async throws -> DetachPolicyOutputResponse
    /// Detaches a typed link from a specified source and target object. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func detachTypedLink(input: DetachTypedLinkInput) async throws -> DetachTypedLinkOutputResponse
    /// Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.
    func disableDirectory(input: DisableDirectoryInput) async throws -> DisableDirectoryOutputResponse
    /// Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.
    func enableDirectory(input: EnableDirectoryInput) async throws -> EnableDirectoryOutputResponse
    /// Returns current applied schema version ARN, including the minor version in use.
    func getAppliedSchemaVersion(input: GetAppliedSchemaVersionInput) async throws -> GetAppliedSchemaVersionOutputResponse
    /// Retrieves metadata about a directory.
    func getDirectory(input: GetDirectoryInput) async throws -> GetDirectoryOutputResponse
    /// Gets details of the [Facet], such as facet name, attributes, [Rule]s, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.
    func getFacet(input: GetFacetInput) async throws -> GetFacetOutputResponse
    /// Retrieves attributes that are associated with a typed link.
    func getLinkAttributes(input: GetLinkAttributesInput) async throws -> GetLinkAttributesOutputResponse
    /// Retrieves attributes within a facet that are associated with an object.
    func getObjectAttributes(input: GetObjectAttributesInput) async throws -> GetObjectAttributesOutputResponse
    /// Retrieves metadata about an object.
    func getObjectInformation(input: GetObjectInformationInput) async throws -> GetObjectInformationOutputResponse
    /// Retrieves a JSON representation of the schema. See [JSON Schema Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json) for more information.
    func getSchemaAsJson(input: GetSchemaAsJsonInput) async throws -> GetSchemaAsJsonOutputResponse
    /// Returns the identity attribute order for a specific [TypedLinkFacet]. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func getTypedLinkFacetInformation(input: GetTypedLinkFacetInformationInput) async throws -> GetTypedLinkFacetInformationOutputResponse
    /// Lists schema major versions applied to a directory. If SchemaArn is provided, lists the minor version.
    func listAppliedSchemaArns(input: ListAppliedSchemaArnsInput) async throws -> ListAppliedSchemaArnsOutputResponse
    /// Lists indices attached to the specified object.
    func listAttachedIndices(input: ListAttachedIndicesInput) async throws -> ListAttachedIndicesOutputResponse
    /// Retrieves each Amazon Resource Name (ARN) of schemas in the development state.
    func listDevelopmentSchemaArns(input: ListDevelopmentSchemaArnsInput) async throws -> ListDevelopmentSchemaArnsOutputResponse
    /// Lists directories created within an account.
    func listDirectories(input: ListDirectoriesInput) async throws -> ListDirectoriesOutputResponse
    /// Retrieves attributes attached to the facet.
    func listFacetAttributes(input: ListFacetAttributesInput) async throws -> ListFacetAttributesOutputResponse
    /// Retrieves the names of facets that exist in a schema.
    func listFacetNames(input: ListFacetNamesInput) async throws -> ListFacetNamesOutputResponse
    /// Returns a paginated list of all the incoming [TypedLinkSpecifier] information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func listIncomingTypedLinks(input: ListIncomingTypedLinksInput) async throws -> ListIncomingTypedLinksOutputResponse
    /// Lists objects attached to the specified index.
    func listIndex(input: ListIndexInput) async throws -> ListIndexOutputResponse
    /// Lists the major version families of each managed schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    func listManagedSchemaArns(input: ListManagedSchemaArnsInput) async throws -> ListManagedSchemaArnsOutputResponse
    /// Lists all attributes that are associated with an object.
    func listObjectAttributes(input: ListObjectAttributesInput) async throws -> ListObjectAttributesOutputResponse
    /// Returns a paginated list of child objects that are associated with a given object.
    func listObjectChildren(input: ListObjectChildrenInput) async throws -> ListObjectChildrenOutputResponse
    /// Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects. For more information about objects, see [Directory Structure](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html). Use this API to evaluate all parents for an object. The call returns all objects from the root of the directory up to the requested object. The API returns the number of paths based on user-defined MaxResults, in case there are multiple paths to the parent. The order of the paths and nodes returned is consistent among multiple API calls unless the objects are deleted or moved. Paths not leading to the directory root are ignored from the target object.
    func listObjectParentPaths(input: ListObjectParentPathsInput) async throws -> ListObjectParentPathsOutputResponse
    /// Lists parent objects that are associated with a given object in pagination fashion.
    func listObjectParents(input: ListObjectParentsInput) async throws -> ListObjectParentsOutputResponse
    /// Returns policies attached to an object in pagination fashion.
    func listObjectPolicies(input: ListObjectPoliciesInput) async throws -> ListObjectPoliciesOutputResponse
    /// Returns a paginated list of all the outgoing [TypedLinkSpecifier] information for an object. It also supports filtering by typed link facet and identity attributes. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func listOutgoingTypedLinks(input: ListOutgoingTypedLinksInput) async throws -> ListOutgoingTypedLinksOutputResponse
    /// Returns all of the ObjectIdentifiers to which a given policy is attached.
    func listPolicyAttachments(input: ListPolicyAttachmentsInput) async throws -> ListPolicyAttachmentsOutputResponse
    /// Lists the major version families of each published schema. If a major version ARN is provided as SchemaArn, the minor version revisions in that family are listed instead.
    func listPublishedSchemaArns(input: ListPublishedSchemaArnsInput) async throws -> ListPublishedSchemaArnsOutputResponse
    /// Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Returns a paginated list of all attribute definitions for a particular [TypedLinkFacet]. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func listTypedLinkFacetAttributes(input: ListTypedLinkFacetAttributesInput) async throws -> ListTypedLinkFacetAttributesOutputResponse
    /// Returns a paginated list of TypedLink facet names for a particular schema. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func listTypedLinkFacetNames(input: ListTypedLinkFacetNamesInput) async throws -> ListTypedLinkFacetNamesOutputResponse
    /// Lists all policies from the root of the [Directory] to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the ObjectIdentifier for such objects. If policies are present, it returns ObjectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored. For more information, see [Policies](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).
    func lookupPolicy(input: LookupPolicyInput) async throws -> LookupPolicyOutputResponse
    /// Publishes a development schema with a major version and a recommended minor version.
    func publishSchema(input: PublishSchemaInput) async throws -> PublishSchemaOutputResponse
    /// Allows a schema to be updated using JSON upload. Only available for development schemas. See [JSON Schema Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json) for more information.
    func putSchemaFromJson(input: PutSchemaFromJsonInput) async throws -> PutSchemaFromJsonOutputResponse
    /// Removes the specified facet from the specified object.
    func removeFacetFromObject(input: RemoveFacetFromObjectInput) async throws -> RemoveFacetFromObjectOutputResponse
    /// An API operation for adding tags to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// An API operation for removing tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Does the following:
    ///
    /// * Adds new Attributes, Rules, or ObjectTypes.
    ///
    /// * Updates existing Attributes, Rules, or ObjectTypes.
    ///
    /// * Deletes existing Attributes, Rules, or ObjectTypes.
    func updateFacet(input: UpdateFacetInput) async throws -> UpdateFacetOutputResponse
    /// Updates a given typed link’s attributes. Attributes to be updated must not contribute to the typed link’s identity, as defined by its IdentityAttributeOrder.
    func updateLinkAttributes(input: UpdateLinkAttributesInput) async throws -> UpdateLinkAttributesOutputResponse
    /// Updates a given object's attributes.
    func updateObjectAttributes(input: UpdateObjectAttributesInput) async throws -> UpdateObjectAttributesOutputResponse
    /// Updates the schema name with a new name. Only development schema names can be updated.
    func updateSchema(input: UpdateSchemaInput) async throws -> UpdateSchemaOutputResponse
    /// Updates a [TypedLinkFacet]. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
    func updateTypedLinkFacet(input: UpdateTypedLinkFacetInput) async throws -> UpdateTypedLinkFacetOutputResponse
    /// Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion. Backwards-compatible minor version upgrades are instantaneously available for readers on all objects in the directory. Note: This is a synchronous API call and upgrades only one schema on a given directory per call. To upgrade multiple directories from one schema, you would need to call this API on each directory.
    func upgradeAppliedSchema(input: UpgradeAppliedSchemaInput) async throws -> UpgradeAppliedSchemaOutputResponse
    /// Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn.
    func upgradePublishedSchema(input: UpgradePublishedSchemaInput) async throws -> UpgradePublishedSchemaOutputResponse
}

public protocol CloudDirectoryClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CloudDirectoryClientTypes {}

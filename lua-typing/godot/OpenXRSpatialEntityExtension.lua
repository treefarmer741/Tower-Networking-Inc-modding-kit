---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialEntityExtension : OpenXRExtensionWrapper
local OpenXRSpatialEntityExtension = {}

---@param capability OpenXRSpatialEntityExtension.Capability
---@return boolean
function OpenXRSpatialEntityExtension.supports_capability(capability) end

---@param capability OpenXRSpatialEntityExtension.Capability
---@param component_type OpenXRSpatialEntityExtension.ComponentType
---@return boolean
function OpenXRSpatialEntityExtension.supports_component_type(capability, component_type) end

---@param capability_configurations Array<OpenXRSpatialCapabilityConfigurationBaseHeader>
---@param next OpenXRStructureBase?  # Default = <null>
---@param user_callback (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRSpatialEntityExtension.create_spatial_context(capability_configurations, next, user_callback) end

---@param spatial_context RID
---@return boolean
function OpenXRSpatialEntityExtension.get_spatial_context_ready(spatial_context) end

---@param spatial_context RID
function OpenXRSpatialEntityExtension.free_spatial_context(spatial_context) end

---@param spatial_context RID
---@return integer
function OpenXRSpatialEntityExtension.get_spatial_context_handle(spatial_context) end

---@param spatial_context RID
---@param component_types PackedInt64Array
---@param next OpenXRStructureBase?  # Default = <null>
---@param user_callback (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRSpatialEntityExtension.discover_spatial_entities(spatial_context, component_types, next, user_callback) end

---@param spatial_context RID
---@param entities Array<RID>
---@param component_types PackedInt64Array
---@param next OpenXRStructureBase?  # Default = <null>
---@return RID
function OpenXRSpatialEntityExtension.update_spatial_entities(spatial_context, entities, component_types, next) end

---@param spatial_snapshot RID
function OpenXRSpatialEntityExtension.free_spatial_snapshot(spatial_snapshot) end

---@param spatial_snapshot RID
---@return integer
function OpenXRSpatialEntityExtension.get_spatial_snapshot_handle(spatial_snapshot) end

---@param spatial_snapshot RID
---@return RID
function OpenXRSpatialEntityExtension.get_spatial_snapshot_context(spatial_snapshot) end

---@param spatial_snapshot RID
---@param component_data Array<OpenXRSpatialComponentData>
---@param next OpenXRStructureBase?  # Default = <null>
---@return boolean
function OpenXRSpatialEntityExtension.query_snapshot(spatial_snapshot, component_data, next) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return string
function OpenXRSpatialEntityExtension.get_string(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedByteArray
function OpenXRSpatialEntityExtension.get_uint8_buffer(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedInt32Array
function OpenXRSpatialEntityExtension.get_uint16_buffer(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedInt32Array
function OpenXRSpatialEntityExtension.get_uint32_buffer(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedFloat32Array
function OpenXRSpatialEntityExtension.get_float_buffer(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedVector2Array
function OpenXRSpatialEntityExtension.get_vector2_buffer(spatial_snapshot, buffer_id) end

---@param spatial_snapshot RID
---@param buffer_id integer
---@return PackedVector3Array
function OpenXRSpatialEntityExtension.get_vector3_buffer(spatial_snapshot, buffer_id) end

---@param entity_id integer
---@return RID
function OpenXRSpatialEntityExtension.find_spatial_entity(entity_id) end

---@param spatial_context RID
---@param entity_id integer
---@param entity integer
---@return RID
function OpenXRSpatialEntityExtension.add_spatial_entity(spatial_context, entity_id, entity) end

---@param spatial_context RID
---@param entity_id integer
---@return RID
function OpenXRSpatialEntityExtension.make_spatial_entity(spatial_context, entity_id) end

---@param entity RID
---@return integer
function OpenXRSpatialEntityExtension.get_spatial_entity_id(entity) end

---@param entity RID
---@return RID
function OpenXRSpatialEntityExtension.get_spatial_entity_context(entity) end

---@param entity RID
function OpenXRSpatialEntityExtension.free_spatial_entity(entity) end

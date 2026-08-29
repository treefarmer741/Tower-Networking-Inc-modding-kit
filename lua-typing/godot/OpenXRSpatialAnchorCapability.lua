---@meta _
-- Generated API for game version 0.12.1

---@class OpenXRSpatialAnchorCapability : OpenXRExtensionWrapper
local OpenXRSpatialAnchorCapability = {}

---@return boolean
function OpenXRSpatialAnchorCapability.is_spatial_anchor_supported() end

---@return boolean
function OpenXRSpatialAnchorCapability.is_spatial_persistence_supported() end

---@param scope OpenXRSpatialAnchorCapability.PersistenceScope
---@return boolean
function OpenXRSpatialAnchorCapability.is_persistence_scope_supported(scope) end

---@param scope OpenXRSpatialAnchorCapability.PersistenceScope
---@param user_callback (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRSpatialAnchorCapability.create_persistence_context(scope, user_callback) end

---@param persistence_context RID
---@return integer
function OpenXRSpatialAnchorCapability.get_persistence_context_handle(persistence_context) end

---@param persistence_context RID
function OpenXRSpatialAnchorCapability.free_persistence_context(persistence_context) end

---@param transform Transform3D
---@param spatial_context RID?  # Default = RID(0)
---@return OpenXRAnchorTracker
function OpenXRSpatialAnchorCapability.create_new_anchor(transform, spatial_context) end

---@param anchor_tracker OpenXRAnchorTracker
function OpenXRSpatialAnchorCapability.remove_anchor(anchor_tracker) end

---@param anchor_tracker OpenXRAnchorTracker
---@param persistence_context RID?  # Default = RID(0)
---@param user_callback (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRSpatialAnchorCapability.persist_anchor(anchor_tracker, persistence_context, user_callback) end

---@param anchor_tracker OpenXRAnchorTracker
---@param persistence_context RID?  # Default = RID(0)
---@param user_callback (Callable|function)?  # Default = null::null
---@return OpenXRFutureResult
function OpenXRSpatialAnchorCapability.unpersist_anchor(anchor_tracker, persistence_context, user_callback) end

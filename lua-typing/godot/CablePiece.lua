---@meta _
-- Generated API for game version 0.12.1

---@class CablePiece : RigidBody2D
---@field PlugLabelScene string # Constant value: <PackedScene>
---@field cable_joint PinJoint2D
---@field coiling_joint PinJoint2D
---@field plug_label PanelContainer
local CablePiece = {}

---@return PanelContainer
function CablePiece.get_or_create_plug_label() end

function CablePiece.reset_collision() end

function CablePiece.disable_collision() end

---@meta _
-- Generated API for game version 0.10.0

---@class AnimationTree : AnimationMixer
---@field tree_root AnimationRootNode
---@field advance_expression_base_node string
---@field anim_player string
local AnimationTree = {}

---@param animation_node AnimationRootNode
function AnimationTree.set_tree_root(animation_node) end

---@return AnimationRootNode
function AnimationTree.get_tree_root() end

---@param path string
function AnimationTree.set_advance_expression_base_node(path) end

---@return string
function AnimationTree.get_advance_expression_base_node() end

---@param path string
function AnimationTree.set_animation_player(path) end

---@return string
function AnimationTree.get_animation_player() end

---@param mode AnimationTree.AnimationProcessCallback
function AnimationTree.set_process_callback(mode) end

---@return AnimationTree.AnimationProcessCallback
function AnimationTree.get_process_callback() end

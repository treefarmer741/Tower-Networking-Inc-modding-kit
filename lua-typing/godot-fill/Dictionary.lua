---@meta _


--- Type for godot dictionary's, identified as GDDictionary.
---@class Dictionary<TKey,TValue> : { [TKey]: TValue }
---@field create fun():Dictionary<any,any>
local Dictionary = {}

-- TODO: Operators are not yet supported; != + < <= == > >=

--- Provided by Lua support, this is not a Godot method.
---@generic T
---@param self Array<`T`>
---@param value_for_banned_object any?  # If omitted, an error is raised instead.
---@return fun(array:Array<T>, i:integer):(integer,T)
function Dictionary.iter(self, value_for_banned_object) end

---@return integer
function Dictionary.__len() end

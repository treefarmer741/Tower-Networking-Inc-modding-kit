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

---@param dictionary Dictionary
function Dictionary.assign(self, dictionary) end

function Dictionary.clear(self) end

---@param deep boolean?  # default: false
---@return Dictionary
function Dictionary.duplicate(self, deep) end

---@param deep_subresources_mode integer?  # default: 1
---@return Dictionary
function Dictionary.duplicate_deep(self, deep_subresources_mode) end

---@param key any
---@return boolean
function Dictionary.erase(self, key) end

---@param value any
---@return any
function Dictionary.find_key(self, value) end

---@param key any
---@param default any?  # default: null
---@return any
function Dictionary.get(self, key, default) end

---@param key any
---@param default any?  # default: null
---@return any
function Dictionary.get_or_add(self, key, default) end

---@return integer
function Dictionary.get_typed_key_builtin(self) end

---@return string  # StringName
function Dictionary.get_typed_key_class_name(self) end

---@return any
function Dictionary.get_typed_key_script(self) end

---@return integer
function Dictionary.get_typed_value_builtin(self) end

---@return string  # StringName
function Dictionary.get_typed_value_class_name(self) end

---@return any
function Dictionary.get_typed_value_script(self) end

---@param key any
---@return boolean
function Dictionary.has(self, key) end

---@param keys Array
---@return boolean
function Dictionary.has_all(self, keys) end

---@return integer
function Dictionary.hash(self) end

---@return boolean
function Dictionary.is_empty(self) end

---@return boolean
function Dictionary.is_read_only(self) end

---@param dictionary Dictionary
---@return boolean
function Dictionary.is_same_typed(self, dictionary) end

---@param dictionary Dictionary
---@return boolean
function Dictionary.is_same_typed_key(self, dictionary) end

---@param dictionary Dictionary
---@return boolean
function Dictionary.is_same_typed_value(self, dictionary) end

---@return boolean
function Dictionary.is_typed(self) end

---@return boolean
function Dictionary.is_typed_key(self) end

---@return boolean
function Dictionary.is_typed_value(self) end

---@return Array
function Dictionary.keys(self) end

function Dictionary.make_read_only(self) end

---@param dictionary Dictionary
---@param overwrite boolean?  # default: false
function Dictionary.merge(self, dictionary, overwrite) end

---@param dictionary Dictionary
---@param overwrite boolean?  # default: false
---@return Dictionary
function Dictionary.merged(self, dictionary, overwrite) end

---@param dictionary Dictionary
---@param recursion_count integer
---@return boolean
function Dictionary.recursive_equal(self, dictionary, recursion_count) end

---@param key any
---@param value any
---@return boolean
function Dictionary.set(self, key, value) end

---@return integer
function Dictionary.size(self) end

function Dictionary.sort(self) end

---@return Array
function Dictionary.values(self) end

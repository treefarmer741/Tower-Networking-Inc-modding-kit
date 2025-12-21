---@meta _


--- Type for godot array's, identified as GDArray.
--- WARN: Attempting to call a non-existent method will not error and will do nothing silently.
---@class Array<T> : { [integer]: T }
---@field create fun():Array<any>
local Array = {}

-- TODO: Operators are not yet supported; != + < <= == > >=

--- Provided by Lua support, this is not a Godot method.
---@generic T
---@param self Array<`T`>
---@return fun(array:Array<T>, i:integer):(integer,T)
function Array.iter(self) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@return boolean
function Array.all(self, method) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@return boolean
function Array.any(self, method) end

---@generic T
---@param self Array<`T`>
---@param value T
function Array.append(self, value) end

---@generic T
---@param self Array<`T`>
---@param array Array<T>
function Array.append_array(self, array) end

---@generic T
---@param self Array<`T`>
---@param array Array<T>
function Array.assign(self, array) end

---@generic T
---@param self Array<`T`>
---@return T
function Array.back(self) end

---@generic T
---@param self Array<`T`>
---@param value T
---@param before boolean?  # Default: true
---@return integer
function Array.bsearch(self, value, before) end

---@generic T
---@param self Array<`T`>
---@param value T
---@param func Callable|function
---@param before boolean?  # Default: true
---@return integer
function Array.bsearch_custom(self, value, func, before) end

---@generic T
---@param self Array<`T`>
function Array.clear(self) end

---@generic T
---@param self Array<`T`>
---@param value T
---@return integer
function Array.count(self, value) end

---@generic T
---@param self Array<`T`>
---@param deep boolean?  # Default: false
---@return Array<T>
function Array.duplicate(self, deep) end

---@generic T
---@param self Array<`T`>
---@param deep_subresources_mode integer?  # Default: 1
---@return Array<T>
function Array.duplicate_deep(self, deep_subresources_mode) end

---@generic T
---@param self Array<`T`>
---@param value T
function Array.erase(self, value) end

---@generic T
---@param self Array<`T`>
---@param value T
function Array.fill(self, value) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@return Array<T>
function Array.filter(self, method) end

---@generic T
---@param self Array<`T`>
---@param what T
---@param from integer?  # Default: 0
---@return integer
function Array.find(self, what, from) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@param from integer?  # Default: 0
---@return integer
function Array.find_custom(self, method, from) end

---@generic T
---@param self Array<`T`>
---@return T
function Array.front(self) end

---@generic T
---@param self Array<`T`>
---@param idx integer
---@return T
function Array.get(self, idx) end

---@generic T
---@param self Array<`T`>
---@return integer
function Array.get_typed_builtin(self) end

---@generic T
---@param self Array<`T`>
---@return string  # StringName
function Array.get_typed_class_name(self) end

---@generic T
---@param self Array<`T`>
---@return any
function Array.get_typed_script(self) end

---@generic T
---@param self Array<`T`>
---@param value T
---@return boolean
function Array.has(self, value) end

---@generic T
---@param self Array<`T`>
---@return integer
function Array.hash(self) end

---@generic T
---@param self Array<`T`>
---@param position integer
---@param value T
---@return Error
function Array.insert(self, position, value) end

---@generic T
---@param self Array<`T`>
---@return boolean
function Array.is_empty(self) end

---@generic T
---@param self Array<`T`>
---@return boolean
function Array.is_read_only(self) end

---@generic T
---@param self Array<`T`>
---@param array Array
---@return boolean
function Array.is_same_typed(self, array) end

---@generic T
---@param self Array<`T`>
---@return boolean
function Array.is_typed(self) end

---@generic T
---@param self Array<`T`>
function Array.make_read_only(self) end

---@generic T, TM
---@param self Array<`T`>
---@param method Callable|fun(value:T):`TM`
---@return Array<TM>
function Array.map(self, method) end

---@generic T
---@param self Array<`T`>
---@return any
function Array.max(self) end

---@generic T
---@param self Array<`T`>
---@return any
function Array.min(self) end

---@generic T
---@param self Array<`T`>
---@return T
function Array.pick_random(self) end

---@generic T
---@param self Array<`T`>
---@param position integer
---@return T
function Array.pop_at(self, position) end

---@generic T
---@param self Array<`T`>
---@return T
function Array.pop_back(self) end

---@generic T
---@param self Array<`T`>
---@return T
function Array.pop_front(self) end

---@generic T
---@param self Array<`T`>
---@param value T
function Array.push_back(self, value) end

---@generic T
---@param self Array<`T`>
---@param value T
function Array.push_front(self, value) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@param accum any?  # Default: nil
function Array.reduce(self, method, accum) end

---@generic T
---@param self Array<`T`>
---@param position integer
function Array.remove_at(self, position) end

---@generic T
---@param self Array<`T`>
---@param size integer
function Array.resize(self, size) end

---@generic T
---@param self Array<`T`>
function Array.reverse(self) end

---@generic T
---@param self Array<`T`>
---@param what T
---@param from integer?  # Default: -1
---@return integer
function Array.rfind(self, what, from) end

---@generic T
---@param self Array<`T`>
---@param method Callable|function
---@param from integer?  # Default: -1
---@return integer
function Array.rfind_custom(self, method, from) end

---@generic T
---@param self Array<`T`>
---@param index integer
---@param value T
function Array.set(self, index, value) end

---@generic T
---@param self Array<`T`>
function Array.shuffle(self) end

---@generic T
---@param self Array<`T`>
---@return integer
function Array.size(self) end

---@generic T
---@param self Array<`T`>
---@param begin integer
---@param end_ integer?  # Default: 0x7FFFFFFF
---@param step integer?  # Default: 1
---@param deep boolean?  # Default: false
function Array.slice(self, begin, end_, step, deep) end

---@generic T
---@param self Array<`T`>
function Array.sort(self) end

---@generic T
---@param self Array<`T`>
---@param func Callable|function
function Array.sort_custom(self, func) end

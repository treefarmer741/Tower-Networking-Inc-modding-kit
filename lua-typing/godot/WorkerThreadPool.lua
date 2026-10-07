---@meta _
-- Generated API for game version 0.10.0

---@class WorkerThreadPool : Object
local WorkerThreadPool = {}

---@param action (Callable|function)
---@param high_priority boolean?  # Default = false
---@param description string?  # Default = 
---@return integer
function WorkerThreadPool.add_task(action, high_priority, description) end

---@param task_id integer
---@return boolean
function WorkerThreadPool.is_task_completed(task_id) end

---@param task_id integer
---@return Error
function WorkerThreadPool.wait_for_task_completion(task_id) end

---@return integer
function WorkerThreadPool.get_caller_task_id() end

---@param action (Callable|function)
---@param elements integer
---@param tasks_needed integer?  # Default = -1
---@param high_priority boolean?  # Default = false
---@param description string?  # Default = 
---@return integer
function WorkerThreadPool.add_group_task(action, elements, tasks_needed, high_priority, description) end

---@param group_id integer
---@return boolean
function WorkerThreadPool.is_group_task_completed(group_id) end

---@param group_id integer
---@return integer
function WorkerThreadPool.get_group_processed_element_count(group_id) end

---@param group_id integer
function WorkerThreadPool.wait_for_group_task_completion(group_id) end

---@return integer
function WorkerThreadPool.get_caller_group_id() end

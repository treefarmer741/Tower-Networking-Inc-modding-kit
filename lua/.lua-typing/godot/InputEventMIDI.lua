---@meta _
-- Generated API for game version 0.9.1

---@class InputEventMIDI : InputEvent
---@field channel integer
---@field message integer
---@field pitch integer
---@field velocity integer
---@field instrument integer
---@field pressure integer
---@field controller_number integer
---@field controller_value integer
local InputEventMIDI = {}

---@param channel integer
function InputEventMIDI.set_channel(channel) end

---@return integer
function InputEventMIDI.get_channel() end

---@param message MIDIMessage
function InputEventMIDI.set_message(message) end

---@return MIDIMessage
function InputEventMIDI.get_message() end

---@param pitch integer
function InputEventMIDI.set_pitch(pitch) end

---@return integer
function InputEventMIDI.get_pitch() end

---@param velocity integer
function InputEventMIDI.set_velocity(velocity) end

---@return integer
function InputEventMIDI.get_velocity() end

---@param instrument integer
function InputEventMIDI.set_instrument(instrument) end

---@return integer
function InputEventMIDI.get_instrument() end

---@param pressure integer
function InputEventMIDI.set_pressure(pressure) end

---@return integer
function InputEventMIDI.get_pressure() end

---@param controller_number integer
function InputEventMIDI.set_controller_number(controller_number) end

---@return integer
function InputEventMIDI.get_controller_number() end

---@param controller_value integer
function InputEventMIDI.set_controller_value(controller_value) end

---@return integer
function InputEventMIDI.get_controller_value() end

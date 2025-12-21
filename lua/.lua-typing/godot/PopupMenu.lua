---@meta _
-- Generated API for game version 0.9.1

---@class PopupMenu : Popup
---@field hide_on_item_selection boolean
---@field hide_on_checkable_item_selection boolean
---@field hide_on_state_item_selection boolean
---@field submenu_popup_delay number
---@field allow_search boolean
---@field system_menu_id integer
---@field prefer_native_menu boolean
---@field item_count Items,item_
local PopupMenu = {}

---@param event InputEvent
---@param for_global_only boolean?  # Default = false
---@return boolean
function PopupMenu.activate_item_by_event(event, for_global_only) end

---@param enabled boolean
function PopupMenu.set_prefer_native_menu(enabled) end

---@return boolean
function PopupMenu.is_prefer_native_menu() end

---@return boolean
function PopupMenu.is_native_menu() end

---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_item(label, id, accel) end

---@param texture Texture2D
---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_icon_item(texture, label, id, accel) end

---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_check_item(label, id, accel) end

---@param texture Texture2D
---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_icon_check_item(texture, label, id, accel) end

---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_radio_check_item(label, id, accel) end

---@param texture Texture2D
---@param label string
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_icon_radio_check_item(texture, label, id, accel) end

---@param label string
---@param max_states integer
---@param default_state integer?  # Default = 0
---@param id integer?  # Default = -1
---@param accel Key?  # Default = 0
function PopupMenu.add_multistate_item(label, max_states, default_state, id, accel) end

---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
---@param allow_echo boolean?  # Default = false
function PopupMenu.add_shortcut(shortcut, id, global, allow_echo) end

---@param texture Texture2D
---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
---@param allow_echo boolean?  # Default = false
function PopupMenu.add_icon_shortcut(texture, shortcut, id, global, allow_echo) end

---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
function PopupMenu.add_check_shortcut(shortcut, id, global) end

---@param texture Texture2D
---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
function PopupMenu.add_icon_check_shortcut(texture, shortcut, id, global) end

---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
function PopupMenu.add_radio_check_shortcut(shortcut, id, global) end

---@param texture Texture2D
---@param shortcut Shortcut
---@param id integer?  # Default = -1
---@param global boolean?  # Default = false
function PopupMenu.add_icon_radio_check_shortcut(texture, shortcut, id, global) end

---@param label string
---@param submenu string
---@param id integer?  # Default = -1
function PopupMenu.add_submenu_item(label, submenu, id) end

---@param label string
---@param submenu PopupMenu
---@param id integer?  # Default = -1
function PopupMenu.add_submenu_node_item(label, submenu, id) end

---@param index integer
---@param text string
function PopupMenu.set_item_text(index, text) end

---@param index integer
---@param direction Control.TextDirection
function PopupMenu.set_item_text_direction(index, direction) end

---@param index integer
---@param language string
function PopupMenu.set_item_language(index, language) end

---@param index integer
---@param mode Node.AutoTranslateMode
function PopupMenu.set_item_auto_translate_mode(index, mode) end

---@param index integer
---@param icon Texture2D
function PopupMenu.set_item_icon(index, icon) end

---@param index integer
---@param width integer
function PopupMenu.set_item_icon_max_width(index, width) end

---@param index integer
---@param modulate Color
function PopupMenu.set_item_icon_modulate(index, modulate) end

---@param index integer
---@param checked boolean
function PopupMenu.set_item_checked(index, checked) end

---@param index integer
---@param id integer
function PopupMenu.set_item_id(index, id) end

---@param index integer
---@param accel Key
function PopupMenu.set_item_accelerator(index, accel) end

---@param index integer
---@param metadata Object
function PopupMenu.set_item_metadata(index, metadata) end

---@param index integer
---@param disabled boolean
function PopupMenu.set_item_disabled(index, disabled) end

---@param index integer
---@param submenu string
function PopupMenu.set_item_submenu(index, submenu) end

---@param index integer
---@param submenu PopupMenu
function PopupMenu.set_item_submenu_node(index, submenu) end

---@param index integer
---@param enable boolean
function PopupMenu.set_item_as_separator(index, enable) end

---@param index integer
---@param enable boolean
function PopupMenu.set_item_as_checkable(index, enable) end

---@param index integer
---@param enable boolean
function PopupMenu.set_item_as_radio_checkable(index, enable) end

---@param index integer
---@param tooltip string
function PopupMenu.set_item_tooltip(index, tooltip) end

---@param index integer
---@param shortcut Shortcut
---@param global boolean?  # Default = false
function PopupMenu.set_item_shortcut(index, shortcut, global) end

---@param index integer
---@param indent integer
function PopupMenu.set_item_indent(index, indent) end

---@param index integer
---@param state integer
function PopupMenu.set_item_multistate(index, state) end

---@param index integer
---@param max_states integer
function PopupMenu.set_item_multistate_max(index, max_states) end

---@param index integer
---@param disabled boolean
function PopupMenu.set_item_shortcut_disabled(index, disabled) end

---@param index integer
function PopupMenu.toggle_item_checked(index) end

---@param index integer
function PopupMenu.toggle_item_multistate(index) end

---@param index integer
---@return string
function PopupMenu.get_item_text(index) end

---@param index integer
---@return Control.TextDirection
function PopupMenu.get_item_text_direction(index) end

---@param index integer
---@return string
function PopupMenu.get_item_language(index) end

---@param index integer
---@return Node.AutoTranslateMode
function PopupMenu.get_item_auto_translate_mode(index) end

---@param index integer
---@return Texture2D
function PopupMenu.get_item_icon(index) end

---@param index integer
---@return integer
function PopupMenu.get_item_icon_max_width(index) end

---@param index integer
---@return Color
function PopupMenu.get_item_icon_modulate(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_checked(index) end

---@param index integer
---@return integer
function PopupMenu.get_item_id(index) end

---@param id integer
---@return integer
function PopupMenu.get_item_index(id) end

---@param index integer
---@return Key
function PopupMenu.get_item_accelerator(index) end

---@param index integer
---@return Object
function PopupMenu.get_item_metadata(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_disabled(index) end

---@param index integer
---@return string
function PopupMenu.get_item_submenu(index) end

---@param index integer
---@return PopupMenu
function PopupMenu.get_item_submenu_node(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_separator(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_checkable(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_radio_checkable(index) end

---@param index integer
---@return boolean
function PopupMenu.is_item_shortcut_disabled(index) end

---@param index integer
---@return string
function PopupMenu.get_item_tooltip(index) end

---@param index integer
---@return Shortcut
function PopupMenu.get_item_shortcut(index) end

---@param index integer
---@return integer
function PopupMenu.get_item_indent(index) end

---@param index integer
---@return integer
function PopupMenu.get_item_multistate_max(index) end

---@param index integer
---@return integer
function PopupMenu.get_item_multistate(index) end

---@param index integer
function PopupMenu.set_focused_item(index) end

---@return integer
function PopupMenu.get_focused_item() end

---@param count integer
function PopupMenu.set_item_count(count) end

---@return integer
function PopupMenu.get_item_count() end

---@param index integer
function PopupMenu.scroll_to_item(index) end

---@param index integer
function PopupMenu.remove_item(index) end

---@param label string?  # Default = 
---@param id integer?  # Default = -1
function PopupMenu.add_separator(label, id) end

---@param free_submenus boolean?  # Default = false
function PopupMenu.clear(free_submenus) end

---@param enable boolean
function PopupMenu.set_hide_on_item_selection(enable) end

---@return boolean
function PopupMenu.is_hide_on_item_selection() end

---@param enable boolean
function PopupMenu.set_hide_on_checkable_item_selection(enable) end

---@return boolean
function PopupMenu.is_hide_on_checkable_item_selection() end

---@param enable boolean
function PopupMenu.set_hide_on_state_item_selection(enable) end

---@return boolean
function PopupMenu.is_hide_on_state_item_selection() end

---@param seconds number
function PopupMenu.set_submenu_popup_delay(seconds) end

---@return number
function PopupMenu.get_submenu_popup_delay() end

---@param allow boolean
function PopupMenu.set_allow_search(allow) end

---@return boolean
function PopupMenu.get_allow_search() end

---@return boolean
function PopupMenu.is_system_menu() end

---@param system_menu_id NativeMenu.SystemMenus
function PopupMenu.set_system_menu(system_menu_id) end

---@return NativeMenu.SystemMenus
function PopupMenu.get_system_menu() end

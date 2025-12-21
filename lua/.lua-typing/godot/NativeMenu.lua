---@meta _
-- Generated API for game version 0.9.1

---@class NativeMenu : Object
local NativeMenu = {}

---@param feature NativeMenu.Feature
---@return boolean
function NativeMenu.has_feature(feature) end

---@param menu_id NativeMenu.SystemMenus
---@return boolean
function NativeMenu.has_system_menu(menu_id) end

---@param menu_id NativeMenu.SystemMenus
---@return RID
function NativeMenu.get_system_menu(menu_id) end

---@param menu_id NativeMenu.SystemMenus
---@return string
function NativeMenu.get_system_menu_name(menu_id) end

---@return RID
function NativeMenu.create_menu() end

---@param rid RID
---@return boolean
function NativeMenu.has_menu(rid) end

---@param rid RID
function NativeMenu.free_menu(rid) end

---@param rid RID
---@return Vector2
function NativeMenu.get_size(rid) end

---@param rid RID
---@param position Vector2i
function NativeMenu.popup(rid, position) end

---@param rid RID
---@param is_rtl boolean
function NativeMenu.set_interface_direction(rid, is_rtl) end

---@param rid RID
---@param callback (Callable|function)
function NativeMenu.set_popup_open_callback(rid, callback) end

---@param rid RID
---@return (Callable|function)
function NativeMenu.get_popup_open_callback(rid) end

---@param rid RID
---@param callback (Callable|function)
function NativeMenu.set_popup_close_callback(rid, callback) end

---@param rid RID
---@return (Callable|function)
function NativeMenu.get_popup_close_callback(rid) end

---@param rid RID
---@param width number
function NativeMenu.set_minimum_width(rid, width) end

---@param rid RID
---@return number
function NativeMenu.get_minimum_width(rid) end

---@param rid RID
---@return boolean
function NativeMenu.is_opened(rid) end

---@param rid RID
---@param label string
---@param submenu_rid RID
---@param tag Object?  # Default = <null>
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_submenu_item(rid, label, submenu_rid, tag, index) end

---@param rid RID
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_item(rid, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_check_item(rid, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_icon_item(rid, icon, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_icon_check_item(rid, icon, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_radio_check_item(rid, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_icon_radio_check_item(rid, icon, label, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param label string
---@param max_states integer
---@param default_state integer
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_multistate_item(rid, label, max_states, default_state, callback, key_callback, tag, accelerator, index) end

---@param rid RID
---@param index integer?  # Default = -1
---@return integer
function NativeMenu.add_separator(rid, index) end

---@param rid RID
---@param text string
---@return integer
function NativeMenu.find_item_index_with_text(rid, text) end

---@param rid RID
---@param tag Object
---@return integer
function NativeMenu.find_item_index_with_tag(rid, tag) end

---@param rid RID
---@param submenu_rid RID
---@return integer
function NativeMenu.find_item_index_with_submenu(rid, submenu_rid) end

---@param rid RID
---@param idx integer
---@return boolean
function NativeMenu.is_item_checked(rid, idx) end

---@param rid RID
---@param idx integer
---@return boolean
function NativeMenu.is_item_checkable(rid, idx) end

---@param rid RID
---@param idx integer
---@return boolean
function NativeMenu.is_item_radio_checkable(rid, idx) end

---@param rid RID
---@param idx integer
---@return (Callable|function)
function NativeMenu.get_item_callback(rid, idx) end

---@param rid RID
---@param idx integer
---@return (Callable|function)
function NativeMenu.get_item_key_callback(rid, idx) end

---@param rid RID
---@param idx integer
---@return Object
function NativeMenu.get_item_tag(rid, idx) end

---@param rid RID
---@param idx integer
---@return string
function NativeMenu.get_item_text(rid, idx) end

---@param rid RID
---@param idx integer
---@return RID
function NativeMenu.get_item_submenu(rid, idx) end

---@param rid RID
---@param idx integer
---@return Key
function NativeMenu.get_item_accelerator(rid, idx) end

---@param rid RID
---@param idx integer
---@return boolean
function NativeMenu.is_item_disabled(rid, idx) end

---@param rid RID
---@param idx integer
---@return boolean
function NativeMenu.is_item_hidden(rid, idx) end

---@param rid RID
---@param idx integer
---@return string
function NativeMenu.get_item_tooltip(rid, idx) end

---@param rid RID
---@param idx integer
---@return integer
function NativeMenu.get_item_state(rid, idx) end

---@param rid RID
---@param idx integer
---@return integer
function NativeMenu.get_item_max_states(rid, idx) end

---@param rid RID
---@param idx integer
---@return Texture2D
function NativeMenu.get_item_icon(rid, idx) end

---@param rid RID
---@param idx integer
---@return integer
function NativeMenu.get_item_indentation_level(rid, idx) end

---@param rid RID
---@param idx integer
---@param checked boolean
function NativeMenu.set_item_checked(rid, idx, checked) end

---@param rid RID
---@param idx integer
---@param checkable boolean
function NativeMenu.set_item_checkable(rid, idx, checkable) end

---@param rid RID
---@param idx integer
---@param checkable boolean
function NativeMenu.set_item_radio_checkable(rid, idx, checkable) end

---@param rid RID
---@param idx integer
---@param callback (Callable|function)
function NativeMenu.set_item_callback(rid, idx, callback) end

---@param rid RID
---@param idx integer
---@param callback (Callable|function)
function NativeMenu.set_item_hover_callbacks(rid, idx, callback) end

---@param rid RID
---@param idx integer
---@param key_callback (Callable|function)
function NativeMenu.set_item_key_callback(rid, idx, key_callback) end

---@param rid RID
---@param idx integer
---@param tag Object
function NativeMenu.set_item_tag(rid, idx, tag) end

---@param rid RID
---@param idx integer
---@param text string
function NativeMenu.set_item_text(rid, idx, text) end

---@param rid RID
---@param idx integer
---@param submenu_rid RID
function NativeMenu.set_item_submenu(rid, idx, submenu_rid) end

---@param rid RID
---@param idx integer
---@param keycode Key
function NativeMenu.set_item_accelerator(rid, idx, keycode) end

---@param rid RID
---@param idx integer
---@param disabled boolean
function NativeMenu.set_item_disabled(rid, idx, disabled) end

---@param rid RID
---@param idx integer
---@param hidden boolean
function NativeMenu.set_item_hidden(rid, idx, hidden) end

---@param rid RID
---@param idx integer
---@param tooltip string
function NativeMenu.set_item_tooltip(rid, idx, tooltip) end

---@param rid RID
---@param idx integer
---@param state integer
function NativeMenu.set_item_state(rid, idx, state) end

---@param rid RID
---@param idx integer
---@param max_states integer
function NativeMenu.set_item_max_states(rid, idx, max_states) end

---@param rid RID
---@param idx integer
---@param icon Texture2D
function NativeMenu.set_item_icon(rid, idx, icon) end

---@param rid RID
---@param idx integer
---@param level integer
function NativeMenu.set_item_indentation_level(rid, idx, level) end

---@param rid RID
---@return integer
function NativeMenu.get_item_count(rid) end

---@param rid RID
---@return boolean
function NativeMenu.is_system_menu(rid) end

---@param rid RID
---@param idx integer
function NativeMenu.remove_item(rid, idx) end

---@param rid RID
function NativeMenu.clear(rid) end

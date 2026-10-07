---@meta _
-- Generated API for game version 0.10.0

---@class DisplayServer : Object
local DisplayServer = {}

---@param feature DisplayServer.Feature
---@return boolean
function DisplayServer.has_feature(feature) end

---@return string
function DisplayServer.get_name() end

---@param search_callback (Callable|function)
---@param action_callback (Callable|function)
function DisplayServer.help_set_search_callbacks(search_callback, action_callback) end

---@param menu_root string
---@param open_callback (Callable|function)
---@param close_callback (Callable|function)
function DisplayServer.global_menu_set_popup_callbacks(menu_root, open_callback, close_callback) end

---@param menu_root string
---@param label string
---@param submenu string
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_submenu_item(menu_root, label, submenu, index) end

---@param menu_root string
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_item(menu_root, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_check_item(menu_root, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_icon_item(menu_root, icon, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_icon_check_item(menu_root, icon, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_radio_check_item(menu_root, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param icon Texture2D
---@param label string
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_icon_radio_check_item(menu_root, icon, label, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param label string
---@param max_states integer
---@param default_state integer
---@param callback (Callable|function)?  # Default = null::null
---@param key_callback (Callable|function)?  # Default = null::null
---@param tag Object?  # Default = <null>
---@param accelerator Key?  # Default = 0
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_multistate_item(menu_root, label, max_states, default_state, callback, key_callback, tag, accelerator, index) end

---@param menu_root string
---@param index integer?  # Default = -1
---@return integer
function DisplayServer.global_menu_add_separator(menu_root, index) end

---@param menu_root string
---@param text string
---@return integer
function DisplayServer.global_menu_get_item_index_from_text(menu_root, text) end

---@param menu_root string
---@param tag Object
---@return integer
function DisplayServer.global_menu_get_item_index_from_tag(menu_root, tag) end

---@param menu_root string
---@param idx integer
---@return boolean
function DisplayServer.global_menu_is_item_checked(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return boolean
function DisplayServer.global_menu_is_item_checkable(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return boolean
function DisplayServer.global_menu_is_item_radio_checkable(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return (Callable|function)
function DisplayServer.global_menu_get_item_callback(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return (Callable|function)
function DisplayServer.global_menu_get_item_key_callback(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return Object
function DisplayServer.global_menu_get_item_tag(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return string
function DisplayServer.global_menu_get_item_text(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return string
function DisplayServer.global_menu_get_item_submenu(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return Key
function DisplayServer.global_menu_get_item_accelerator(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return boolean
function DisplayServer.global_menu_is_item_disabled(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return boolean
function DisplayServer.global_menu_is_item_hidden(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return string
function DisplayServer.global_menu_get_item_tooltip(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return integer
function DisplayServer.global_menu_get_item_state(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return integer
function DisplayServer.global_menu_get_item_max_states(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return Texture2D
function DisplayServer.global_menu_get_item_icon(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@return integer
function DisplayServer.global_menu_get_item_indentation_level(menu_root, idx) end

---@param menu_root string
---@param idx integer
---@param checked boolean
function DisplayServer.global_menu_set_item_checked(menu_root, idx, checked) end

---@param menu_root string
---@param idx integer
---@param checkable boolean
function DisplayServer.global_menu_set_item_checkable(menu_root, idx, checkable) end

---@param menu_root string
---@param idx integer
---@param checkable boolean
function DisplayServer.global_menu_set_item_radio_checkable(menu_root, idx, checkable) end

---@param menu_root string
---@param idx integer
---@param callback (Callable|function)
function DisplayServer.global_menu_set_item_callback(menu_root, idx, callback) end

---@param menu_root string
---@param idx integer
---@param callback (Callable|function)
function DisplayServer.global_menu_set_item_hover_callbacks(menu_root, idx, callback) end

---@param menu_root string
---@param idx integer
---@param key_callback (Callable|function)
function DisplayServer.global_menu_set_item_key_callback(menu_root, idx, key_callback) end

---@param menu_root string
---@param idx integer
---@param tag Object
function DisplayServer.global_menu_set_item_tag(menu_root, idx, tag) end

---@param menu_root string
---@param idx integer
---@param text string
function DisplayServer.global_menu_set_item_text(menu_root, idx, text) end

---@param menu_root string
---@param idx integer
---@param submenu string
function DisplayServer.global_menu_set_item_submenu(menu_root, idx, submenu) end

---@param menu_root string
---@param idx integer
---@param keycode Key
function DisplayServer.global_menu_set_item_accelerator(menu_root, idx, keycode) end

---@param menu_root string
---@param idx integer
---@param disabled boolean
function DisplayServer.global_menu_set_item_disabled(menu_root, idx, disabled) end

---@param menu_root string
---@param idx integer
---@param hidden boolean
function DisplayServer.global_menu_set_item_hidden(menu_root, idx, hidden) end

---@param menu_root string
---@param idx integer
---@param tooltip string
function DisplayServer.global_menu_set_item_tooltip(menu_root, idx, tooltip) end

---@param menu_root string
---@param idx integer
---@param state integer
function DisplayServer.global_menu_set_item_state(menu_root, idx, state) end

---@param menu_root string
---@param idx integer
---@param max_states integer
function DisplayServer.global_menu_set_item_max_states(menu_root, idx, max_states) end

---@param menu_root string
---@param idx integer
---@param icon Texture2D
function DisplayServer.global_menu_set_item_icon(menu_root, idx, icon) end

---@param menu_root string
---@param idx integer
---@param level integer
function DisplayServer.global_menu_set_item_indentation_level(menu_root, idx, level) end

---@param menu_root string
---@return integer
function DisplayServer.global_menu_get_item_count(menu_root) end

---@param menu_root string
---@param idx integer
function DisplayServer.global_menu_remove_item(menu_root, idx) end

---@param menu_root string
function DisplayServer.global_menu_clear(menu_root) end

---@return table<any,any>
function DisplayServer.global_menu_get_system_menu_roots() end

---@return boolean
function DisplayServer.tts_is_speaking() end

---@return boolean
function DisplayServer.tts_is_paused() end

---@return Array<Dictionary>
function DisplayServer.tts_get_voices() end

---@param language string
---@return PackedStringArray
function DisplayServer.tts_get_voices_for_language(language) end

---@param text string
---@param voice string
---@param volume integer?  # Default = 50
---@param pitch number?  # Default = 1.0
---@param rate number?  # Default = 1.0
---@param utterance_id integer?  # Default = 0
---@param interrupt boolean?  # Default = false
function DisplayServer.tts_speak(text, voice, volume, pitch, rate, utterance_id, interrupt) end

function DisplayServer.tts_pause() end

function DisplayServer.tts_resume() end

function DisplayServer.tts_stop() end

---@param event DisplayServer.TTSUtteranceEvent
---@param callable (Callable|function)
function DisplayServer.tts_set_utterance_callback(event, callable) end

---@return boolean
function DisplayServer.is_dark_mode_supported() end

---@return boolean
function DisplayServer.is_dark_mode() end

---@return Color
function DisplayServer.get_accent_color() end

---@return Color
function DisplayServer.get_base_color() end

---@param callable (Callable|function)
function DisplayServer.set_system_theme_change_callback(callable) end

---@param mouse_mode DisplayServer.MouseMode
function DisplayServer.mouse_set_mode(mouse_mode) end

---@return DisplayServer.MouseMode
function DisplayServer.mouse_get_mode() end

---@param position Vector2i
function DisplayServer.warp_mouse(position) end

---@return Vector2i
function DisplayServer.mouse_get_position() end

---@return MouseButtonMask
function DisplayServer.mouse_get_button_state() end

---@param clipboard string
function DisplayServer.clipboard_set(clipboard) end

---@return string
function DisplayServer.clipboard_get() end

---@return Image
function DisplayServer.clipboard_get_image() end

---@return boolean
function DisplayServer.clipboard_has() end

---@return boolean
function DisplayServer.clipboard_has_image() end

---@param clipboard_primary string
function DisplayServer.clipboard_set_primary(clipboard_primary) end

---@return string
function DisplayServer.clipboard_get_primary() end

---@return Array<Rect2>
function DisplayServer.get_display_cutouts() end

---@return Rect2i
function DisplayServer.get_display_safe_area() end

---@return integer
function DisplayServer.get_screen_count() end

---@return integer
function DisplayServer.get_primary_screen() end

---@return integer
function DisplayServer.get_keyboard_focus_screen() end

---@param rect Rect2
---@return integer
function DisplayServer.get_screen_from_rect(rect) end

---@param screen integer?  # Default = -1
---@return Vector2i
function DisplayServer.screen_get_position(screen) end

---@param screen integer?  # Default = -1
---@return Vector2i
function DisplayServer.screen_get_size(screen) end

---@param screen integer?  # Default = -1
---@return Rect2i
function DisplayServer.screen_get_usable_rect(screen) end

---@param screen integer?  # Default = -1
---@return integer
function DisplayServer.screen_get_dpi(screen) end

---@param screen integer?  # Default = -1
---@return number
function DisplayServer.screen_get_scale(screen) end

---@return boolean
function DisplayServer.is_touchscreen_available() end

---@return number
function DisplayServer.screen_get_max_scale() end

---@param screen integer?  # Default = -1
---@return number
function DisplayServer.screen_get_refresh_rate(screen) end

---@param position Vector2i
---@return Color
function DisplayServer.screen_get_pixel(position) end

---@param screen integer?  # Default = -1
---@return Image
function DisplayServer.screen_get_image(screen) end

---@param rect Rect2i
---@return Image
function DisplayServer.screen_get_image_rect(rect) end

---@param orientation DisplayServer.ScreenOrientation
---@param screen integer?  # Default = -1
function DisplayServer.screen_set_orientation(orientation, screen) end

---@param screen integer?  # Default = -1
---@return DisplayServer.ScreenOrientation
function DisplayServer.screen_get_orientation(screen) end

---@param enable boolean
function DisplayServer.screen_set_keep_on(enable) end

---@return boolean
function DisplayServer.screen_is_kept_on() end

---@return PackedInt32Array
function DisplayServer.get_window_list() end

---@param position Vector2i
---@return integer
function DisplayServer.get_window_at_screen_position(position) end

---@param handle_type DisplayServer.HandleType
---@param window_id integer?  # Default = 0
---@return integer
function DisplayServer.window_get_native_handle(handle_type, window_id) end

---@return integer
function DisplayServer.window_get_active_popup() end

---@param window integer
---@param rect Rect2i
function DisplayServer.window_set_popup_safe_rect(window, rect) end

---@param window integer
---@return Rect2i
function DisplayServer.window_get_popup_safe_rect(window) end

---@param title string
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_title(title, window_id) end

---@param title string
---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_title_size(title, window_id) end

---@param region PackedVector2Array
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_mouse_passthrough(region, window_id) end

---@param window_id integer?  # Default = 0
---@return integer
function DisplayServer.window_get_current_screen(window_id) end

---@param screen integer
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_current_screen(screen, window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_position(window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_position_with_decorations(window_id) end

---@param position Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_position(position, window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_size(window_id) end

---@param size Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_size(size, window_id) end

---@param callback (Callable|function)
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_rect_changed_callback(callback, window_id) end

---@param callback (Callable|function)
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_window_event_callback(callback, window_id) end

---@param callback (Callable|function)
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_input_event_callback(callback, window_id) end

---@param callback (Callable|function)
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_input_text_callback(callback, window_id) end

---@param callback (Callable|function)
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_drop_files_callback(callback, window_id) end

---@param window_id integer?  # Default = 0
---@return integer
function DisplayServer.window_get_attached_instance_id(window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_max_size(window_id) end

---@param max_size Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_max_size(max_size, window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_min_size(window_id) end

---@param min_size Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_min_size(min_size, window_id) end

---@param window_id integer?  # Default = 0
---@return Vector2i
function DisplayServer.window_get_size_with_decorations(window_id) end

---@param window_id integer?  # Default = 0
---@return DisplayServer.WindowMode
function DisplayServer.window_get_mode(window_id) end

---@param mode DisplayServer.WindowMode
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_mode(mode, window_id) end

---@param flag DisplayServer.WindowFlags
---@param enabled boolean
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_flag(flag, enabled, window_id) end

---@param flag DisplayServer.WindowFlags
---@param window_id integer?  # Default = 0
---@return boolean
function DisplayServer.window_get_flag(flag, window_id) end

---@param offset Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_window_buttons_offset(offset, window_id) end

---@param window_id integer?  # Default = 0
---@return Vector3i
function DisplayServer.window_get_safe_title_margins(window_id) end

---@param window_id integer?  # Default = 0
function DisplayServer.window_request_attention(window_id) end

---@param window_id integer?  # Default = 0
function DisplayServer.window_move_to_foreground(window_id) end

---@param window_id integer?  # Default = 0
---@return boolean
function DisplayServer.window_is_focused(window_id) end

---@param window_id integer?  # Default = 0
---@return boolean
function DisplayServer.window_can_draw(window_id) end

---@param window_id integer
---@param parent_window_id integer
function DisplayServer.window_set_transient(window_id, parent_window_id) end

---@param window_id integer
---@param exclusive boolean
function DisplayServer.window_set_exclusive(window_id, exclusive) end

---@param active boolean
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_ime_active(active, window_id) end

---@param position Vector2i
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_ime_position(position, window_id) end

---@param vsync_mode DisplayServer.VSyncMode
---@param window_id integer?  # Default = 0
function DisplayServer.window_set_vsync_mode(vsync_mode, window_id) end

---@param window_id integer?  # Default = 0
---@return DisplayServer.VSyncMode
function DisplayServer.window_get_vsync_mode(window_id) end

---@param window_id integer?  # Default = 0
---@return boolean
function DisplayServer.window_is_maximize_allowed(window_id) end

---@return boolean
function DisplayServer.window_maximize_on_title_dbl_click() end

---@return boolean
function DisplayServer.window_minimize_on_title_dbl_click() end

---@param window_id integer?  # Default = 0
function DisplayServer.window_start_drag(window_id) end

---@param edge DisplayServer.WindowResizeEdge
---@param window_id integer?  # Default = 0
function DisplayServer.window_start_resize(edge, window_id) end

---@return integer
function DisplayServer.accessibility_should_increase_contrast() end

---@return integer
function DisplayServer.accessibility_should_reduce_animation() end

---@return integer
function DisplayServer.accessibility_should_reduce_transparency() end

---@return integer
function DisplayServer.accessibility_screen_reader_active() end

---@param window_id integer
---@param role DisplayServer.AccessibilityRole
---@return RID
function DisplayServer.accessibility_create_element(window_id, role) end

---@param parent_rid RID
---@param role DisplayServer.AccessibilityRole
---@param insert_pos integer?  # Default = -1
---@return RID
function DisplayServer.accessibility_create_sub_element(parent_rid, role, insert_pos) end

---@param parent_rid RID
---@param shaped_text RID
---@param min_height number
---@param insert_pos integer?  # Default = -1
---@return RID
function DisplayServer.accessibility_create_sub_text_edit_elements(parent_rid, shaped_text, min_height, insert_pos) end

---@param id RID
---@return boolean
function DisplayServer.accessibility_has_element(id) end

---@param id RID
function DisplayServer.accessibility_free_element(id) end

---@param id RID
---@param meta Object
function DisplayServer.accessibility_element_set_meta(id, meta) end

---@param id RID
---@return Object
function DisplayServer.accessibility_element_get_meta(id) end

---@param window_id integer
---@param rect_out Rect2
---@param rect_in Rect2
function DisplayServer.accessibility_set_window_rect(window_id, rect_out, rect_in) end

---@param window_id integer
---@param focused boolean
function DisplayServer.accessibility_set_window_focused(window_id, focused) end

---@param id RID
function DisplayServer.accessibility_update_set_focus(id) end

---@param window_id integer
---@return RID
function DisplayServer.accessibility_get_window_root(window_id) end

---@param id RID
---@param role DisplayServer.AccessibilityRole
function DisplayServer.accessibility_update_set_role(id, role) end

---@param id RID
---@param name string
function DisplayServer.accessibility_update_set_name(id, name) end

---@param id RID
---@param name string
function DisplayServer.accessibility_update_set_extra_info(id, name) end

---@param id RID
---@param description string
function DisplayServer.accessibility_update_set_description(id, description) end

---@param id RID
---@param value string
function DisplayServer.accessibility_update_set_value(id, value) end

---@param id RID
---@param tooltip string
function DisplayServer.accessibility_update_set_tooltip(id, tooltip) end

---@param id RID
---@param p_rect Rect2
function DisplayServer.accessibility_update_set_bounds(id, p_rect) end

---@param id RID
---@param transform Transform2D
function DisplayServer.accessibility_update_set_transform(id, transform) end

---@param id RID
---@param child_id RID
function DisplayServer.accessibility_update_add_child(id, child_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_controls(id, related_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_details(id, related_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_described_by(id, related_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_flow_to(id, related_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_labeled_by(id, related_id) end

---@param id RID
---@param related_id RID
function DisplayServer.accessibility_update_add_related_radio_group(id, related_id) end

---@param id RID
---@param other_id RID
function DisplayServer.accessibility_update_set_active_descendant(id, other_id) end

---@param id RID
---@param other_id RID
function DisplayServer.accessibility_update_set_next_on_line(id, other_id) end

---@param id RID
---@param other_id RID
function DisplayServer.accessibility_update_set_previous_on_line(id, other_id) end

---@param id RID
---@param group_id RID
function DisplayServer.accessibility_update_set_member_of(id, group_id) end

---@param id RID
---@param other_id RID
function DisplayServer.accessibility_update_set_in_page_link_target(id, other_id) end

---@param id RID
---@param other_id RID
function DisplayServer.accessibility_update_set_error_message(id, other_id) end

---@param id RID
---@param live DisplayServer.AccessibilityLiveMode
function DisplayServer.accessibility_update_set_live(id, live) end

---@param id RID
---@param action DisplayServer.AccessibilityAction
---@param callable (Callable|function)
function DisplayServer.accessibility_update_add_action(id, action, callable) end

---@param id RID
---@param action_id integer
---@param action_description string
function DisplayServer.accessibility_update_add_custom_action(id, action_id, action_description) end

---@param id RID
---@param count integer
function DisplayServer.accessibility_update_set_table_row_count(id, count) end

---@param id RID
---@param count integer
function DisplayServer.accessibility_update_set_table_column_count(id, count) end

---@param id RID
---@param index integer
function DisplayServer.accessibility_update_set_table_row_index(id, index) end

---@param id RID
---@param index integer
function DisplayServer.accessibility_update_set_table_column_index(id, index) end

---@param id RID
---@param row_index integer
---@param column_index integer
function DisplayServer.accessibility_update_set_table_cell_position(id, row_index, column_index) end

---@param id RID
---@param row_span integer
---@param column_span integer
function DisplayServer.accessibility_update_set_table_cell_span(id, row_span, column_span) end

---@param id RID
---@param size integer
function DisplayServer.accessibility_update_set_list_item_count(id, size) end

---@param id RID
---@param index integer
function DisplayServer.accessibility_update_set_list_item_index(id, index) end

---@param id RID
---@param level integer
function DisplayServer.accessibility_update_set_list_item_level(id, level) end

---@param id RID
---@param selected boolean
function DisplayServer.accessibility_update_set_list_item_selected(id, selected) end

---@param id RID
---@param expanded boolean
function DisplayServer.accessibility_update_set_list_item_expanded(id, expanded) end

---@param id RID
---@param popup DisplayServer.AccessibilityPopupType
function DisplayServer.accessibility_update_set_popup_type(id, popup) end

---@param id RID
---@param checekd boolean
function DisplayServer.accessibility_update_set_checked(id, checekd) end

---@param id RID
---@param position number
function DisplayServer.accessibility_update_set_num_value(id, position) end

---@param id RID
---@param min number
---@param max number
function DisplayServer.accessibility_update_set_num_range(id, min, max) end

---@param id RID
---@param step number
function DisplayServer.accessibility_update_set_num_step(id, step) end

---@param id RID
---@param jump number
function DisplayServer.accessibility_update_set_num_jump(id, jump) end

---@param id RID
---@param position number
function DisplayServer.accessibility_update_set_scroll_x(id, position) end

---@param id RID
---@param min number
---@param max number
function DisplayServer.accessibility_update_set_scroll_x_range(id, min, max) end

---@param id RID
---@param position number
function DisplayServer.accessibility_update_set_scroll_y(id, position) end

---@param id RID
---@param min number
---@param max number
function DisplayServer.accessibility_update_set_scroll_y_range(id, min, max) end

---@param id RID
---@param underline boolean
---@param strikethrough boolean
---@param overline boolean
function DisplayServer.accessibility_update_set_text_decorations(id, underline, strikethrough, overline) end

---@param id RID
---@param align HorizontalAlignment
function DisplayServer.accessibility_update_set_text_align(id, align) end

---@param id RID
---@param text_start_id RID
---@param start_char integer
---@param text_end_id RID
---@param end_char integer
function DisplayServer.accessibility_update_set_text_selection(id, text_start_id, start_char, text_end_id, end_char) end

---@param id RID
---@param flag DisplayServer.AccessibilityFlags
---@param value boolean
function DisplayServer.accessibility_update_set_flag(id, flag, value) end

---@param id RID
---@param classname string
function DisplayServer.accessibility_update_set_classname(id, classname) end

---@param id RID
---@param placeholder string
function DisplayServer.accessibility_update_set_placeholder(id, placeholder) end

---@param id RID
---@param language string
function DisplayServer.accessibility_update_set_language(id, language) end

---@param id RID
---@param vertical boolean
function DisplayServer.accessibility_update_set_text_orientation(id, vertical) end

---@param id RID
---@param vertical boolean
function DisplayServer.accessibility_update_set_list_orientation(id, vertical) end

---@param id RID
---@param shortcut string
function DisplayServer.accessibility_update_set_shortcut(id, shortcut) end

---@param id RID
---@param url string
function DisplayServer.accessibility_update_set_url(id, url) end

---@param id RID
---@param description string
function DisplayServer.accessibility_update_set_role_description(id, description) end

---@param id RID
---@param description string
function DisplayServer.accessibility_update_set_state_description(id, description) end

---@param id RID
---@param color Color
function DisplayServer.accessibility_update_set_color_value(id, color) end

---@param id RID
---@param color Color
function DisplayServer.accessibility_update_set_background_color(id, color) end

---@param id RID
---@param color Color
function DisplayServer.accessibility_update_set_foreground_color(id, color) end

---@return Vector2i
function DisplayServer.ime_get_selection() end

---@return string
function DisplayServer.ime_get_text() end

---@param existing_text string
---@param position Rect2?  # Default = [P: (0.0, 0.0), S: (0.0, 0.0)]
---@param type DisplayServer.VirtualKeyboardType?  # Default = 0
---@param max_length integer?  # Default = -1
---@param cursor_start integer?  # Default = -1
---@param cursor_end integer?  # Default = -1
function DisplayServer.virtual_keyboard_show(existing_text, position, type, max_length, cursor_start, cursor_end) end

function DisplayServer.virtual_keyboard_hide() end

---@return integer
function DisplayServer.virtual_keyboard_get_height() end

---@return boolean
function DisplayServer.has_hardware_keyboard() end

---@param callable (Callable|function)
function DisplayServer.set_hardware_keyboard_connection_change_callback(callable) end

---@param shape DisplayServer.CursorShape
function DisplayServer.cursor_set_shape(shape) end

---@return DisplayServer.CursorShape
function DisplayServer.cursor_get_shape() end

---@param cursor Resource
---@param shape DisplayServer.CursorShape?  # Default = 0
---@param hotspot Vector2?  # Default = (0.0, 0.0)
function DisplayServer.cursor_set_custom_image(cursor, shape, hotspot) end

---@return boolean
function DisplayServer.get_swap_cancel_ok() end

---@param process_id integer
function DisplayServer.enable_for_stealing_focus(process_id) end

---@param title string
---@param description string
---@param buttons PackedStringArray
---@param callback (Callable|function)
---@return Error
function DisplayServer.dialog_show(title, description, buttons, callback) end

---@param title string
---@param description string
---@param existing_text string
---@param callback (Callable|function)
---@return Error
function DisplayServer.dialog_input_text(title, description, existing_text, callback) end

---@param title string
---@param current_directory string
---@param filename string
---@param show_hidden boolean
---@param mode DisplayServer.FileDialogMode
---@param filters PackedStringArray
---@param callback (Callable|function)
---@param parent_window_id integer?  # Default = 0
---@return Error
function DisplayServer.file_dialog_show(title, current_directory, filename, show_hidden, mode, filters, callback, parent_window_id) end

---@param title string
---@param current_directory string
---@param root string
---@param filename string
---@param show_hidden boolean
---@param mode DisplayServer.FileDialogMode
---@param filters PackedStringArray
---@param options Array<Dictionary>
---@param callback (Callable|function)
---@param parent_window_id integer?  # Default = 0
---@return Error
function DisplayServer.file_dialog_with_options_show(title, current_directory, root, filename, show_hidden, mode, filters, options, callback, parent_window_id) end

function DisplayServer.beep() end

---@return integer
function DisplayServer.keyboard_get_layout_count() end

---@return integer
function DisplayServer.keyboard_get_current_layout() end

---@param index integer
function DisplayServer.keyboard_set_current_layout(index) end

---@param index integer
---@return string
function DisplayServer.keyboard_get_layout_language(index) end

---@param index integer
---@return string
function DisplayServer.keyboard_get_layout_name(index) end

---@param keycode Key
---@return Key
function DisplayServer.keyboard_get_keycode_from_physical(keycode) end

---@param keycode Key
---@return Key
function DisplayServer.keyboard_get_label_from_physical(keycode) end

function DisplayServer.show_emoji_and_symbol_picker() end

---@param callback (Callable|function)
---@return boolean
function DisplayServer.color_picker(callback) end

function DisplayServer.process_events() end

function DisplayServer.force_process_and_drop_events() end

---@param filename string
function DisplayServer.set_native_icon(filename) end

---@param image Image
function DisplayServer.set_icon(image) end

---@param icon Texture2D
---@param tooltip string
---@param callback (Callable|function)
---@return integer
function DisplayServer.create_status_indicator(icon, tooltip, callback) end

---@param id integer
---@param icon Texture2D
function DisplayServer.status_indicator_set_icon(id, icon) end

---@param id integer
---@param tooltip string
function DisplayServer.status_indicator_set_tooltip(id, tooltip) end

---@param id integer
---@param menu_rid RID
function DisplayServer.status_indicator_set_menu(id, menu_rid) end

---@param id integer
---@param callback (Callable|function)
function DisplayServer.status_indicator_set_callback(id, callback) end

---@param id integer
---@return Rect2
function DisplayServer.status_indicator_get_rect(id) end

---@param id integer
function DisplayServer.delete_status_indicator(id) end

---@return integer
function DisplayServer.tablet_get_driver_count() end

---@param idx integer
---@return string
function DisplayServer.tablet_get_driver_name(idx) end

---@return string
function DisplayServer.tablet_get_current_driver() end

---@param name string
function DisplayServer.tablet_set_current_driver(name) end

---@return boolean
function DisplayServer.is_window_transparency_available() end

---@param object Object
function DisplayServer.register_additional_output(object) end

---@param object Object
function DisplayServer.unregister_additional_output(object) end

---@return boolean
function DisplayServer.has_additional_outputs() end

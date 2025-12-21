---@meta _
-- Generated API for game version 0.9.1

---@class WebView : Control
---@field full_window_size boolean
---@field url string
---@field html string
---@field transparent boolean
---@field background_color Color
---@field devtools boolean
---@field headers table<any,any>
---@field user_agent string
---@field zoom_hotkeys boolean
---@field clipboard boolean
---@field incognito boolean
---@field focused_when_created boolean
---@field forward_input_events boolean
---@field autoplay boolean
local WebView = {}

function WebView.update_webview() end

function WebView.create_webview() end

---@param message string
function WebView.post_message(message) end

function WebView.resize() end

---@param script string
function WebView.eval(script) end

function WebView.update_visibility() end

---@param visibility boolean
function WebView.set_visible(visibility) end

---@param html string
function WebView.load_html(html) end

---@param url string
function WebView.load_url(url) end

function WebView.clear_all_browsing_data() end

function WebView.close_devtools() end

function WebView.open_devtools() end

---@return boolean
function WebView.is_devtools_open() end

function WebView.focus() end

function WebView.focus_parent() end

function WebView.print() end

function WebView.reload() end

---@return boolean
function WebView.get_full_window_size() end

---@param full_window_size boolean
function WebView.set_full_window_size(full_window_size) end

---@return string
function WebView.get_url() end

---@param url string
function WebView.set_url(url) end

---@return string
function WebView.get_html() end

---@param html string
function WebView.set_html(html) end

---@return boolean
function WebView.get_transparent() end

---@param transparent boolean
function WebView.set_transparent(transparent) end

---@return Color
function WebView.get_background_color() end

---@param background_color Color
function WebView.set_background_color(background_color) end

---@return boolean
function WebView.get_devtools() end

---@param devtools boolean
function WebView.set_devtools(devtools) end

---@return table<any,any>
function WebView.get_headers() end

---@param headers table<any,any>
function WebView.set_headers(headers) end

---@return string
function WebView.get_user_agent() end

---@param user_agent string
function WebView.set_user_agent(user_agent) end

---@return boolean
function WebView.get_zoom_hotkeys() end

---@param zoom_hotkeys boolean
function WebView.set_zoom_hotkeys(zoom_hotkeys) end

---@return boolean
function WebView.get_clipboard() end

---@param clipboard boolean
function WebView.set_clipboard(clipboard) end

---@return boolean
function WebView.get_incognito() end

---@param incognito boolean
function WebView.set_incognito(incognito) end

---@return boolean
function WebView.get_focused_when_created() end

---@param focused_when_created boolean
function WebView.set_focused_when_created(focused_when_created) end

---@return boolean
function WebView.get_forward_input_events() end

---@param forward_input_events boolean
function WebView.set_forward_input_events(forward_input_events) end

---@return boolean
function WebView.get_autoplay() end

---@param autoplay boolean
function WebView.set_autoplay(autoplay) end

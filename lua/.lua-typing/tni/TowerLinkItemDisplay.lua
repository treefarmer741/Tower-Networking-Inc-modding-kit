---@meta _
-- Generated API for game version 0.10.0

---@class TowerLinkItemDisplay : Container
---@field bw_load_color Array<any> # Constant value: ["00ccee", "33cccc", "00ff99", "00ffcc", "00ff00", "33cc33", "66ff33", "99ff33", "ccff33", "ffff00", "ff9900", "ff0000"]
---@field tower_link TowerNetworkLink
---@field aplayer AnimationPlayer
---@field idlbl Label
---@field lnkstat Label
---@field mpanel Container
---@field m_btn Button
---@field actdeac_btn Button
---@field decom_btn Button
---@field lbla Label
---@field anlbl Label
---@field lblb Label
---@field costlbl Label
---@field stcostlbl Label
---@field lnktyplbl Label
---@field bwlbl RichTextLabel
---@field bw2lbl RichTextLabel
---@field short_linkty Label
---@field link_sz_sel OptionButton
---@field link_new_bw Label
---@field link_new_setup_cost Label
---@field link_new_daily_cost Label
---@field upgrade_btn Button
---@field quote_ctn Container
---@field keyword string
local TowerLinkItemDisplay = {}

function TowerLinkItemDisplay.update_labels() end

---@param ld_ratio number
---@return string
function TowerLinkItemDisplay.get_load_color(ld_ratio) end

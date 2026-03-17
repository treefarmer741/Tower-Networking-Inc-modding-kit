---@meta _
-- Generated API for game version 0.10.0

---@class GameOptions : VBoxContainer
---@field startcash_in Slider
---@field dayperiod_in Slider
---@field freeplay_in OptionButton
---@field powerfeewv_in OptionButton
---@field autodns_in OptionButton
---@field printch_in OptionButton
---@field devinfbw_in OptionButton
---@field devcollide_in OptionButton
---@field dbgaccbw_in OptionButton
---@field maxdaysdebt_in Slider
---@field userfeemul_in Slider
---@field dailyadmexp_in Slider
---@field usergrcmul_in Slider
---@field slabrtmul_in Slider
---@field sockinst_in Slider
---@field devmalfp_in Slider
---@field powoutfp_in Slider
---@field powsrgfp_in Slider
---@field fbpermul_in Slider
---@field warpermul_in Slider
---@field fbblim_in Slider
---@field admfs_in Slider
---@field dnslocl_in OptionButton
---@field progaut_in OptionButton
---@field floor_mdq_in Slider
---@field serhintworld_in OptionButton
---@field cybatkp_in Slider
---@field reqnwad_in OptionButton
---@field maxnwl_in Slider
---@field userhwr_in Slider
---@field drdfee_in Slider
---@field sttech_in OptionButton
local GameOptions = {}

function GameOptions.do_localize() end

---@param playopts PlayOptions
function GameOptions.update_playoptions(playopts) end

---@param playopts PlayOptions
---@param lock_options boolean?  # Default = false
function GameOptions.set_inputs(playopts, lock_options) end

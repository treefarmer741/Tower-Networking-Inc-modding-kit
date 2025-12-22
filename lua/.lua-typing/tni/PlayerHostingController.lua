---@meta _
-- Generated API for game version 0.9.1

---@class PlayerHostingController : Node
---@field ph_scn string # Constant value: <PackedScene>
---@field mpspawn MultiplayerSpawner
---@field registered_fqdns Array<string>
---@field player_hostings Array<PlayerHosting>
local PlayerHostingController = {}

---@param fqdn string
---@return PlayerHosting
function PlayerHostingController.get_ph(fqdn) end

function PlayerHostingController.reset_for_day() end

---@param breakdown Object
function PlayerHostingController.populate_bill_breakdown(breakdown) end

---@param _ppu number
---@param use_spec_csv string
---@return integer
function PlayerHostingController.get_projected_domain_registration_cost(_ppu, use_spec_csv) end

---@param fqdn string
---@param use_spec_csv string
---@param ppu number
function PlayerHostingController.register_player_hosting(fqdn, use_spec_csv, ppu) end

---@param fqdn Object
function PlayerHostingController.deregister_player_hosting(fqdn) end

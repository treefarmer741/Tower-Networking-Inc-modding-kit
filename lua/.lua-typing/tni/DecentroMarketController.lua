---@meta _
-- Generated API for game version 0.9.1

---@class DecentroMarketController : Node
---@field inverse_price_per_user number # Constant value: 10.0
---@field price_drift number # Constant value: 5.0
---@field price_spread_min integer # Constant value: 1
---@field price_spread_max integer # Constant value: 50
---@field fair_market_price integer
---@field buying_price integer
---@field selling_price integer
---@field arbitrage_price integer
---@field volatile_heat integer
local DecentroMarketController = {}

---@param trade_quantity Object
function DecentroMarketController.adjust_price(trade_quantity) end

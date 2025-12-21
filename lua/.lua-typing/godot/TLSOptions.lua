---@meta _
-- Generated API for game version 0.9.1

---@class TLSOptions : RefCounted
local TLSOptions = {}

---@param trusted_chain X509Certificate?  # Default = <Object#null>
---@param common_name_override string?  # Default = 
---@return TLSOptions
function TLSOptions.client(trusted_chain, common_name_override) end

---@param trusted_chain X509Certificate?  # Default = <Object#null>
---@return TLSOptions
function TLSOptions.client_unsafe(trusted_chain) end

---@param key CryptoKey
---@param certificate X509Certificate
---@return TLSOptions
function TLSOptions.server(key, certificate) end

---@return boolean
function TLSOptions.is_server() end

---@return boolean
function TLSOptions.is_unsafe_client() end

---@return string
function TLSOptions.get_common_name_override() end

---@return X509Certificate
function TLSOptions.get_trusted_ca_chain() end

---@return CryptoKey
function TLSOptions.get_private_key() end

---@return X509Certificate
function TLSOptions.get_own_certificate() end

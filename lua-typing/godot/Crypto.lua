---@meta _
-- Generated API for game version 0.10.0

---@class Crypto : RefCounted
local Crypto = {}

---@param size integer
---@return PackedByteArray
function Crypto.generate_random_bytes(size) end

---@param size integer
---@return CryptoKey
function Crypto.generate_rsa(size) end

---@param key CryptoKey
---@param issuer_name string?  # Default = CN=myserver,O=myorganisation,C=IT
---@param not_before string?  # Default = 20140101000000
---@param not_after string?  # Default = 20340101000000
---@return X509Certificate
function Crypto.generate_self_signed_certificate(key, issuer_name, not_before, not_after) end

---@param hash_type HashingContext.HashType
---@param hash PackedByteArray
---@param key CryptoKey
---@return PackedByteArray
function Crypto.sign(hash_type, hash, key) end

---@param hash_type HashingContext.HashType
---@param hash PackedByteArray
---@param signature PackedByteArray
---@param key CryptoKey
---@return boolean
function Crypto.verify(hash_type, hash, signature, key) end

---@param key CryptoKey
---@param plaintext PackedByteArray
---@return PackedByteArray
function Crypto.encrypt(key, plaintext) end

---@param key CryptoKey
---@param ciphertext PackedByteArray
---@return PackedByteArray
function Crypto.decrypt(key, ciphertext) end

---@param hash_type HashingContext.HashType
---@param key PackedByteArray
---@param msg PackedByteArray
---@return PackedByteArray
function Crypto.hmac_digest(hash_type, key, msg) end

---@param trusted PackedByteArray
---@param received PackedByteArray
---@return boolean
function Crypto.constant_time_compare(trusted, received) end

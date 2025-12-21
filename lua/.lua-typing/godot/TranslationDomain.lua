---@meta _
-- Generated API for game version 0.9.1

---@class TranslationDomain : RefCounted
---@field enabled boolean
---@field pseudolocalization_enabled boolean
---@field pseudolocalization_accents_enabled boolean
---@field pseudolocalization_double_vowels_enabled boolean
---@field pseudolocalization_fake_bidi_enabled boolean
---@field pseudolocalization_override_enabled boolean
---@field pseudolocalization_skip_placeholders_enabled boolean
---@field pseudolocalization_expansion_ratio number
---@field pseudolocalization_prefix string
---@field pseudolocalization_suffix string
local TranslationDomain = {}

---@param locale string
---@return Translation
function TranslationDomain.get_translation_object(locale) end

---@param translation Translation
function TranslationDomain.add_translation(translation) end

---@param translation Translation
function TranslationDomain.remove_translation(translation) end

function TranslationDomain.clear() end

---@param message string
---@param context string?  # Default = 
---@return string
function TranslationDomain.translate(message, context) end

---@param message string
---@param message_plural string
---@param n integer
---@param context string?  # Default = 
---@return string
function TranslationDomain.translate_plural(message, message_plural, n, context) end

---@return string
function TranslationDomain.get_locale_override() end

---@param locale string
function TranslationDomain.set_locale_override(locale) end

---@return boolean
function TranslationDomain.is_enabled() end

---@param enabled boolean
function TranslationDomain.set_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_accents_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_accents_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_double_vowels_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_double_vowels_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_fake_bidi_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_fake_bidi_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_override_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_override_enabled(enabled) end

---@return boolean
function TranslationDomain.is_pseudolocalization_skip_placeholders_enabled() end

---@param enabled boolean
function TranslationDomain.set_pseudolocalization_skip_placeholders_enabled(enabled) end

---@return number
function TranslationDomain.get_pseudolocalization_expansion_ratio() end

---@param ratio number
function TranslationDomain.set_pseudolocalization_expansion_ratio(ratio) end

---@return string
function TranslationDomain.get_pseudolocalization_prefix() end

---@param prefix string
function TranslationDomain.set_pseudolocalization_prefix(prefix) end

---@return string
function TranslationDomain.get_pseudolocalization_suffix() end

---@param suffix string
function TranslationDomain.set_pseudolocalization_suffix(suffix) end

---@param message string
---@return string
function TranslationDomain.pseudolocalize(message) end

---@meta _
-- Generated API for game version 0.12.1

---@class TranslationServer : Object
---@field pseudolocalization_enabled boolean
local TranslationServer = {}

---@param locale string
function TranslationServer.set_locale(locale) end

---@return string
function TranslationServer.get_locale() end

---@return string
function TranslationServer.get_tool_locale() end

---@param locale_a string
---@param locale_b string
---@return integer
function TranslationServer.compare_locales(locale_a, locale_b) end

---@param locale string
---@param add_defaults boolean?  # Default = false
---@return string
function TranslationServer.standardize_locale(locale, add_defaults) end

---@return PackedStringArray
function TranslationServer.get_all_languages() end

---@param language string
---@return string
function TranslationServer.get_language_name(language) end

---@return PackedStringArray
function TranslationServer.get_all_scripts() end

---@param script string
---@return string
function TranslationServer.get_script_name(script) end

---@return PackedStringArray
function TranslationServer.get_all_countries() end

---@param country string
---@return string
function TranslationServer.get_country_name(country) end

---@param locale string
---@return string
function TranslationServer.get_locale_name(locale) end

---@param locale string
---@return string
function TranslationServer.get_plural_rules(locale) end

---@param message string
---@param context string?  # Default = 
---@return string
function TranslationServer.translate(message, context) end

---@param message string
---@param plural_message string
---@param n integer
---@param context string?  # Default = 
---@return string
function TranslationServer.translate_plural(message, plural_message, n, context) end

---@param translation Translation
function TranslationServer.add_translation(translation) end

---@param translation Translation
function TranslationServer.remove_translation(translation) end

---@param locale string
---@return Translation
function TranslationServer.get_translation_object(locale) end

---@return Array<Translation>
function TranslationServer.get_translations() end

---@param locale string
---@param exact boolean
---@return Array<Translation>
function TranslationServer.find_translations(locale, exact) end

---@param locale string
---@param exact boolean
---@return boolean
function TranslationServer.has_translation_for_locale(locale, exact) end

---@param translation Translation
---@return boolean
function TranslationServer.has_translation(translation) end

---@param domain string
---@return boolean
function TranslationServer.has_domain(domain) end

---@param domain string
---@return TranslationDomain
function TranslationServer.get_or_add_domain(domain) end

---@param domain string
function TranslationServer.remove_domain(domain) end

function TranslationServer.clear() end

---@return PackedStringArray
function TranslationServer.get_loaded_locales() end

---@param number string
---@param locale string
---@return string
function TranslationServer.format_number(number, locale) end

---@param locale string
---@return string
function TranslationServer.get_percent_sign(locale) end

---@param number string
---@param locale string
---@return string
function TranslationServer.parse_number(number, locale) end

---@return boolean
function TranslationServer.is_pseudolocalization_enabled() end

---@param enabled boolean
function TranslationServer.set_pseudolocalization_enabled(enabled) end

function TranslationServer.reload_pseudolocalization() end

---@param message string
---@return string
function TranslationServer.pseudolocalize(message) end

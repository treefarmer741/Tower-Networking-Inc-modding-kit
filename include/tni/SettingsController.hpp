#ifndef TNI_API_HEADER_SETTINGSCONTROLLER
#define TNI_API_HEADER_SETTINGSCONTROLLER
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SettingsController : public Node {
	using Node::Node;

	constexpr SettingsController(Node base) : Node{base} {}
	constexpr SettingsController(uint64_t addr) : Node{addr} {}
	constexpr SettingsController(Object obj) : SettingsController{obj.address()} {}
	SettingsController(Variant variant) : SettingsController{variant.as_object().address()} {}


	PROPERTY(current_settings, BaseSettings);
	PROPERTY(is_configured, bool);

	inline void initialize_and_configure_settings(String settings_class_path, String settings_file_path);
	inline void persist_settings_to_file();
	inline void restore_or_create_settings_from_file();
	inline void reset_defaults(bool persist);
	inline void apply(bool persist);
};

#include "BaseSettings.hpp"

inline void SettingsController::initialize_and_configure_settings(String settings_class_path, String settings_file_path) { voidcall("initialize_and_configure_settings", settings_class_path, settings_file_path); }
inline void SettingsController::persist_settings_to_file() { voidcall("persist_settings_to_file"); }
inline void SettingsController::restore_or_create_settings_from_file() { voidcall("restore_or_create_settings_from_file"); }
inline void SettingsController::reset_defaults(bool persist) { voidcall("reset_defaults", persist); }
inline void SettingsController::apply(bool persist) { voidcall("apply", persist); }

#endif

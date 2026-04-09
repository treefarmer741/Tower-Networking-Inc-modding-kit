#ifndef TNI_API_HEADER_MODMANAGER
#define TNI_API_HEADER_MODMANAGER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModManager : public Control {
	using Control::Control;

	constexpr ModManager(Control base) : Control{base} {}
	constexpr ModManager(uint64_t addr) : Control{addr} {}
	constexpr ModManager(Object obj) : ModManager{obj.address()} {}
	ModManager(Variant variant) : ModManager{variant.as_object().address()} {}

	enum DependencyStatus : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		LOADED = 0,
		UNLOADED = 1,
		WRONG_VERSION = 2,
		MISSING = 3,
	};

	PROPERTY(mod_list, VBoxContainer);
	PROPERTY(mod_preset_label, Label);
	PROPERTY(preset_save_load_button, MenuButton);
	PROPERTY(mod_info_container, VBoxContainer);
	PROPERTY(mod_name_label, RichTextLabel);
	PROPERTY(mod_tabs, TabContainer);
	PROPERTY(mod_info, VBoxContainer);
	PROPERTY(mod_info_description, RichTextLabel);
	PROPERTY(mod_info_dependencies_spacer, Separator);
	PROPERTY(mod_info_dependencies_label, Label);
	PROPERTY(mod_info_dependencies, HFlowContainer);
	PROPERTY(mod_info_optional_dependencies_spacer, Separator);
	PROPERTY(mod_info_optional_dependencies_label, Label);
	PROPERTY(mod_info_optional_dependencies, HFlowContainer);
	PROPERTY(mod_info_incompatibilities_spacer, Separator);
	PROPERTY(mod_info_incompatibilities_label, Label);
	PROPERTY(mod_info_incompatibilities, HFlowContainer);
	PROPERTY(mod_info_load_before_spacer, Separator);
	PROPERTY(mod_info_load_before_label, Label);
	PROPERTY(mod_info_load_before, HFlowContainer);
	PROPERTY(mod_info_load_after_spacer, Separator);
	PROPERTY(mod_info_load_after_label, Label);
	PROPERTY(mod_info_load_after, HFlowContainer);
	PROPERTY(mod_info_authors, Label);
	PROPERTY(mod_info_links, HBoxContainer);
	PROPERTY(mod_config, VBoxContainer);
	PROPERTY(mod_config_no_options_label, Label);
	PROPERTY(mod_stats, VBoxContainer);
	PROPERTY(mod_stats_stats_label, RichTextLabel);
	PROPERTY(selected_manifest, ModManifest);
	PROPERTY(preset, ModPreset);
	PROPERTY(preset_modified, bool);

	inline void fade_in();
	inline void fade_out();
	inline void update_preset_label();
	inline void update_mod_list();
	inline void update_mod_tabs();
	inline void update_mod_info_tab();
	inline void update_mod_config_tab();
	inline void update_mod_stats_tab();
};

#include "ModManifest.hpp"
#include "ModPreset.hpp"

inline void ModManager::fade_in() { this->voidcall("fade_in"); }
inline void ModManager::fade_out() { this->voidcall("fade_out"); }
inline void ModManager::update_preset_label() { this->voidcall("update_preset_label"); }
inline void ModManager::update_mod_list() { this->voidcall("update_mod_list"); }
inline void ModManager::update_mod_tabs() { this->voidcall("update_mod_tabs"); }
inline void ModManager::update_mod_info_tab() { this->voidcall("update_mod_info_tab"); }
inline void ModManager::update_mod_config_tab() { this->voidcall("update_mod_config_tab"); }
inline void ModManager::update_mod_stats_tab() { this->voidcall("update_mod_stats_tab"); }

#endif

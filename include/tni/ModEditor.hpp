#ifndef TNI_API_HEADER_MODEDITOR
#define TNI_API_HEADER_MODEDITOR
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct ModEditor : public Control {
	using Control::Control;

	constexpr ModEditor(Control base) : Control{base} {}
	constexpr ModEditor(uint64_t addr) : Control{addr} {}
	constexpr ModEditor(Object obj) : ModEditor{obj.address()} {}
	ModEditor(Variant variant) : ModEditor{variant.as_object().address()} {}

	static constexpr double CAMERA_SMOOTH_SPEED = 50.0;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t SCENE_TREE_BTN_ID_DELETE = 1000;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(mod_manifest, ModManifest);
	PROPERTY(scene_tree_items, Variant);
	PROPERTY(scene_tree_nodes, Variant);
	PROPERTY(scene_tree_specs, Variant);
	PROPERTY(selected_spec, RefCounted);
	PROPERTY(selected_node, Node);
	PROPERTY(asset_browser_path, Variant);
	PROPERTY(dragging_camera_pos, Variant);
	PROPERTY(target_node, Node2D);

	inline void fade_in();
	inline void fade_out();
};

#include "ModManifest.hpp"

inline void ModEditor::fade_in() { this->voidcall("fade_in"); }
inline void ModEditor::fade_out() { this->voidcall("fade_out"); }

#endif

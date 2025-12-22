#ifndef TNI_API_HEADER_THESECRETARIAT
#define TNI_API_HEADER_THESECRETARIAT
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TheSecretariat : public Container {
	using Container::Container;

	constexpr TheSecretariat(Container base) : Container{base} {}
	constexpr TheSecretariat(uint64_t addr) : Container{addr} {}
	constexpr TheSecretariat(Object obj) : TheSecretariat{obj.address()} {}
	TheSecretariat(Variant variant) : TheSecretariat{variant.as_object().address()} {}


	PROPERTY(proposal_item_scene, PackedScene);
	PROPERTY(tab_title_item_scene, PackedScene);
	PROPERTY(floor_queue_scene, PackedScene);
	PROPERTY(tab_container, TabContainer);
	PROPERTY(proposals_container, Container);
	PROPERTY(proposals_history_container, Container);
	PROPERTY(floor_onboarding_container, Container);
	PROPERTY(fbind_tr, TextureRect);
	PROPERTY(prind_tr, TextureRect);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainPane.hpp"

inline void TheSecretariat::launch() { voidcall("launch"); }
inline void TheSecretariat::clear_dynamic() { voidcall("clear_dynamic"); }
inline void TheSecretariat::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant TheSecretariat::get_main_pane() { return operator()("get_main_pane"); }
inline void TheSecretariat::minimize() { voidcall("minimize"); }

#endif

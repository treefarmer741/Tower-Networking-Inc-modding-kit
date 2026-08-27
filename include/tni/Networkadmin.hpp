#ifndef TNI_API_HEADER_NETWORKADMIN
#define TNI_API_HEADER_NETWORKADMIN
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Networkadmin : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Networkadmin(ScreenApp base) : ScreenApp{base} {}
	constexpr Networkadmin(uint64_t addr) : ScreenApp{addr} {}
	constexpr Networkadmin(Object obj) : Networkadmin{obj.address()} {}
	Networkadmin(Variant variant) : Networkadmin{variant.as_object().address()} {}


	PROPERTY(proposal_item_scene, PackedScene);
	PROPERTY(tab_title_item_scene, PackedScene);
	PROPERTY(user_queue_scene, PackedScene);
	PROPERTY(proposal_directory_item_scene, PackedScene);
	PROPERTY(tab_container, TabContainer);
	PROPERTY(proposals_container, Container);
	PROPERTY(proposals_history_container, Container);
	PROPERTY(user_onboarding_container, Container);
	PROPERTY(directory_container, Container);
	PROPERTY(fbind_tr, TextureRect);
	PROPERTY(prind_tr, TextureRect);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void Networkadmin::launch() { this->voidcall("launch"); }
inline void Networkadmin::minimize() { this->voidcall("minimize"); }
inline void Networkadmin::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Networkadmin::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Networkadmin::get_main_pane() { return this->operator()("get_main_pane"); }

#endif

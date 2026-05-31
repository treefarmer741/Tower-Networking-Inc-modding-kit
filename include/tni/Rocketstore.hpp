#ifndef TNI_API_HEADER_ROCKETSTORE
#define TNI_API_HEADER_ROCKETSTORE
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct Rocketstore : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr Rocketstore(ScreenApp base) : ScreenApp{base} {}
	constexpr Rocketstore(uint64_t addr) : ScreenApp{addr} {}
	constexpr Rocketstore(Object obj) : Rocketstore{obj.address()} {}
	Rocketstore(Variant variant) : Rocketstore{variant.as_object().address()} {}


	PROPERTY(entry_containers, Container);
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

inline void Rocketstore::launch() { this->voidcall("launch"); }
inline void Rocketstore::minimize() { this->voidcall("minimize"); }
inline void Rocketstore::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void Rocketstore::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant Rocketstore::get_main_pane() { return this->operator()("get_main_pane"); }

#endif

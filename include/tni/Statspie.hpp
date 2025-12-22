#ifndef TNI_API_HEADER_STATSPIE
#define TNI_API_HEADER_STATSPIE
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Statspie : public Container {
	using Container::Container;

	constexpr Statspie(Container base) : Container{base} {}
	constexpr Statspie(uint64_t addr) : Container{addr} {}
	constexpr Statspie(Object obj) : Statspie{obj.address()} {}
	Statspie(Variant variant) : Statspie{variant.as_object().address()} {}


	PROPERTY(refresh_timer, Timer);
	PROPERTY(pie_chart, Sprite2D);
	PROPERTY(domain_name_label, Label);
	PROPERTY(producer_label, Label);
	PROPERTY(users, Variant);
	PROPERTY(selected_domain_num, Variant);
	PROPERTY(domain_names, Variant);
	PROPERTY(domains_with_consumption, Variant);
	PROPERTY(domains_with_producer, Variant);
	PROPERTY(consumption_data, Variant);
	PROPERTY(main_pane, MainDashboard);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void collect_domain_data();
	inline void update_display();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
	inline void minimize();
};

#include "MainDashboard.hpp"

inline void Statspie::launch() { voidcall("launch"); }
inline void Statspie::collect_domain_data() { voidcall("collect_domain_data"); }
inline void Statspie::update_display() { voidcall("update_display"); }
inline void Statspie::clear_dynamic() { voidcall("clear_dynamic"); }
inline void Statspie::toast(String msg, int64_t duration) { voidcall("toast", msg, duration); }
inline Variant Statspie::get_main_pane() { return operator()("get_main_pane"); }
inline void Statspie::minimize() { voidcall("minimize"); }

#endif

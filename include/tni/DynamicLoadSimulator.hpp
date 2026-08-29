#ifndef TNI_API_HEADER_DYNAMICLOADSIMULATOR
#define TNI_API_HEADER_DYNAMICLOADSIMULATOR
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct DynamicLoadSimulator : public Node {
	using Node::Node;

	constexpr DynamicLoadSimulator(Node base) : Node{base} {}
	constexpr DynamicLoadSimulator(uint64_t addr) : Node{addr} {}
	constexpr DynamicLoadSimulator(Object obj) : DynamicLoadSimulator{obj.address()} {}
	DynamicLoadSimulator(Variant variant) : DynamicLoadSimulator{variant.as_object().address()} {}

	static constexpr int64_t MINUTES_IN_DAY = 1440;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(user_scenes_folder, String);
	PROPERTY(lcu_outlet_scene, PackedScene);
	PROPERTY(spawn_location, Node);
	PROPERTY(outlet_hub, LCUOutletHub);
	PROPERTY(spawn_start_position, Variant);
	PROPERTY(spawn_spacing, double);
	PROPERTY(available_user_scenes, Variant);
	PROPERTY(spawned_outlets, Variant);
	PROPERTY(load_curve, Variant);
	PROPERTY(last_trigger_minute, int64_t);
	PROPERTY(curr_minod, int64_t);

	inline LCUOutlet spawn_outlet_with_user(Variant pos);
	inline Variant generate_growth_curve(int64_t start_day, int64_t num_days, int64_t initial_users, int64_t max_users);
	inline void add_users_pack(Variant user_sfps);
	inline LCUOutlet spawn_outlet_with_specific_user(String user_sfp, Variant pos);
};

#include "LCUOutletHub.hpp"
#include "LCUOutlet.hpp"

inline LCUOutlet DynamicLoadSimulator::spawn_outlet_with_user(Variant pos) { return LCUOutlet(this->operator()("spawn_outlet_with_user", pos).as_object().address()); }
inline Variant DynamicLoadSimulator::generate_growth_curve(int64_t start_day, int64_t num_days, int64_t initial_users, int64_t max_users) { return this->operator()("generate_growth_curve", start_day, num_days, initial_users, max_users); }
inline void DynamicLoadSimulator::add_users_pack(Variant user_sfps) { this->voidcall("add_users_pack", user_sfps); }
inline LCUOutlet DynamicLoadSimulator::spawn_outlet_with_specific_user(String user_sfp, Variant pos) { return LCUOutlet(this->operator()("spawn_outlet_with_specific_user", user_sfp, pos).as_object().address()); }

#endif

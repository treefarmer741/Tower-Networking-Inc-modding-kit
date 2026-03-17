#ifndef TNI_API_HEADER_LOGICCONTROLMODULE
#define TNI_API_HEADER_LOGICCONTROLMODULE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct LogicControlModule : public Node {
	using Node::Node;

	constexpr LogicControlModule(Node base) : Node{base} {}
	constexpr LogicControlModule(uint64_t addr) : Node{addr} {}
	constexpr LogicControlModule(Object obj) : LogicControlModule{obj.address()} {}
	LogicControlModule(Variant variant) : LogicControlModule{variant.as_object().address()} {}


	PROPERTY(host_controller, LogicController);

	inline void handle_save(Variant save_obj);
	inline void handle_load(Variant save_obj);
	inline Variant get_save_var_list();
};

#include "LogicController.hpp"

inline void LogicControlModule::handle_save(Variant save_obj) { voidcall("handle_save", save_obj); }
inline void LogicControlModule::handle_load(Variant save_obj) { voidcall("handle_load", save_obj); }
inline Variant LogicControlModule::get_save_var_list() { return operator()("get_save_var_list"); }

#endif

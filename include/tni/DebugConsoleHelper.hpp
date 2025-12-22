#ifndef TNI_API_HEADER_DEBUGCONSOLEHELPER
#define TNI_API_HEADER_DEBUGCONSOLEHELPER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DebugConsoleHelper : public Node {
	using Node::Node;

	constexpr DebugConsoleHelper(Node base) : Node{base} {}
	constexpr DebugConsoleHelper(uint64_t addr) : Node{addr} {}
	constexpr DebugConsoleHelper(Object obj) : DebugConsoleHelper{obj.address()} {}
	DebugConsoleHelper(Variant variant) : DebugConsoleHelper{variant.as_object().address()} {}



	inline Variant count_devices(Variant _args);
	inline Variant count_users(Variant _args);
	inline void in_game_notify(Variant args);
	inline Variant get_game_opts(Variant _args);
	inline Variant get_acquired_techs(Variant _args);
};


inline Variant DebugConsoleHelper::count_devices(Variant _args) { return operator()("count_devices", _args); }
inline Variant DebugConsoleHelper::count_users(Variant _args) { return operator()("count_users", _args); }
inline void DebugConsoleHelper::in_game_notify(Variant args) { voidcall("in_game_notify", args); }
inline Variant DebugConsoleHelper::get_game_opts(Variant _args) { return operator()("get_game_opts", _args); }
inline Variant DebugConsoleHelper::get_acquired_techs(Variant _args) { return operator()("get_acquired_techs", _args); }

#endif

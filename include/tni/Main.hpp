#ifndef TNI_API_HEADER_MAIN
#define TNI_API_HEADER_MAIN
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct Main : public Node {
	using Node::Node;

	constexpr Main(Node base) : Node{base} {}
	constexpr Main(uint64_t addr) : Node{addr} {}
	constexpr Main(Object obj) : Main{obj.address()} {}
	Main(Variant variant) : Main{variant.as_object().address()} {}

	static constexpr int64_t PORT = 2601;  // NOTE: You should recompile your mod if this value changes!
	inline static const String DEFAULT_SERVER_IP = "127.0.0.1";  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t MAX_CONNECTIONS = 20;  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(SMP_COMPRESSION, bool);  // Const value type was not supported.

	PROPERTY(player_scenes, PackedScene);
	PROPERTY(main_scon, SaveController);

	inline void show_game_menu();
	inline void add_new_player(Variant remote_peer_id);
	inline void join_game(Variant join_id);
	inline void host_game(String save_name, String gw_path, String scenario_name, PlayOptions play_options);
};

#include "SaveController.hpp"
#include "PlayOptions.hpp"

inline void Main::show_game_menu() { voidcall("show_game_menu"); }
inline void Main::add_new_player(Variant remote_peer_id) { voidcall("add_new_player", remote_peer_id); }
inline void Main::join_game(Variant join_id) { voidcall("join_game", join_id); }
inline void Main::host_game(String save_name, String gw_path, String scenario_name, PlayOptions play_options) { voidcall("host_game", save_name, gw_path, scenario_name, play_options); }

#endif

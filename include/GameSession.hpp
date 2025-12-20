#ifndef TNI_API_HEADER_GAMESESSION
#define TNI_API_HEADER_GAMESESSION
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GameSession : public Node {
	using Node::Node;

	constexpr GameSession(Node base) : Node{base} {}
	constexpr GameSession(uint64_t addr) : Node{addr} {}
	constexpr GameSession(Object obj) : GameSession{obj.address()} {}
	GameSession(Variant variant) : GameSession{variant.as_object().address()} {}

	static constexpr int64_t MAX_BGM_HEAT = 3;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(local_node, Node2D);
	PROPERTY(master_timer, Timer);
	PROPERTY(artifact_timer, Timer);
	PROPERTY(s5_timer, Timer);
	PROPERTY(is_s5_completed, bool);
	PROPERTY(is_artifact_done, bool);
	PROPERTY(pointer_cursor, Resource);
	PROPERTY(grab_possible_cursor, Resource);
	PROPERTY(grabbing_cursor, Resource);
	PROPERTY(click_possible_cursor, Resource);
	PROPERTY(beige_pointer_cursor, Resource);
	PROPERTY(is_save_state_loaded, bool);
	PROPERTY(floor_cache, Variant);
	PROPERTY(loaded_from_save, bool);
	PROPERTY(join_addr, String);
	PROPERTY(game_world, GameWorld);
	PROPERTY(player_name, String);
	PROPERTY(player_mouse, MultiplayerMouse);
	PROPERTY(offline, bool);
	PROPERTY(player_camera, MyCustomCamera);
	PROPERTY(min_bgm_heat, int64_t);
	PROPERTY(bgm_heat, int64_t);
	PROPERTY(bgm_list, Variant);
	PROPERTY(next_bgm_player, AudioStreamPlayer);
	PROPERTY(bgm_paused, bool);
	PROPERTY(bgm_players, Variant);
	PROPERTY(lprogram_scenes, Variant);
	PROPERTY(riser_ghost_point_a, Variant);
	PROPERTY(riser_ghost_point_b, Variant);

	inline void done_loading();
	inline Variant get_time_str(int64_t dayc, double time_float);
	inline Variant get_time_str_ts(int64_t igtc);
	inline void set_game_arrow_cursor(bool alt_arrow);
	inline void set_game_cursors();
	inline void start_artifact_timer();
	inline void start_master_timer();
	inline void start_s5_timer();
	inline void init_game_cursors();
	inline Location get_floor_ref_from_path(String rpath);
	inline void cleanup();
	inline void pause_bgm();
	inline void resume_bgm();
	inline void start_bgm();
	inline void decide_bgm(int64_t heat);
	inline void stop_bgm(double duration);
	inline void set_link_ghost_point_a(Variant new_point_a);
	inline void set_link_ghost_point_b(Variant new_point_b);
	inline Variant find_active_debuggers(Variant deb_addr);
	inline Variant find_devices(Variant test_func);
	inline Variant find_all_devices(Variant test_func);
	inline void activate_achievement(String skey);
	inline void send_chat_msg(String sender_name, String msg);
	inline void try_unlock_new_floors();
};

#include "GameWorld.hpp"
#include "MultiplayerMouse.hpp"
#include "MyCustomCamera.hpp"
#include "Location.hpp"

inline void GameSession::done_loading() { voidcall("done_loading"); }
inline Variant GameSession::get_time_str(int64_t dayc, double time_float) { return operator()("get_time_str", dayc, time_float); }
inline Variant GameSession::get_time_str_ts(int64_t igtc) { return operator()("get_time_str_ts", igtc); }
inline void GameSession::set_game_arrow_cursor(bool alt_arrow) { voidcall("set_game_arrow_cursor", alt_arrow); }
inline void GameSession::set_game_cursors() { voidcall("set_game_cursors"); }
inline void GameSession::start_artifact_timer() { voidcall("start_artifact_timer"); }
inline void GameSession::start_master_timer() { voidcall("start_master_timer"); }
inline void GameSession::start_s5_timer() { voidcall("start_s5_timer"); }
inline void GameSession::init_game_cursors() { voidcall("init_game_cursors"); }
inline Location GameSession::get_floor_ref_from_path(String rpath) { return Location(operator()("get_floor_ref_from_path", rpath).as_object().address()); }
inline void GameSession::cleanup() { voidcall("cleanup"); }
inline void GameSession::pause_bgm() { voidcall("pause_bgm"); }
inline void GameSession::resume_bgm() { voidcall("resume_bgm"); }
inline void GameSession::start_bgm() { voidcall("start_bgm"); }
inline void GameSession::decide_bgm(int64_t heat) { voidcall("decide_bgm", heat); }
inline void GameSession::stop_bgm(double duration) { voidcall("stop_bgm", duration); }
inline void GameSession::set_link_ghost_point_a(Variant new_point_a) { voidcall("set_link_ghost_point_a", new_point_a); }
inline void GameSession::set_link_ghost_point_b(Variant new_point_b) { voidcall("set_link_ghost_point_b", new_point_b); }
inline Variant GameSession::find_active_debuggers(Variant deb_addr) { return operator()("find_active_debuggers", deb_addr); }
inline Variant GameSession::find_devices(Variant test_func) { return operator()("find_devices", test_func); }
inline Variant GameSession::find_all_devices(Variant test_func) { return operator()("find_all_devices", test_func); }
inline void GameSession::activate_achievement(String skey) { voidcall("activate_achievement", skey); }
inline void GameSession::send_chat_msg(String sender_name, String msg) { voidcall("send_chat_msg", sender_name, msg); }
inline void GameSession::try_unlock_new_floors() { voidcall("try_unlock_new_floors"); }

#endif

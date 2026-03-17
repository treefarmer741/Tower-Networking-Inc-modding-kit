#ifndef TNI_API_HEADER_GLOBALSTEAM
#define TNI_API_HEADER_GLOBALSTEAM
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GlobalSteam : public Node {
	using Node::Node;

	constexpr GlobalSteam(Node base) : Node{base} {}
	constexpr GlobalSteam(uint64_t addr) : Node{addr} {}
	constexpr GlobalSteam(Object obj) : GlobalSteam{obj.address()} {}
	GlobalSteam(Variant variant) : GlobalSteam{variant.as_object().address()} {}


	PROPERTY(disabled, bool);
	PROPERTY(is_online, bool);
	PROPERTY(is_owned, bool);
	PROPERTY(appid, int64_t);
	PROPERTY(userid, int64_t);
	PROPERTY(username, String);
	PROPERTY(parent_process_name, String);
	PROPERTY(is_pirated_copy, bool);

	inline void shutdown();
	inline void initialize(bool autoquit_on_fail, int64_t steam_app_id);
	inline bool test_steamlib_file_tampering();
	inline bool test_online_fix();
	inline bool test_gbe_loader();
	inline Variant get_parent_process_name();
};


inline void GlobalSteam::shutdown() { voidcall("shutdown"); }
inline void GlobalSteam::initialize(bool autoquit_on_fail, int64_t steam_app_id) { voidcall("initialize", autoquit_on_fail, steam_app_id); }
inline bool GlobalSteam::test_steamlib_file_tampering() { return operator()("test_steamlib_file_tampering"); }
inline bool GlobalSteam::test_online_fix() { return operator()("test_online_fix"); }
inline bool GlobalSteam::test_gbe_loader() { return operator()("test_gbe_loader"); }
inline Variant GlobalSteam::get_parent_process_name() { return operator()("get_parent_process_name"); }

#endif

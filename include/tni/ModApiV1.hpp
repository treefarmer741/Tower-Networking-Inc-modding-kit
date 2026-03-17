#ifndef TNI_API_HEADER_MODAPIV1
#define TNI_API_HEADER_MODAPIV1
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <optional>
#include <api.hpp>
#include "structs.hpp"

struct ModApiV1 : public Node {
	using Node::Node;

	constexpr ModApiV1(Node base) : Node{base} {}
	constexpr ModApiV1(uint64_t addr) : Node{addr} {}
	constexpr ModApiV1(Object obj) : ModApiV1{obj.address()} {}
	ModApiV1(Variant variant) : ModApiV1{variant.as_object().address()} {}



	inline void sanity();
	inline std::optional<GameWorld> get_game_world();
	inline std::optional<MyCustomCamera> get_player_camera();
	inline BaseUI get_base_ui();
	inline Variant get_devices();
	inline Variant get_users();
};

#include "GameWorld.hpp"
#include "MyCustomCamera.hpp"
#include "BaseUI.hpp"

inline void ModApiV1::sanity() { voidcall("sanity"); }
inline std::optional<GameWorld> ModApiV1::get_game_world() { Variant value = operator()("get_game_world"); return value == Nil ? std::nullopt : std::optional(GameWorld(value.as_object().address())); }
inline std::optional<MyCustomCamera> ModApiV1::get_player_camera() { Variant value = operator()("get_player_camera"); return value == Nil ? std::nullopt : std::optional(MyCustomCamera(value.as_object().address())); }
inline BaseUI ModApiV1::get_base_ui() { return BaseUI(operator()("get_base_ui").as_object().address()); }
inline Variant ModApiV1::get_devices() { return operator()("get_devices"); }
inline Variant ModApiV1::get_users() { return operator()("get_users"); }

#endif

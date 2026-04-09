#ifndef TNI_API_HEADER_MODAPIV1
#define TNI_API_HEADER_MODAPIV1
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <optional>
#include <generated_api.hpp>
#include "structs.hpp"

struct ModApiV1 : public Node {
	using Node::Node;

	constexpr ModApiV1(Node base) : Node{base} {}
	constexpr ModApiV1(uint64_t addr) : Node{addr} {}
	constexpr ModApiV1(Object obj) : ModApiV1{obj.address()} {}
	ModApiV1(Variant variant) : ModApiV1{variant.as_object().address()} {}



	inline void sanity();
	inline SemVerVersion get_game_version();
	inline bool has_mods_reloaded();
	inline std::optional<GameWorld> get_game_world();
	inline std::optional<MyCustomCamera> get_player_camera();
	inline BaseUI get_base_ui();
	inline Variant get_devices();
	inline Variant get_users();
	inline Variant get_locations();
	inline Variant get_merchants();
};

#include "SemVerVersion.hpp"
#include "GameWorld.hpp"
#include "MyCustomCamera.hpp"
#include "BaseUI.hpp"

inline void ModApiV1::sanity() { this->voidcall("sanity"); }
inline SemVerVersion ModApiV1::get_game_version() { return SemVerVersion(this->operator()("get_game_version").as_object().address()); }
inline bool ModApiV1::has_mods_reloaded() { return this->operator()("has_mods_reloaded"); }
inline std::optional<GameWorld> ModApiV1::get_game_world() { Variant value = this->operator()("get_game_world"); return value == Nil ? std::nullopt : std::optional(GameWorld(value.as_object().address())); }
inline std::optional<MyCustomCamera> ModApiV1::get_player_camera() { Variant value = this->operator()("get_player_camera"); return value == Nil ? std::nullopt : std::optional(MyCustomCamera(value.as_object().address())); }
inline BaseUI ModApiV1::get_base_ui() { return BaseUI(this->operator()("get_base_ui").as_object().address()); }
inline Variant ModApiV1::get_devices() { return this->operator()("get_devices"); }
inline Variant ModApiV1::get_users() { return this->operator()("get_users"); }
inline Variant ModApiV1::get_locations() { return this->operator()("get_locations"); }
inline Variant ModApiV1::get_merchants() { return this->operator()("get_merchants"); }

#endif

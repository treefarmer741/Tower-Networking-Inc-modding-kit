#ifndef TNI_API_HEADER_CHUNKEDTERRAINLAYER
#define TNI_API_HEADER_CHUNKEDTERRAINLAYER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct ChunkedTerrainLayer : public Node3D {
	using Node3D::Node3D;

	constexpr ChunkedTerrainLayer(Node3D base) : Node3D{base} {}
	constexpr ChunkedTerrainLayer(uint64_t addr) : Node3D{addr} {}
	constexpr ChunkedTerrainLayer(Object obj) : ChunkedTerrainLayer{obj.address()} {}
	ChunkedTerrainLayer(Variant variant) : ChunkedTerrainLayer{variant.as_object().address()} {}

	enum ChunkState : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		UNLOADED = 0,
		LOADED = 1,
		LOADING = 2,
		UNLOADING = 3,
	};

	PROPERTY(buffering_range, int64_t);
	PROPERTY(layer_seed, int64_t);
	PROPERTY(size_xz, Variant);

	inline Variant get_coordinates_matching_state(int64_t match_state);
	inline void set_state(Variant c_coord, int64_t new_state);
	inline int64_t get_state(Variant c_coord);
	inline bool is_loaded(Variant c_coord);
	inline bool is_loading(Variant c_coord);
	inline bool is_unloaded(Variant c_coord);
	inline void mark_as_loading(Variant c_coord);
	inline void mark_as_unloading(Variant c_coord);
	inline void mark_as_loaded(Variant c_coord);
	inline void mark_as_unloaded(Variant c_coord);
	inline void begin_load(Variant c_coord);
	inline void begin_unload(Variant c_coord);
};


inline Variant ChunkedTerrainLayer::get_coordinates_matching_state(int64_t match_state) { return operator()("get_coordinates_matching_state", match_state); }
inline void ChunkedTerrainLayer::set_state(Variant c_coord, int64_t new_state) { voidcall("set_state", c_coord, new_state); }
inline int64_t ChunkedTerrainLayer::get_state(Variant c_coord) { return operator()("get_state", c_coord); }
inline bool ChunkedTerrainLayer::is_loaded(Variant c_coord) { return operator()("is_loaded", c_coord); }
inline bool ChunkedTerrainLayer::is_loading(Variant c_coord) { return operator()("is_loading", c_coord); }
inline bool ChunkedTerrainLayer::is_unloaded(Variant c_coord) { return operator()("is_unloaded", c_coord); }
inline void ChunkedTerrainLayer::mark_as_loading(Variant c_coord) { voidcall("mark_as_loading", c_coord); }
inline void ChunkedTerrainLayer::mark_as_unloading(Variant c_coord) { voidcall("mark_as_unloading", c_coord); }
inline void ChunkedTerrainLayer::mark_as_loaded(Variant c_coord) { voidcall("mark_as_loaded", c_coord); }
inline void ChunkedTerrainLayer::mark_as_unloaded(Variant c_coord) { voidcall("mark_as_unloaded", c_coord); }
inline void ChunkedTerrainLayer::begin_load(Variant c_coord) { voidcall("begin_load", c_coord); }
inline void ChunkedTerrainLayer::begin_unload(Variant c_coord) { voidcall("begin_unload", c_coord); }

#endif

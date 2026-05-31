#ifndef TNI_API_HEADER_WFCLAYER
#define TNI_API_HEADER_WFCLAYER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ChunkedTerrainLayer.hpp"

struct WfcLayer : public ChunkedTerrainLayer {
	using ChunkedTerrainLayer::ChunkedTerrainLayer;

	constexpr WfcLayer(ChunkedTerrainLayer base) : ChunkedTerrainLayer{base} {}
	constexpr WfcLayer(uint64_t addr) : ChunkedTerrainLayer{addr} {}
	constexpr WfcLayer(Object obj) : WfcLayer{obj.address()} {}
	WfcLayer(Variant variant) : WfcLayer{variant.as_object().address()} {}


	PROPERTY(loaded_chunks, Variant);
	PROPERTY(tracked_chunks, Variant);
	PROPERTY(scene_dir, String);
	PROPERTY(min_collapse_per_frame, int64_t);
	PROPERTY(tile_ps_map, Variant);
	PROPERTY(rng, RandomNumberGenerator);
	PROPERTY(sample_tile_nodes, Node3D);
	PROPERTY(wfc_data, Variant);
	PROPERTY(buffering_range, int64_t);
	PROPERTY(layer_seed, int64_t);
	PROPERTY(size_xz, Variant);

	inline Variant get_shuffled_wfc_options(Variant c_coord);
	inline void begin_load(Variant c_coord);
	inline void begin_unload(Variant c_coord);
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
};


inline Variant WfcLayer::get_shuffled_wfc_options(Variant c_coord) { return this->operator()("get_shuffled_wfc_options", c_coord); }
inline void WfcLayer::begin_load(Variant c_coord) { this->voidcall("begin_load", c_coord); }
inline void WfcLayer::begin_unload(Variant c_coord) { this->voidcall("begin_unload", c_coord); }
inline Variant WfcLayer::get_coordinates_matching_state(int64_t match_state) { return this->operator()("get_coordinates_matching_state", match_state); }
inline void WfcLayer::set_state(Variant c_coord, int64_t new_state) { this->voidcall("set_state", c_coord, new_state); }
inline int64_t WfcLayer::get_state(Variant c_coord) { return this->operator()("get_state", c_coord); }
inline bool WfcLayer::is_loaded(Variant c_coord) { return this->operator()("is_loaded", c_coord); }
inline bool WfcLayer::is_loading(Variant c_coord) { return this->operator()("is_loading", c_coord); }
inline bool WfcLayer::is_unloaded(Variant c_coord) { return this->operator()("is_unloaded", c_coord); }
inline void WfcLayer::mark_as_loading(Variant c_coord) { this->voidcall("mark_as_loading", c_coord); }
inline void WfcLayer::mark_as_unloading(Variant c_coord) { this->voidcall("mark_as_unloading", c_coord); }
inline void WfcLayer::mark_as_loaded(Variant c_coord) { this->voidcall("mark_as_loaded", c_coord); }
inline void WfcLayer::mark_as_unloaded(Variant c_coord) { this->voidcall("mark_as_unloaded", c_coord); }

#endif

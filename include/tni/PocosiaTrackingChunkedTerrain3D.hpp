#ifndef TNI_API_HEADER_POCOSIATRACKINGCHUNKEDTERRAIN3D
#define TNI_API_HEADER_POCOSIATRACKINGCHUNKEDTERRAIN3D
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PocosiaTrackingChunkedTerrain3D : public Node3D {
	using Node3D::Node3D;

	constexpr PocosiaTrackingChunkedTerrain3D(Node3D base) : Node3D{base} {}
	constexpr PocosiaTrackingChunkedTerrain3D(uint64_t addr) : Node3D{addr} {}
	constexpr PocosiaTrackingChunkedTerrain3D(Object obj) : PocosiaTrackingChunkedTerrain3D{obj.address()} {}
	PocosiaTrackingChunkedTerrain3D(Variant variant) : PocosiaTrackingChunkedTerrain3D{variant.as_object().address()} {}


	PROPERTY(master_seed, int64_t);
	PROPERTY(terrain_layers, Variant);
	PROPERTY(tracking_nodes, Variant);
	PROPERTY(chunk_update_period_s, double);
	PROPERTY(update_timer, Timer);
	PROPERTY(is_enabled, bool);

	inline void enable();
	inline void disable();
	inline Variant get_chunk_coordinates(Node3D n3d, int64_t layer);
	inline Variant get_chunk_size(int64_t layer);
};


inline void PocosiaTrackingChunkedTerrain3D::enable() { voidcall("enable"); }
inline void PocosiaTrackingChunkedTerrain3D::disable() { voidcall("disable"); }
inline Variant PocosiaTrackingChunkedTerrain3D::get_chunk_coordinates(Node3D n3d, int64_t layer) { return operator()("get_chunk_coordinates", n3d, layer); }
inline Variant PocosiaTrackingChunkedTerrain3D::get_chunk_size(int64_t layer) { return operator()("get_chunk_size", layer); }

#endif

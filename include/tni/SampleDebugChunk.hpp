#ifndef TNI_API_HEADER_SAMPLEDEBUGCHUNK
#define TNI_API_HEADER_SAMPLEDEBUGCHUNK
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SampleDebugChunk : public Node3D {
	using Node3D::Node3D;

	constexpr SampleDebugChunk(Node3D base) : Node3D{base} {}
	constexpr SampleDebugChunk(uint64_t addr) : Node3D{addr} {}
	constexpr SampleDebugChunk(Object obj) : SampleDebugChunk{obj.address()} {}
	SampleDebugChunk(Variant variant) : SampleDebugChunk{variant.as_object().address()} {}


	PROPERTY(label, Label3D);
	PROPERTY(mi, MeshInstance3D);

	inline void set_chunk_color(Variant color);
	inline void set_label_text(String s);
	inline void set_cell_size(Variant szv);
};


inline void SampleDebugChunk::set_chunk_color(Variant color) { voidcall("set_chunk_color", color); }
inline void SampleDebugChunk::set_label_text(String s) { voidcall("set_label_text", s); }
inline void SampleDebugChunk::set_cell_size(Variant szv) { voidcall("set_cell_size", szv); }

#endif

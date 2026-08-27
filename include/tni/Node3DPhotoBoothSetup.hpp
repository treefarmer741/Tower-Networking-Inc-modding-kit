#ifndef TNI_API_HEADER_NODE3DPHOTOBOOTHSETUP
#define TNI_API_HEADER_NODE3DPHOTOBOOTHSETUP
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct Node3DPhotoBoothSetup : public SubViewport {
	using SubViewport::SubViewport;

	constexpr Node3DPhotoBoothSetup(SubViewport base) : SubViewport{base} {}
	constexpr Node3DPhotoBoothSetup(uint64_t addr) : SubViewport{addr} {}
	constexpr Node3DPhotoBoothSetup(Object obj) : Node3DPhotoBoothSetup{obj.address()} {}
	Node3DPhotoBoothSetup(Variant variant) : Node3DPhotoBoothSetup{variant.as_object().address()} {}


	PROPERTY(subject_anchor, Node3D);
	PROPERTY(imagetexture_cache, Variant);

	inline ImageTexture take_imagetexture_snapshot(PackedScene subject_ps);
	inline void clear_subject();
};


inline ImageTexture Node3DPhotoBoothSetup::take_imagetexture_snapshot(PackedScene subject_ps) { return ImageTexture(this->operator()("take_imagetexture_snapshot", subject_ps).as_object().address()); }
inline void Node3DPhotoBoothSetup::clear_subject() { this->voidcall("clear_subject"); }

#endif

#ifndef TNI_API_HEADER_TITLEMANIFEST
#define TNI_API_HEADER_TITLEMANIFEST
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct TitleManifest : public Node {
	using Node::Node;

	constexpr TitleManifest(Node base) : Node{base} {}
	constexpr TitleManifest(uint64_t addr) : Node{addr} {}
	constexpr TitleManifest(Object obj) : TitleManifest{obj.address()} {}
	TitleManifest(Variant variant) : TitleManifest{variant.as_object().address()} {}


	PROPERTY(a0, Variant);
	PROPERTY(b0, Variant);
	PROPERTY(a, Variant);
	PROPERTY(b, Variant);
	PROPERTY(c, Variant);
	PROPERTY(d, Variant);
	PROPERTY(sp0, Variant);
	PROPERTY(sp1, Variant);
	PROPERTY(sp2, Variant);
	PROPERTY(sp3, Variant);
	PROPERTY(sp4, Variant);
	PROPERTY(skt0, Variant);
	PROPERTY(skt1, Variant);

};



#endif

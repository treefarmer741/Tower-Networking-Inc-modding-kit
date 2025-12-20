#ifndef TNI_API_HEADER_WIKIENTRY
#define TNI_API_HEADER_WIKIENTRY
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct WikiEntry : public Node {
	using Node::Node;

	constexpr WikiEntry(Node base) : Node{base} {}
	constexpr WikiEntry(uint64_t addr) : Node{addr} {}
	constexpr WikiEntry(Object obj) : WikiEntry{obj.address()} {}
	WikiEntry(Variant variant) : WikiEntry{variant.as_object().address()} {}


	PROPERTY(entry_title, String);
	PROPERTY(entry_display_texture2d, Texture2D);
	PROPERTY(entry_mini, String);
	PROPERTY(keywords, Variant);

};



#endif

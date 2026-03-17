#ifndef TNI_API_HEADER_SATISFACTIONPANEL
#define TNI_API_HEADER_SATISFACTIONPANEL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct SatisfactionPanel : public Node2D {
	using Node2D::Node2D;

	constexpr SatisfactionPanel(Node2D base) : Node2D{base} {}
	constexpr SatisfactionPanel(uint64_t addr) : Node2D{addr} {}
	constexpr SatisfactionPanel(Object obj) : SatisfactionPanel{obj.address()} {}
	SatisfactionPanel(Variant variant) : SatisfactionPanel{variant.as_object().address()} {}


	PROPERTY(icon_texture, Variant);
	PROPERTY(username_label, Variant);
	PROPERTY(userprofile_label, Variant);
	PROPERTY(satiety_label, Variant);
	PROPERTY(user, User);

};

#include "User.hpp"


#endif

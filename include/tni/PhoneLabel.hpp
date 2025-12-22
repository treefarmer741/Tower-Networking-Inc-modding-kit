#ifndef TNI_API_HEADER_PHONELABEL
#define TNI_API_HEADER_PHONELABEL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct PhoneLabel : public Label {
	using Label::Label;

	constexpr PhoneLabel(Label base) : Label{base} {}
	constexpr PhoneLabel(uint64_t addr) : Label{addr} {}
	constexpr PhoneLabel(Object obj) : PhoneLabel{obj.address()} {}
	PhoneLabel(Variant variant) : PhoneLabel{variant.as_object().address()} {}


	PROPERTY(label_height, int64_t);
	PROPERTY(dialog_text, String);

};



#endif

#ifndef TNI_API_HEADER_MEMENTOITEM
#define TNI_API_HEADER_MEMENTOITEM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct MementoItem : public Container {
	using Container::Container;

	constexpr MementoItem(Container base) : Container{base} {}
	constexpr MementoItem(uint64_t addr) : Container{addr} {}
	constexpr MementoItem(Object obj) : MementoItem{obj.address()} {}
	MementoItem(Variant variant) : MementoItem{variant.as_object().address()} {}


	PROPERTY(main_label, RichTextLabel);
	PROPERTY(aux_control, Container);
	PROPERTY(aux_label, RichTextLabel);

};



#endif

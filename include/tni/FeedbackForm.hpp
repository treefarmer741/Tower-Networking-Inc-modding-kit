#ifndef TNI_API_HEADER_FEEDBACKFORM
#define TNI_API_HEADER_FEEDBACKFORM
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct FeedbackForm : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr FeedbackForm(VBoxContainer base) : VBoxContainer{base} {}
	constexpr FeedbackForm(uint64_t addr) : VBoxContainer{addr} {}
	constexpr FeedbackForm(Object obj) : FeedbackForm{obj.address()} {}
	FeedbackForm(Variant variant) : FeedbackForm{variant.as_object().address()} {}


	PROPERTY(buttons, Variant);
	PROPERTY(current_selected, Variant);
	PROPERTY(happiness_buttons, Variant);
	PROPERTY(response_type, Variant);
	PROPERTY(happiness_dict, Variant);

	inline void submit_feedback();
	inline void clear_form();
};


inline void FeedbackForm::submit_feedback() { voidcall("submit_feedback"); }
inline void FeedbackForm::clear_form() { voidcall("clear_form"); }

#endif

#ifndef TNI_API_HEADER_EVALCOPYCONTROL
#define TNI_API_HEADER_EVALCOPYCONTROL
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct EvalCopyControl : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr EvalCopyControl(PanelContainer base) : PanelContainer{base} {}
	constexpr EvalCopyControl(uint64_t addr) : PanelContainer{addr} {}
	constexpr EvalCopyControl(Object obj) : EvalCopyControl{obj.address()} {}
	EvalCopyControl(Variant variant) : EvalCopyControl{variant.as_object().address()} {}


	PROPERTY(subject, String);
	PROPERTY(eval_time_seconds, int64_t);

};



#endif

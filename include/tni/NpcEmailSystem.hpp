#ifndef TNI_API_HEADER_NPCEMAILSYSTEM
#define TNI_API_HEADER_NPCEMAILSYSTEM
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct NpcEmailSystem : public Control {
	using Control::Control;

	constexpr NpcEmailSystem(Control base) : Control{base} {}
	constexpr NpcEmailSystem(uint64_t addr) : Control{addr} {}
	constexpr NpcEmailSystem(Object obj) : NpcEmailSystem{obj.address()} {}
	NpcEmailSystem(Variant variant) : NpcEmailSystem{variant.as_object().address()} {}


	PROPERTY(npc_email_scn, PackedScene);

	inline void display(String msg);
	inline void clear_emails();
};


inline void NpcEmailSystem::display(String msg) { this->voidcall("display", msg); }
inline void NpcEmailSystem::clear_emails() { this->voidcall("clear_emails"); }

#endif

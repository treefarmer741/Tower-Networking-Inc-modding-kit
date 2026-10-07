#ifndef TNI_API_HEADER_USERDETAILPANEL
#define TNI_API_HEADER_USERDETAILPANEL
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct UserDetailPanel : public VBoxContainer {
	using VBoxContainer::VBoxContainer;

	constexpr UserDetailPanel(VBoxContainer base) : VBoxContainer{base} {}
	constexpr UserDetailPanel(uint64_t addr) : VBoxContainer{addr} {}
	constexpr UserDetailPanel(Object obj) : UserDetailPanel{obj.address()} {}
	UserDetailPanel(Variant variant) : UserDetailPanel{variant.as_object().address()} {}


	PROPERTY(user, User);
	PROPERTY(user_behavior_list_item_scene, PackedScene);
	PROPERTY(user_hosting_list_item_scene, PackedScene);
	PROPERTY(user_visitor_list_item_scene, PackedScene);
	PROPERTY(sla_lbl, Label);
	PROPERTY(userid_lbl, Label);
	PROPERTY(activity_lbl, Label);
	PROPERTY(msgbox, RichTextLabel);
	PROPERTY(usedescript, RichTextLabel);
	PROPERTY(icon_texture, Variant);
	PROPERTY(bwcon, Label);
	PROPERTY(nwal, Label);
	PROPERTY(dnsl, RichTextLabel);
	PROPERTY(dhcpml, Label);
	PROPERTY(gracel, Label);
	PROPERTY(satl, Label);
	PROPERTY(lwstl, Label);
	PROPERTY(awstl, Label);
	PROPERTY(pymtl, Label);
	PROPERTY(pytdl, Label);
	PROPERTY(hwadl, Label);
	PROPERTY(fllbl, Label);
	PROPERTY(rcloopd, Container);

	inline String colorize_surveyor_msg(String m);
	inline String colorize_surveyor_lines(Variant msgs);
};

#include "User.hpp"

inline String UserDetailPanel::colorize_surveyor_msg(String m) { return this->operator()("colorize_surveyor_msg", m); }
inline String UserDetailPanel::colorize_surveyor_lines(Variant msgs) { return this->operator()("colorize_surveyor_lines", msgs); }

#endif

#ifndef TNI_API_HEADER_MSGBOX
#define TNI_API_HEADER_MSGBOX
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "ScreenApp.hpp"

struct MsgBox : public ScreenApp {
	using ScreenApp::ScreenApp;

	constexpr MsgBox(ScreenApp base) : ScreenApp{base} {}
	constexpr MsgBox(uint64_t addr) : ScreenApp{addr} {}
	constexpr MsgBox(Object obj) : MsgBox{obj.address()} {}
	MsgBox(Variant variant) : MsgBox{variant.as_object().address()} {}


	PROPERTY(msg_list_scene, PackedScene);
	PROPERTY(msg_view_scene, PackedScene);
	PROPERTY(viewing_msg, bool);
	PROPERTY(main_pane, MainPane);
	PROPERTY(dynamic_container_path, NodePath);
	PROPERTY(dynamic_container, Container);
	PROPERTY(minimize_button, BaseButton);

	inline void launch();
	inline void minimize();
	inline void hide_ctlbutton();
	inline void show_ctlbutton();
	inline void clear_dynamic();
	inline void toast(String msg, int64_t duration);
	inline Variant get_main_pane();
};

#include "MainPane.hpp"

inline void MsgBox::launch() { this->voidcall("launch"); }
inline void MsgBox::minimize() { this->voidcall("minimize"); }
inline void MsgBox::hide_ctlbutton() { this->voidcall("hide_ctlbutton"); }
inline void MsgBox::show_ctlbutton() { this->voidcall("show_ctlbutton"); }
inline void MsgBox::clear_dynamic() { this->voidcall("clear_dynamic"); }
inline void MsgBox::toast(String msg, int64_t duration) { this->voidcall("toast", msg, duration); }
inline Variant MsgBox::get_main_pane() { return this->operator()("get_main_pane"); }

#endif

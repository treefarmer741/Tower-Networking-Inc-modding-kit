#ifndef TNI_API_HEADER_WHITEBOARDCANVAS
#define TNI_API_HEADER_WHITEBOARDCANVAS
// Generated API for game version 0.12.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"

struct WhiteboardCanvas : public PanelContainer {
	using PanelContainer::PanelContainer;

	constexpr WhiteboardCanvas(PanelContainer base) : PanelContainer{base} {}
	constexpr WhiteboardCanvas(uint64_t addr) : PanelContainer{addr} {}
	constexpr WhiteboardCanvas(Object obj) : WhiteboardCanvas{obj.address()} {}
	WhiteboardCanvas(Variant variant) : WhiteboardCanvas{variant.as_object().address()} {}

	static constexpr int64_t PALETTE_W = 90;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t CANVAS_W = 650;  // NOTE: You should recompile your mod if this value changes!
	static constexpr int64_t CANVAS_H = 460;  // NOTE: You should recompile your mod if this value changes!
	PROPERTY(PAL_TYPES, Variant);  // Const value type was not supported.
	enum struct Mode : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		MOVE = 0,
		PLACE = 1,
		CONNECT = 2,
		LABEL = 3,
		ERASE = 4,
	};

	PROPERTY(icon_scene, PackedScene);
	PROPERTY(icon_display_size, Variant);
	PROPERTY(switch_tex, Texture2D);
	PROPERTY(router_tex, Texture2D);
	PROPERTY(firewall_tex, Texture2D);
	PROPERTY(storage_tex, Texture2D);
	PROPERTY(ups_tex, Texture2D);
	PROPERTY(interface_tex, Texture2D);
	PROPERTY(server_tex, Texture2D);

	inline void rpc_spawn_icon(int64_t icon_id, String type, double x, double y);
	inline void rpc_spawn_label(int64_t icon_id, String text, double x, double y);
	inline void rpc_delete_icon(int64_t icon_id);
	inline void rpc_move_icon(int64_t icon_id, double x, double y);
	inline void rpc_set_label(int64_t icon_id, String text);
	inline void rpc_draw_connection(int64_t line_id, int64_t from_id, int64_t to_id);
	inline void rpc_delete_line(int64_t line_id);
	inline void rpc_load_state(Variant data);
	inline void on_icon_clicked(const WhiteboardIcon& icon);
	inline Variant export_save_data();
	inline void import_save_data(Variant data);
};

#include "WhiteboardIcon.hpp"

inline void WhiteboardCanvas::rpc_spawn_icon(int64_t icon_id, String type, double x, double y) { this->voidcall("rpc_spawn_icon", icon_id, type, x, y); }
inline void WhiteboardCanvas::rpc_spawn_label(int64_t icon_id, String text, double x, double y) { this->voidcall("rpc_spawn_label", icon_id, text, x, y); }
inline void WhiteboardCanvas::rpc_delete_icon(int64_t icon_id) { this->voidcall("rpc_delete_icon", icon_id); }
inline void WhiteboardCanvas::rpc_move_icon(int64_t icon_id, double x, double y) { this->voidcall("rpc_move_icon", icon_id, x, y); }
inline void WhiteboardCanvas::rpc_set_label(int64_t icon_id, String text) { this->voidcall("rpc_set_label", icon_id, text); }
inline void WhiteboardCanvas::rpc_draw_connection(int64_t line_id, int64_t from_id, int64_t to_id) { this->voidcall("rpc_draw_connection", line_id, from_id, to_id); }
inline void WhiteboardCanvas::rpc_delete_line(int64_t line_id) { this->voidcall("rpc_delete_line", line_id); }
inline void WhiteboardCanvas::rpc_load_state(Variant data) { this->voidcall("rpc_load_state", data); }
inline void WhiteboardCanvas::on_icon_clicked(const WhiteboardIcon& icon) { this->voidcall("on_icon_clicked", Object(reinterpret_cast<const Object*>(&icon)->address())); }
inline Variant WhiteboardCanvas::export_save_data() { return this->operator()("export_save_data"); }
inline void WhiteboardCanvas::import_save_data(Variant data) { this->voidcall("import_save_data", data); }

#endif

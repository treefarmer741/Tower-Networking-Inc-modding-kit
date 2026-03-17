#ifndef TNI_API_HEADER_DEBUGLAYER
#define TNI_API_HEADER_DEBUGLAYER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct DebugLayer : public CanvasLayer {
	using CanvasLayer::CanvasLayer;

	constexpr DebugLayer(CanvasLayer base) : CanvasLayer{base} {}
	constexpr DebugLayer(uint64_t addr) : CanvasLayer{addr} {}
	constexpr DebugLayer(Object obj) : DebugLayer{obj.address()} {}
	DebugLayer(Variant variant) : DebugLayer{variant.as_object().address()} {}

	PROPERTY(livemon_ps, Variant);  // Const value type was not supported.
	static constexpr int64_t MAX_CMD_HISTORY = 20;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(main_ctn, Container);
	PROPERTY(display_le, RichTextLabel);
	PROPERTY(cmd_in, TextEdit);
	PROPERTY(lvmon_ctn, Container);
	PROPERTY(enabled, bool);
	PROPERTY(ext_cmd, Variant);
	PROPERTY(mux_cmd, Variant);
	PROPERTY(cmd_hist, Variant);
	PROPERTY(curr_muxed, Control);

	inline void clear_all_monitors();
	inline void register_cmd(String cmd_name, Variant cmd_func, bool warn_overwrite);
	inline void print_console(String msg, String end);
	inline void monitor_obj(Object target_obj);
};


inline void DebugLayer::clear_all_monitors() { voidcall("clear_all_monitors"); }
inline void DebugLayer::register_cmd(String cmd_name, Variant cmd_func, bool warn_overwrite) { voidcall("register_cmd", cmd_name, cmd_func, warn_overwrite); }
inline void DebugLayer::print_console(String msg, String end) { voidcall("print_console", msg, end); }
inline void DebugLayer::monitor_obj(Object target_obj) { voidcall("monitor_obj", target_obj); }

#endif

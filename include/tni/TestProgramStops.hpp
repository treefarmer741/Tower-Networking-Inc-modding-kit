#ifndef TNI_API_HEADER_TESTPROGRAMSTOPS
#define TNI_API_HEADER_TESTPROGRAMSTOPS
// Generated API for game version 0.13.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
#include "structs.hpp"
#include "TestBase.hpp"

struct TestProgramStops : public TestBase {
	using TestBase::TestBase;

	constexpr TestProgramStops(TestBase base) : TestBase{base} {}
	constexpr TestProgramStops(uint64_t addr) : TestBase{addr} {}
	constexpr TestProgramStops(Object obj) : TestProgramStops{obj.address()} {}
	TestProgramStops(Variant variant) : TestProgramStops{variant.as_object().address()} {}

	static constexpr int64_t TRACE_LIMIT = 4000;  // NOTE: You should recompile your mod if this value changes!

	PROPERTY(events, Variant);
	PROPERTY(trace, Variant);
	PROPERTY(trace_pc_path, String);
	PROPERTY(save_name, String);
	PROPERTY(is_ready, bool);

	inline Variant arm();
	inline Variant disarm();
	inline String get_report();
	inline Variant get_events();
	inline Variant get_stop_summary();
	inline String get_stops();
	inline Variant vm_state();
	inline Variant get_trace();
	inline Variant get_charge_lowmarks();
	inline Variant list_world();
	inline Variant audit_save_vs_live(String sname);
	inline Variant read_saved_playopt(String sname, String key);
	inline Variant live_playopt(String key);
	inline Variant ingress_report();
	inline Variant probe_stale_ingress(String pc_path, String up_path, int64_t idx);
	inline double set_timescale(double v);
	inline bool set_autostart(bool v);
	inline int64_t break_mains();
	inline int64_t close_mains();
	inline Variant power_state();
	inline Variant snapshot_running();
	inline Variant compare_running(Variant before);
	inline String save_now();
	inline String latest_autosave();
	inline void load_save(String name_);
	inline int64_t start_everything();
	inline void begin_setup();
	inline void teardown();
	inline void check(bool cond, String msg);
	inline Variant get_result_summary();
};


inline Variant TestProgramStops::arm() { return this->operator()("arm"); }
inline Variant TestProgramStops::disarm() { return this->operator()("disarm"); }
inline String TestProgramStops::get_report() { return this->operator()("get_report"); }
inline Variant TestProgramStops::get_events() { return this->operator()("get_events"); }
inline Variant TestProgramStops::get_stop_summary() { return this->operator()("get_stop_summary"); }
inline String TestProgramStops::get_stops() { return this->operator()("get_stops"); }
inline Variant TestProgramStops::vm_state() { return this->operator()("vm_state"); }
inline Variant TestProgramStops::get_trace() { return this->operator()("get_trace"); }
inline Variant TestProgramStops::get_charge_lowmarks() { return this->operator()("get_charge_lowmarks"); }
inline Variant TestProgramStops::list_world() { return this->operator()("list_world"); }
inline Variant TestProgramStops::audit_save_vs_live(String sname) { return this->operator()("audit_save_vs_live", sname); }
inline Variant TestProgramStops::read_saved_playopt(String sname, String key) { return this->operator()("read_saved_playopt", sname, key); }
inline Variant TestProgramStops::live_playopt(String key) { return this->operator()("live_playopt", key); }
inline Variant TestProgramStops::ingress_report() { return this->operator()("ingress_report"); }
inline Variant TestProgramStops::probe_stale_ingress(String pc_path, String up_path, int64_t idx) { return this->operator()("probe_stale_ingress", pc_path, up_path, idx); }
inline double TestProgramStops::set_timescale(double v) { return this->operator()("set_timescale", v); }
inline bool TestProgramStops::set_autostart(bool v) { return this->operator()("set_autostart", v); }
inline int64_t TestProgramStops::break_mains() { return this->operator()("break_mains"); }
inline int64_t TestProgramStops::close_mains() { return this->operator()("close_mains"); }
inline Variant TestProgramStops::power_state() { return this->operator()("power_state"); }
inline Variant TestProgramStops::snapshot_running() { return this->operator()("snapshot_running"); }
inline Variant TestProgramStops::compare_running(Variant before) { return this->operator()("compare_running", before); }
inline String TestProgramStops::save_now() { return this->operator()("save_now"); }
inline String TestProgramStops::latest_autosave() { return this->operator()("latest_autosave"); }
inline void TestProgramStops::load_save(String name_) { this->voidcall("load_save", name_); }
inline int64_t TestProgramStops::start_everything() { return this->operator()("start_everything"); }
inline void TestProgramStops::begin_setup() { this->voidcall("begin_setup"); }
inline void TestProgramStops::teardown() { this->voidcall("teardown"); }
inline void TestProgramStops::check(bool cond, String msg) { this->voidcall("check", cond, msg); }
inline Variant TestProgramStops::get_result_summary() { return this->operator()("get_result_summary"); }

#endif

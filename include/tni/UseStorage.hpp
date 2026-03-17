#ifndef TNI_API_HEADER_USESTORAGE
#define TNI_API_HEADER_USESTORAGE
// Generated API for game version 0.10.0
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct UseStorage : public Node {
	using Node::Node;

	constexpr UseStorage(Node base) : Node{base} {}
	constexpr UseStorage(uint64_t addr) : Node{addr} {}
	constexpr UseStorage(Object obj) : UseStorage{obj.address()} {}
	UseStorage(Variant variant) : UseStorage{variant.as_object().address()} {}


	PROPERTY(stored_use_stack, Variant);
	PROPERTY(stored_use_config, UseConfig);
	PROPERTY(storage_factor, int64_t);
	PROPERTY(cpu_load, int64_t);
	PROPERTY(code_size, int64_t);
	PROPERTY(stack_size, int64_t);
	PROPERTY(release_name, String);
	PROPERTY(description, String);
	PROPERTY(modifiers, Variant);
	PROPERTY(application_unlocks, Variant);
	PROPERTY(required_hardware_device, Variant);
	PROPERTY(data_size, int64_t);
	PROPERTY(install_size, int64_t);
	PROPERTY(rendered_description, String);
	PROPERTY(pkt_processing_priority, int64_t);
	PROPERTY(is_running, bool);
	PROPERTY(host_controller, LogicController);

	inline void tick();
	inline String colorize_description(String ds);
	inline void start();
	inline void stop();
	inline void uninstall();
	inline void install(Variant _install_opts);
	inline bool process_network_packet(PacketControlModule pktctl, Variant packet);
};

#include "UseConfig.hpp"
#include "LogicController.hpp"
#include "PacketControlModule.hpp"

inline void UseStorage::tick() { voidcall("tick"); }
inline String UseStorage::colorize_description(String ds) { return operator()("colorize_description", ds); }
inline void UseStorage::start() { voidcall("start"); }
inline void UseStorage::stop() { voidcall("stop"); }
inline void UseStorage::uninstall() { voidcall("uninstall"); }
inline void UseStorage::install(Variant _install_opts) { voidcall("install", _install_opts); }
inline bool UseStorage::process_network_packet(PacketControlModule pktctl, Variant packet) { return operator()("process_network_packet", pktctl, packet); }

#endif

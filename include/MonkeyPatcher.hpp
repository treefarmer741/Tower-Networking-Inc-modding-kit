#ifndef TNI_API_HEADER_MONKEYPATCHER
#define TNI_API_HEADER_MONKEYPATCHER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>

struct MonkeyPatcher : public Node {
	using Node::Node;

	enum scn_file_remap : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		res://scenes/locations/cyberpunk_floor_a.tscn = res://scenes/locations/demo/cyberpunk_floor.tscn,
		res://scenes/locations/lab_floor.tscn = res://scenes/locations/demo/lab_floor.tscn,
		res://scenes/locations/media_company_a.tscn = res://scenes/locations/demo/media_company_floor.tscn,
		res://scenes/locations/datacenter.tscn = res://scenes/locations/demo/datacenter.tscn,
		res://scenes/locations/b40_retro.tscn = res://scenes/locations/demo/b40_retro.tscn,
		res://scenes/locations/capsule_rental.tscn = res://scenes/locations/demo/capsule_rental.tscn,
		res://scenes/locations/news_company.tscn = res://scenes/locations/demo/news_company.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/iptable.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/rtkernel.tscn,
		res://scenes/graph_network_simulation/programs/implv2/servers/dns_server.tscn = res://scenes/graph_network_simulation/programs/early_access/domain_name_system/dns_server.tscn,
		res://scenes/graph_network_simulation/programs/implv2/servers/dns_server_lite.tscn = res://scenes/graph_network_simulation/programs/early_access/domain_name_system/dns_server_lite.tscn,
		res://scenes/graph_network_simulation/programs/implv2/servers/dhcp_server.tscn = res://scenes/graph_network_simulation/programs/early_access/dynamic_host_configuration_protocol/dhcp_server.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/blade_os.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/blade_os.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/firewatcher.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/firewatcher.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/kujikawa_switch_os.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/kujikawa_switch_os.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/rtkernel.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/rtkernel.tscn,
		res://scenes/graph_network_simulation/programs/implv2/networking_firmwares/wirerat.tscn = res://scenes/graph_network_simulation/programs/early_access/networking_firmwares/wirerat.tscn,
		res://scenes/graph_network_simulation/programs/implv2/misc/load_tester.tscn = res://scenes/graph_network_simulation/programs/early_access/misc/load_tester.tscn,
		res://scenes/graph_network_simulation/programs/implv2/misc/nop.tscn = res://scenes/graph_network_simulation/programs/early_access/misc/nop.tscn,
		res://scenes/graph_network_simulation/programs/implv2/misc/remote_debugger.tscn = res://scenes/graph_network_simulation/programs/early_access/misc/remote_debugger.tscn,
		res://scenes/graph_network_simulation/programs/implv2/misc/tnb_mbed.tscn = res://scenes/graph_network_simulation/programs/early_access/misc/tnb_mbed.tscn,
		res://scenes/graph_network_simulation/programs/implv2/misc/voip_phone_firmware.tscn = res://scenes/graph_network_simulation/programs/early_access/voice_over_network/voip_phone_firmware.tscn,
		res://scenes/graph_network_simulation/programs/implv2/servers/voip_server.tscn = res://scenes/graph_network_simulation/programs/early_access/voice_over_network/voip_server.tscn,
		res://scenes/graph_network_simulation/programs/implv2/servers/padu_v1.tscn = res://scenes/graph_network_simulation/programs/early_access/databases/padu_v1.tscn,
		res://scenes/graph_network_simulation/programs/early_access/consolidate_behaviour/view_web_content.tscn = res://scenes/graph_network_simulation/programs/early_access/consolidate_behaviour/view_public_content.tscn,
		res://scenes/graph_network_simulation/programs/early_access/consolidate_behaviour/read_or_view_content.tscn = res://scenes/graph_network_simulation/programs/early_access/consolidate_behaviour/view_private_content.tscn,
		res://scenes/graph_network_simulation/programs/early_access/banking_system/use/host_dividend_payment.tscn = res://scenes/graph_network_simulation/programs/early_access/banking_system/use/host_fixed_deposit.tscn,
		res://scenes/graph_network_simulation/programs/early_access/banking_system/use/receive_dividend_payment.tscn = res://scenes/graph_network_simulation/programs/early_access/banking_system/use/manage_fixed_deposit.tscn,
		res://scenes/graph_network_simulation/users/types_v3/consumers/tier0_archived_reference/horror_director.tscn = res://scenes/graph_network_simulation/users/types_v3/early_access/producers/community_service/horror_directing.tscn,
		res://scenes/fixtures/outlets/users/lcu_outlet_c.tscn = res://scenes/fixtures/outlets/users/lcu_outlet_b_dual.tscn,
		res://scenes/fixtures/outlets/users/lcu_outlet_d.tscn = res://scenes/fixtures/outlets/users/lcu_outlet_a_b.tscn,
		res://scenes/locations/ea/tier1_floor/exclusive/ixp.tscn = res://scenes/locations/ea/tier1_floor/ixp/base.tscn,
		res://scenes/graph_network_simulation/programs/early_access/misc/load_tester.tscn = res://scenes/graph_network_simulation/programs/early_access/misc/load_testers/dns_load_tester.tscn,
		res://scenes/fixtures/statics/racks/mounting_shelf_piece_R500.tscn = res://scenes/units/misc/mounting_shelf_piece_R500.tscn,
		res://scenes/fixtures/statics/racks/mounting_shelf_piece_R930.tscn = res://scenes/units/misc/mounting_shelf_piece_R930.tscn,
	};

	MonkeyPatcher(Variant variant) : MonkeyPatcher{variant.as_object().address()} {}


	inline String patch_scene_file_path(String _old_scene_file_path) { return operator()("patch_scene_file_path", _old_scene_file_path); }
	inline void load_localization_files(String po_file_path) { voidcall("load_localization_files", po_file_path); }
	inline Variant list_including_remapped_files_at(String path) { return operator()("list_including_remapped_files_at", path); }
};

#endif

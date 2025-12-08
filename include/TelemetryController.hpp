#ifndef TNI_API_HEADER_TELEMETRYCONTROLLER
#define TNI_API_HEADER_TELEMETRYCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>

struct TelemetryController : public Node {
	using Node::Node;


	TelemetryController(Variant variant) : TelemetryController{variant.as_object().address()} {}

	PROPERTY(http_request, HTTPRequest);

	inline bool send_json(String collection_url, String api_key, Variant json_data, bool include_screenshot, bool include_logs) { return operator()("send_json", collection_url, api_key, json_data, include_screenshot, include_logs); }
};

#endif

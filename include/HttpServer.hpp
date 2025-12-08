#ifndef TNI_API_HEADER_HTTPSERVER
#define TNI_API_HEADER_HTTPSERVER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include <structs.hpp>

struct HttpServer : public Node {
	using Node::Node;

	constexpr HttpServer(Node base) : Node{base} {}
	constexpr HttpServer(uint64_t addr) : Node{addr} {}
	constexpr HttpServer(Object obj) : HttpServer{obj.address()} {}
	HttpServer(Variant variant) : HttpServer{variant.as_object().address()} {}

//	PROPERTY(HttpResponse, Variant);  // Const value type was not supported.
//	PROPERTY(HttpRequest, Variant);  // Const value type was not supported.
//	PROPERTY(HttpRouter, Variant);  // Const value type was not supported.
//	PROPERTY(HttpServer, Variant);  // Const value type was not supported.
//	PROPERTY(HttpFileRouter, Variant);  // Const value type was not supported.

	PROPERTY(bind_address, String);
	PROPERTY(port, int64_t);
	PROPERTY(server_identifier, String);
	PROPERTY(threads, Variant);

	inline void register_router(HttpRouter router);
	inline void start();
	inline void stop();
	inline void enable_cors(Variant allowed_origins, String access_control_allowed_methods, String access_control_allowed_headers);
};

#include "HttpRouter.hpp"

inline void HttpServer::register_router(HttpRouter router) { voidcall("register_router", router); }
inline void HttpServer::start() { voidcall("start"); }
inline void HttpServer::stop() { voidcall("stop"); }
inline void HttpServer::enable_cors(Variant allowed_origins, String access_control_allowed_methods, String access_control_allowed_headers) { voidcall("enable_cors", allowed_origins, access_control_allowed_methods, access_control_allowed_headers); }

#endif

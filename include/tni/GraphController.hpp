#ifndef TNI_API_HEADER_GRAPHCONTROLLER
#define TNI_API_HEADER_GRAPHCONTROLLER
// Generated API for game version 0.9.1
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <api.hpp>
#include "structs.hpp"

struct GraphController : public Node {
	using Node::Node;

	constexpr GraphController(Node base) : Node{base} {}
	constexpr GraphController(uint64_t addr) : Node{addr} {}
	constexpr GraphController(Object obj) : GraphController{obj.address()} {}
	GraphController(Variant variant) : GraphController{variant.as_object().address()} {}

	enum Traversal : int64_t {  // NOTE: You should recompile your mod if this enum changes!
		CONTINUE = 0,
		BREAK = 1,
		SKIP = 2,
	};

	PROPERTY(ports, Variant);
	PROPERTY(neighbours, Variant);
	PROPERTY(reversed_ports, Variant);

	inline Variant is_friend_class(Variant obj);
	inline void add_port(Socket socket);
	inline void remove_port(Socket socket);
	inline void add_neighbour(Socket port, GraphController nc);
	inline void remove_neighbours_on_port(Socket port);
	inline GraphController get_neighbour(Socket via);
	inline bool default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth);
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth);
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
	inline bool default_traversal_rule(Variant _context, Variant _from_node, Variant _to_node, Variant _current_depth);
	inline int64_t default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth);
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
};

#include "Socket.hpp"
#include "GraphController.hpp"

inline Variant GraphController::is_friend_class(Variant obj) { return operator()("is_friend_class", obj); }
inline void GraphController::add_port(Socket socket) { voidcall("add_port", socket); }
inline void GraphController::remove_port(Socket socket) { voidcall("remove_port", socket); }
inline void GraphController::add_neighbour(Socket port, GraphController nc) { voidcall("add_neighbour", port, nc); }
inline void GraphController::remove_neighbours_on_port(Socket port) { voidcall("remove_neighbours_on_port", port); }
inline GraphController GraphController::get_neighbour(Socket via) { return GraphController(operator()("get_neighbour", via).as_object().address()); }
inline bool GraphController::default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth) { return operator()("default_port_traversal_rule", _context, _node, _port, _current_depth); }
inline int64_t GraphController::default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
inline void GraphController::bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
inline bool GraphController::default_traversal_rule(Variant _context, Variant _from_node, Variant _to_node, Variant _current_depth) { return operator()("default_traversal_rule", _context, _from_node, _to_node, _current_depth); }
inline int64_t GraphController::default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth) { return operator()("default_traversal_callback", _context, _node, _current_index, _current_depth); }
inline void GraphController::bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }

#endif

#ifndef TNI_API_HEADER_GRAPHCONTROLLER
#define TNI_API_HEADER_GRAPHCONTROLLER
// Generated API for game version 0.10.11
// If any constants or enum's change between versions, a rebuild of your mod with updated headers may be required!

#include <generated_api.hpp>
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
	inline void add_port(const Socket& socket);
	inline void remove_port(const Socket& socket);
	inline void add_neighbour(const Socket& port, const GraphController& nc);
	inline void remove_neighbours_on_port(const Socket& port);
	inline GraphController get_neighbour(const Socket& via);
	inline bool default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth);
	inline int64_t default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth);
	inline void bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
	inline bool default_traversal_rule(Variant _context, Variant _from_node, Variant _to_node, Variant _current_depth);
	inline int64_t default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth);
	inline void bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule);
};

#include "Socket.hpp"
#include "GraphController.hpp"

inline Variant GraphController::is_friend_class(Variant obj) { return this->operator()("is_friend_class", obj); }
inline void GraphController::add_port(const Socket& socket) { this->voidcall("add_port", Object(reinterpret_cast<const Object*>(&socket)->address())); }
inline void GraphController::remove_port(const Socket& socket) { this->voidcall("remove_port", Object(reinterpret_cast<const Object*>(&socket)->address())); }
inline void GraphController::add_neighbour(const Socket& port, const GraphController& nc) { this->voidcall("add_neighbour", Object(reinterpret_cast<const Object*>(&port)->address()), Object(reinterpret_cast<const Object*>(&nc)->address())); }
inline void GraphController::remove_neighbours_on_port(const Socket& port) { this->voidcall("remove_neighbours_on_port", Object(reinterpret_cast<const Object*>(&port)->address())); }
inline GraphController GraphController::get_neighbour(const Socket& via) { return GraphController(this->operator()("get_neighbour", Object(reinterpret_cast<const Object*>(&via)->address())).as_object().address()); }
inline bool GraphController::default_port_traversal_rule(Variant _context, Variant _node, Variant _port, Variant _current_depth) { return this->operator()("default_port_traversal_rule", _context, _node, _port, _current_depth); }
inline int64_t GraphController::default_port_traversal_callback(Variant _context, Variant _node, Variant _port, Variant _current_index, Variant _current_depth) { return this->operator()("default_port_traversal_callback", _context, _node, _port, _current_index, _current_depth); }
inline void GraphController::bfs_port_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { this->voidcall("bfs_port_traversal", traversal_ctx, traversal_callback, traversal_rule); }
inline bool GraphController::default_traversal_rule(Variant _context, Variant _from_node, Variant _to_node, Variant _current_depth) { return this->operator()("default_traversal_rule", _context, _from_node, _to_node, _current_depth); }
inline int64_t GraphController::default_traversal_callback(Variant _context, Variant _node, Variant _current_index, Variant _current_depth) { return this->operator()("default_traversal_callback", _context, _node, _current_index, _current_depth); }
inline void GraphController::bfs_traversal(Variant traversal_ctx, Variant traversal_callback, Variant traversal_rule) { this->voidcall("bfs_traversal", traversal_ctx, traversal_callback, traversal_rule); }

#endif

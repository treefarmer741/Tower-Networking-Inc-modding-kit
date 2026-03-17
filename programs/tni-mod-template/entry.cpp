#include <api.hpp>

#include "tower.hpp"

/*
TNI modding template

https://libriscv.no/docs/host_langs/godot_integration/godot_docs/cppexamples/
https://libriscv.no/docs/host_langs/godot_integration/godot_docs/cppapi

*/

EXTERN_SYSCALL(uint64_t, sys_node_create, Node_Create_Shortlist, const char *, size_t, const char *, size_t);

static Mod mod = Mod(0);
static ModApiV1 api_v1 = ModApiV1(0);

// This should be called at the entrance of any calls into the mod.
// eg, callbacks like `on_mod_load` and any callables given to Godot.
inline void fetch_mod_api() {
	mod = get_node<Mod>();
	api_v1 = mod.api_v1();
}

static int somevar;

void print_scenario_name() {
	// sample function to demonstrate usage of the game API
	std::optional<GameWorld> gw = api_v1.get_game_world();
	if (!gw) return;
	
    String scenario_name = gw.value().scenario_name();
    printf("scenario %s\n", scenario_name.utf8().c_str());
}

static Variant on_mod_load() {
	fetch_mod_api();
	printf("Loaded tni-mod-template\n");
	return Nil;
}

static Variant on_engine_load() {
	fetch_mod_api();
	printf("All mods have been loaded...\n");

	std::string classname = "AcceptDialog";
	std::string path = "";
	AcceptDialog diag = sys_node_create(Node_Create_Shortlist::CREATE_CLASSDB, classname.data(), classname.size(), path.data(), path.size());
	diag.title() = "Testing a dialog.";
	diag.dialog_text() = "Hello from a tni mod!";
	Callable close_fn = Callable::Create<Variant(AcceptDialog)>([](AcceptDialog diag) -> Variant {
		diag.queue_free();
		return Nil;
	}, Variant(diag));
	diag.get("confirmed")("connect", close_fn);  // godot-sandbox has no type for Signal :/
	diag.get("canceled")("connect", close_fn);  // godot-sandbox has no type for Signal :/
	get_node().add_child(diag);
	diag.popup_centered();

	return Nil;
}

static Variant on_game_tick(double delta) {
	fetch_mod_api();
	// this is called every game tick.
	return Nil;
}

static Variant on_player_input(InputEvent event) {
	fetch_mod_api();
	// this is called when player input is received.
    if (event.get_class() == "InputEventKey") {
        InputEventKey* key = reinterpret_cast<InputEventKey*>(&event);
        
        if (key->is_pressed() && key->get_keycode() == 32) {
            printf("SPACEEEE! %d\n", somevar);
            somevar += 1;

			print_scenario_name();
        } else if (!key->is_pressed() && key->get_keycode() == 32) {
            print("NO SPACE :(");
        }
    }
	
	return Nil;
}

static Variant on_game_state_ready() {
	fetch_mod_api();
	// this is called when the game is ready.
    print_scenario_name();
	return Nil;
}

static Variant on_game_host_eod() {
	fetch_mod_api();
	// this is called when the game host's end-of-day occurs.
	return Nil;
}

static Variant on_device_spawned(DeviceUnit device) {
	fetch_mod_api();
	// this is called when a device is spawned.
	return Nil;
}

static void test() {
	printf("atexit\n");
}

int main() {
    // stdout line buffering, to match TNI mod output buffering.
    setvbuf(stdout, NULL, _IOLBF, BUFSIZ);

	// These are the various optional callbacks that TNI provides to modders.
	ADD_API_FUNCTION(on_mod_load, "", "", "Called immediately after the mod is loaded (after main())");
	ADD_API_FUNCTION(on_engine_load, "", "", "Called when all mods have been loaded");
	ADD_API_FUNCTION(on_game_state_ready, "", "", "Called when the game is ready");
	ADD_API_FUNCTION(on_game_host_eod, "", "", "Called when the end-of-day occurs on the host");
	ADD_API_FUNCTION(on_game_tick, "", "", "Called every game tick");
	ADD_API_FUNCTION(on_player_input, "", "", "Called when player input");
	ADD_API_FUNCTION(on_device_spawned, "", "", "Called when device spawned");

	atexit(test);

	halt();
}

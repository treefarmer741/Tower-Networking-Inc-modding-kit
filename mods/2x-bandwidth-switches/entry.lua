function on_mod_load()
    -- this is called when this mod is loaded
    -- pressing F-11 key will reload all mods

    print("High BW capacity switches!")
end

function on_mods_loaded()
    -- this is called after all mods are loaded

    -- The following is just examples, you should remove these in your own mod;

    ModApiV1.sanity()

    print("ModApiV1.get_script().resource_path", ModApiV1.get_script().resource_path)  -- res://scenes/core/modding_support/mod_api_v1.gd
    print("is resource_path", ModApiV1:is(ModApiV1.get_script().resource_path))  -- true
    print("is Script", ModApiV1.get_script():is("Resource"))  -- true
    print("is Script", ModApiV1.get_script():is("Script"))  -- true
    print("is autoload name", ModApiV1.get_script():is("ModApiV1"))  -- false
end

---@param device DeviceUnit
function on_device_spawned(device)
    if device.device_hardware_class == 1 then
        local current_bw = device.logic_controller.installed_nbw
        local new_bw = current_bw * 2
        device.logic_controller.installed_nbw = new_bw
        print("modified bandwidth of " .. device.product_name .. " from " .. current_bw .. " to " .. new_bw)
    end
end

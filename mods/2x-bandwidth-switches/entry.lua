function on_mod_load()
    -- this is called when this mod is loaded
    -- pressing F-11 key will reload all mods
    print("High BW capacity switches!")
end

function on_mods_loaded()
    -- this is called after all mods are loaded
    ModApiV1.sanity()
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

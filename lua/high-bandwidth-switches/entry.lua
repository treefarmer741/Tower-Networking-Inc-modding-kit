function on_engine_load()
    print("High BW capacity switches!")
    ModApiV1.sanity()
end

function on_mod_reload()
    print("Pressed the reload action key (F11), reloading mod...")
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
function on_engine_load(modding_api)
    print("High BW capacity switches!")
    modding_api.call("sanity")
end

function on_device_spawned(modding_api, device)
    if device.get("device_hardware_class") == 1 then

        local current_bw = device.get("logic_controller").get("installed_nbw")
        local new_bw = current_bw * 2
        device.get("logic_controller").set("installed_nbw", new_bw)
        print("modified bandwidth of " .. device.get("product_name") .. " from " .. current_bw .. " to " .. new_bw)
    end
end
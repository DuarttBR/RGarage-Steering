--[[ 
######################################################
#               Script Desenvolvido por              #
#                🚗 Ryu Garage™ 🚗                  #
######################################################
]]

-- Sistema de Direção Aleatória
Citizen.CreateThread(function()
    local angle = 0.0
    local speed = 0.0
    while true do
        local timeWait = 1000
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if DoesEntityExist(veh) then
            timeWait = 1
            local tangle = GetVehicleSteeringAngle(veh)

            if tangle > 32.0 or tangle < -32.0 then
                angle = tangle
            end

            speed = GetEntitySpeed(veh)
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)

            if speed < 0.1 and DoesEntityExist(vehicle) and not GetIsTaskActive(PlayerPedId(), 151) and not GetIsVehicleEngineRunning(vehicle) then
                SetVehicleSteeringAngle(GetVehiclePedIsIn(PlayerPedId(), true), angle)
            end
        end
        Citizen.Wait(timeWait)
    end
end)

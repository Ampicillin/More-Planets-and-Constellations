local mod = MorePlanetsandConstellations
local CollectLilith = Isaac.GetItemIdByName("Lilith")
--[[local function Newlevel()
    local player = Isaac.GetPlayer(0)
    local level = Game():GetLevel()
    local rooms = Game():GetLevel():GetRooms()
    for i = 0, rooms.Size-1 do
        local room = rooms:Get(i)
            local roomDescriptor=level:GetRoomByIdx(i)
            local roomConfigRoom = roomDescriptor.Data
            if roomConfigRoom.Type == RoomType.ROOM_ULTRASECRET then
                local adjacentRooms = roomDescriptor.SafeGridIndex
                if adjacentRooms then
                    for _, direction in pairs(RoomShape) do
                        local neighborIndex = level:GetRoomByIdx(adjacentRooms + direction)
                        if neighborIndex then
                            
                        end
                    end
                end
            end
        end
    end
end


mod:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, Newlevel)--]]
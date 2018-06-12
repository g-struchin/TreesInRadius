local TreesInRadius = {}
TreesInRadius.ButtonDebugNow = Menu.AddKeyOption({"TreesInRadius"}, "Debug Now", Enum.ButtonCode.KEY_U)

function DebugNow()
    local tableTreesInRadius = Trees.InRadius(Entity.GetOrigin(Heroes.GetLocal()), 400, true)
    Log.Write("type TableTreesInRadius: "..type(tableTreesInRadius))
    for indexNumberTree, objectTree in pairs(tableTreesInRadius) do
        if Tree.IsActive(objectTree) then
            Log.Write("indexNumberTree: "..indexNumberTree.." objectTree: "..objectTree)
        end
    end
end

function TreesInRadius.OnGameStart()
end

function TreesInRadius.OnGameEnd()    
end

function TreesInRadius.OnUpdate()
    if Menu.IsKeyDownOnce(TreesInRadius.ButtonDebugNow) then
        DebugNow()
    end
end

return TreesInRadius
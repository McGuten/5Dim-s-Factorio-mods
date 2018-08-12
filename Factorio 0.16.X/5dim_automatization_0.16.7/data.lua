require("config")
--Changes
require("prototypes.changes")
--Loaders
if mods["5dim_transport"] then 
    require("prototypes.loader-4")
    require("prototypes.loader-5")
end
--Inserters
if not mods["bobinserters"] then
    require("prototypes.inserter-smart-speed2-range1")
    require("prototypes.inserter-smart-speed2-range1-close")
    require("prototypes.inserter-smart-speed2-range2")
    require("prototypes.inserter-smart-speed2-range2-close")
    require("prototypes.inserter-smart-speed3-range1")
    require("prototypes.inserter-smart-speed3-range1-close")
    require("prototypes.inserter-speed1-range1")
    require("prototypes.inserter-speed1-range2")
    require("prototypes.inserter-speed1-range3")
    require("prototypes.inserter-speed1-range1-close")
    require("prototypes.inserter-speed1-range2-close")
    require("prototypes.inserter-speed1-range3-close")
    require("prototypes.inserter-speed2-range1")
    require("prototypes.inserter-speed2-range2")
    require("prototypes.inserter-speed2-range3")
    require("prototypes.inserter-speed2-range1-close")
    require("prototypes.inserter-speed2-range2-close")
    require("prototypes.inserter-speed2-range3-close")
    require("prototypes.inserter-speed3-range1")
    require("prototypes.inserter-speed3-range2")
    require("prototypes.inserter-speed3-range3")
    require("prototypes.inserter-speed3-range1-close")
    require("prototypes.inserter-speed3-range2-close")
    require("prototypes.inserter-speed3-range3-close")
    
    --Side Inserters
    require("prototypes.inserter-basic-left")
    require("prototypes.inserter-basic-left-close")
    require("prototypes.inserter-basic-right")
    require("prototypes.inserter-basic-right-close")
    require("prototypes.inserter-fast-left")
    require("prototypes.inserter-fast-left-close")
    require("prototypes.inserter-fast-right")
    require("prototypes.inserter-fast-right-close")
    require("prototypes.inserter-extreme-left")
    require("prototypes.inserter-extreme-left-close")
    require("prototypes.inserter-extreme-right")
    require("prototypes.inserter-extreme-right-close")
else
    require("prototypes.inserter-speed3-range1")
end
--Assembling Machine
require("prototypes.assembling-machine-4")
require("prototypes.assembling-machine-5")

--Chemical plant
require("prototypes.chemical-plant-2")
require("prototypes.chemical-plant-3")

--Oil refinery
require("prototypes.oil-refinery-2")
require("prototypes.oil-refinery-3")

--Tech
require("prototypes.tech")
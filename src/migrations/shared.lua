local shared= {}

shared.STACKABLES = {
  pycoalprocessing = {
    { item = "coke", icon = nil, stage = 1 },
    { item = "fawogae", icon = nil, stage = 1 },
    { item = "iron-oxide", icon = nil, stage = 1 },
    { item = "ralesia", icon = nil, stage = 1 },
    { item = "ralesia-seeds", icon = nil, stage = 1 },
    { item = "fawogae-substrate", icon = nil, stage = 1 },
    { item = "boron-trioxide", icon = nil, stage = 1 },
    { item = "bonemeal", icon = nil, stage = 1 },
    { item = "lime", icon = nil, stage = 1 },
    { item = "borax", icon = nil, stage = 1 },
    { item = "treated-wood", icon = nil, stage = 1 },
    { item = "ground-sample01", icon = nil, stage = 1 },
    { item = "lens", icon = nil, stage = 1 }
  },
  pyhightech = {
    { item = "clay", icon = nil, stage = 1 },
    { item = "ceramic", icon = nil, stage = 1 },
    { item = "raw-fiber", icon = nil, stage = 1 },
    { item = "urea", icon = nil, stage = 1 },
    { item = "melamine", icon = nil, stage = 1 },
    { item = "melamine-resin", icon = nil, stage = 1 },
    { item = "electronic-circuit", icon = nil, stage = 2 },
    { item = "advanced-circuit", icon = nil, stage = 2 },
    { item = "processing-unit", icon = nil, stage = 3 },
    { item = "graphite", icon = nil, stage = 1 },
    { item = "fiberboard", icon = nil, stage = 1 },
    { item = "pcb1", icon = nil, stage = 1 }
  }
}
shared.STACKING_PREFIX = "deadlock-stacking-"
shared.CRATING_PREFIX ="deadlock-crating-"

return shared


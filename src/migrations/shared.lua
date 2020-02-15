local shared = "shared"

return {
  STACKABLES = {
    pycoalprocessing    = require(shared .. ".pycoalprocessing"),
    pyhightech          = require(shared .. ".pyhightech"),
    pyrawores           = require(shared .. ".pyrawores"),
    pyfusionenergy      = require(shared .. ".pyfusionenergy"),
    pypetroleumhandling = require(shared .. ".pypetroleumhandling"),
  },

  STACKING_PREFIX = "deadlock-stacking-",
}

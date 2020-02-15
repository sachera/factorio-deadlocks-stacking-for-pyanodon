local shared = "shared"

return {
  STACKABLES = {
    pycoalprocessing = require(shared .. ".pycoalprocessing"),
    pyhightech       = require(shared .. ".pyhightech"),
    pyrawores        = require(shared .. ".pyrawores"),
    pyfusionenergy   = require(shared .. ".pyfusionenergy"),
  },

  STACKING_PREFIX = "deadlock-stacking-",
}

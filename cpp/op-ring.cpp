#include "op-ring.h"
#include <iostream>

namespace opring {
  namespace jsi = facebook::jsi;
  
void install(jsi::Runtime &runtime,
             std::shared_ptr<react::CallInvoker> dispatcher) {
  std::cout << "op-ring installed" << std::endl;
}
} // namespace opring

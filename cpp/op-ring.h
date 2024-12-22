#pragma once

#include <ReactCommon/CallInvoker.h>
#include <jsi/jsi.h>
#include <jsi/jsilib.h>

namespace opring {
  namespace jsi = facebook::jsi;
  namespace react = facebook::react;
  

void install(jsi::Runtime &runtime,
             std::shared_ptr<react::CallInvoker> invoker);
} // namespace opring

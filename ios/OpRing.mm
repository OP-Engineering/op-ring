#import "OpRing.h"
#import <ReactCommon/CallInvoker.h>
#import <ReactCommon/RCTTurboModuleWithJSIBindings.h>

using namespace facebook;

@implementation OpRing {
  bool _didInstall;
  std::weak_ptr<react::CallInvoker> _callInvoker;
}
RCT_EXPORT_MODULE()

- (void)installJSIBindingsWithRuntime:(jsi::Runtime &)runtime {
  auto callInvoker = _callInvoker.lock();
  if (callInvoker == nullptr) {
    throw std::runtime_error("CallInvoker is missing");
  }

  opring::install(runtime, callInvoker);
  _didInstall = true;
}

- (void)install {
  if (!_didInstall) {
    throw std::runtime_error("OpRing module not installed");
  }
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params {
  _callInvoker = params.jsInvoker;
  return std::make_shared<facebook::react::NativeOpRingSpecJSI>(params);
}

@end

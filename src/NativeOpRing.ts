import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  install(): void;
}

let module = TurboModuleRegistry.getEnforcing<Spec>('OpRing');

module.install();

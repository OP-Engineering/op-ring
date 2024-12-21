#include <jni.h>
#include "op-ring.h"

extern "C"
JNIEXPORT jdouble JNICALL
Java_com_opring_OpRingModule_nativeMultiply(JNIEnv *env, jclass type, jdouble a, jdouble b) {
    return opring::multiply(a, b);
}

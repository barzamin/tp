/* Z2SoundHandles.cpp autogenerated by split.py v0.3 at 2021-01-05 01:21:30.657620 */

#include "global.h"
#include "Z2AudioLib/Z2SoundHandles/Z2SoundHandles.h"

Z2SoundHandles::Z2SoundHandles() {
    mNumHandles = 0;
}

Z2SoundHandles::~Z2SoundHandles() {
    this->deleteHandlesPool();
}

void Z2SoundHandles::initHandlesPool(u8 pNumHandles) {
    mNumHandles = pNumHandles;
}

asm void Z2SoundHandles::deleteHandlesPool() {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB120.s"
}

extern "C" {
// __dt__31JASMemPool<17Z2SoundHandlePool>Fv
// JASMemPool<17Z2SoundHandlePool>::~JASMemPool<17Z2SoundHandlePool>(void)
asm void JASMemPool_NS_dtor_X4_(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB200.s"
}

// getHandleSoundID__14Z2SoundHandlesF10JAISoundID
// Z2SoundHandles::getHandleSoundID(JAISoundID)
asm void Z2SoundHandles_NS_getHandleSoundID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB254.s"
}

// getHandleUserData__14Z2SoundHandlesFUl
// Z2SoundHandles::getHandleUserData(unsigned long)
asm void Z2SoundHandles_NS_getHandleUserData(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB2A0.s"
}

// getFreeHandle__14Z2SoundHandlesFv
// Z2SoundHandles::getFreeHandle(void)
asm void Z2SoundHandles_NS_getFreeHandle(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB2D8.s"
}

// getLowPrioSound__14Z2SoundHandlesF10JAISoundID
// Z2SoundHandles::getLowPrioSound(JAISoundID)
asm void Z2SoundHandles_NS_getLowPrioSound(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB3D0.s"
}

// stopAllSounds__14Z2SoundHandlesFUl
// Z2SoundHandles::stopAllSounds(unsigned long)
asm void Z2SoundHandles_NS_stopAllSounds(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB4A0.s"
}
};

bool Z2SoundHandles::isActive() const {
    for (JSULink<JAISound>* link = this->getFirst();
        link != NULL;
        link = link->getNext())
    {
        // TODO(erin): this should be a JAISound
        if (*(u32*)link->getObject() != 0) {
            return true;
        }
    }

    return false;
}

extern "C" {
// setPos__14Z2SoundHandlesFRCQ29JGeometry8TVec3<f>
// Z2SoundHandles::setPos(JGeometry::TVec3<f>)
asm void Z2SoundHandles_NS_setPos(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundHandles/asm/func_802AB538.s"
}
};

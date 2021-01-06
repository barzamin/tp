#ifndef __Z2SOUNDHANDLES_H__
#define __Z2SOUNDHANDLES_H__

#include "dolphin/types.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"
#include "JSystem/JSupport/JSUList/JSUList.h"
#include "JSystem/JGeometry/JGeometry.h"

class Z2SoundHandlePool : public JAISoundHandle, JSULink<Z2SoundHandlePool> {};

class Z2SoundHandles : protected JSUList<Z2SoundHandlePool> {
public:
    Z2SoundHandles();
    ~Z2SoundHandles();

    void initHandlesPool(u8 pNumHandles);
    void deleteHandlesPool();

    bool isActive() const;

    JAISoundHandle* getHandleSoundID(JAISoundID pSoundId);
    JAISoundHandle* getHandleUserData(u32 pUserData);

    void stopAllSounds(u32 fadeout);

    void setPos(const JGeometry::TVec3<f32>& pos);

    u32 getNumHandles() const {
        return this->getNumLinks();
    }

private:
    u8 mNumHandles;
};

#endif
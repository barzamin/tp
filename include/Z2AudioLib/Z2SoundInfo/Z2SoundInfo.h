#ifndef __Z2SOUNDINFO_H__
#define __Z2SOUNDINFO_H__

#include "dolphin/types.h"
#include "JSystem/JAudio2/JAISound/JAISound.h"

class Z2SoundInfo {
    u32 getBgmSeqResourceID(JAISoundID) const;
    u32 getCategory(void) const;
};

#endif
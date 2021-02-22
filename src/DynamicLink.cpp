/* DynamicLink.cpp autogenerated by split.py v0.3 at 2021-01-22 22:42:24.785146 */

#include "DynamicLink/DynamicLink.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRDvdRipper/JKRDvdRipper.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "global.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"

extern "C" {
void JUTReportConsole_f(const char*, ...);
void mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection(void);
void mount__12JKRFileCacheFPCcP7JKRHeapPCc(void);
void loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl(void);
void detachResource__13JKRFileLoaderFPvP13JKRFileLoader(void);
void getGlbResource__10JKRArchiveFUlPCcP10JKRArchive(void);
int snprintf( char * buffer, u32 bufsz,
              const char * format, ... );
void free__7JKRHeapFPvP7JKRHeap(void);
void create__20mDoDvdThd_callback_cFPFPv_PvPv(void);
void resize__7JKRHeapFPvUlP7JKRHeap(void);
void alloc__7JKRHeapFUliP7JKRHeap(void);
void getSize__7JKRHeapFPvP7JKRHeap(void);
};

extern const char lbl_8039A4A0; // @stringBase0

DynamicModuleControlBase::~DynamicModuleControlBase(void) {
    this->force_unlink();

    DynamicModuleControlBase* prev = this->mPrev;
    if (prev != NULL) {
        prev->mNext = this->mNext;
    }

    DynamicModuleControlBase* next = this->mNext;
    if (next != NULL) {
        next->mPrev = this->mPrev;
    }

    if (/* mFirst */ lbl_80451138 == this) {
        lbl_80451138 = this->mNext;
    }

    if (/* mLast */ lbl_8045113C == this) {
        lbl_8045113C = this->mPrev;
    }

    this->mNext = NULL;
    this->mPrev = NULL;
}

DynamicModuleControlBase::DynamicModuleControlBase() {
    mLinkCount = 0;
    mDoLinkCount = 0;
    mNext = NULL;

    if (/* mFirst */ lbl_80451138 == NULL) {
        lbl_80451138 = this;
    }

    mPrev = /* mLast */ lbl_8045113C;

    DynamicModuleControlBase* prev = mPrev;
    if (prev != NULL) {
        prev->mNext = this;
    }

    /* mLast */ lbl_8045113C = this;
}

extern "C" {
void __ct__24DynamicModuleControlBaseFv(void);
void __dt__24DynamicModuleControlBaseFv(void);
};

bool DynamicModuleControlBase::link() {
    // @todo on debug, does a CheckMainThread

    if (mLinkCount == 0) {
        do_load();
        if (do_link() == 0) {
            return false;
        }

        if (mDoLinkCount < 65535) {
            mDoLinkCount++;
        }
    }

    JUT_ASSERT(mLinkCount != 65535);  // "mLinkCount < 65535"
    if (mLinkCount < 65535) {
        mLinkCount++;
    }

    return true;
}

bool DynamicModuleControlBase::unlink() {
    // @todo on debug, does a CheckMainThread

    if (mLinkCount != 0) {
        mLinkCount--;
        if (mLinkCount == 0) {
            do_unlink();
            do_unload();
        }
    } else {
        OSReport_Warning("%08x DynamicModuleControlBase::unlink() mLinkCount id already zero.\n", this);
    }

    return true;
}

int DynamicModuleControlBase::load_async() {
    if (mLinkCount == 0) {
        return do_load_async();
    }

    return true;
}

bool DynamicModuleControlBase::force_unlink() {
    if (mLinkCount != 0) {
        mLinkCount = 0;
        do_unlink();
    }

    return true;
}

// clrlwis are wrong oops.
#ifdef NONMATCHING
void DynamicModuleControlBase::dump() {
    // nb: chn_dbg does mod = getFirstClass() here
    DynamicModuleControlBase* mod = /* mFirst */ lbl_80451138;
    u32 totalSize = 0;

    JUTReportConsole_f("\nDynamicModuleControlBase::dump()\n");
    JUTReportConsole_f("Do  Lnk Size      Name\n");

    while (mod != NULL) {
        u16 doLinkCount = mod->mDoLinkCount;//mod->getDoLinkCount();
        u16 linkCount   = mod->mLinkCount;//mod->getLinkCount();
        if (  (doLinkCount != 0) || (linkCount != 0)  ) { // if is linked
            u32 modSize = mod->getModuleSize();
            const char* modName = mod->getModuleName();
            if (modSize < -1) { // bug :)
                modName = modName ? modName : "(Null)";

                const char* modTypeStr = mod->getModuleTypeString();
                JUTReportConsole_f("%3d%3d%5.1f %05x %-4s %-24s ", doLinkCount, linkCount, modSize/1024.0f, modSize, modTypeStr, modName);

                totalSize += modSize;
            } else {
                modName = modName ? modName : "(Null)";

                const char* modTypeStr = mod->getModuleTypeString();
                JUTReportConsole_f("%3d%3d ???? ????? %-4s %-24s ", doLinkCount, linkCount, modTypeStr, modName);
            }

            mod->dump2();
            JUTReportConsole_f("\n");
        }

        mod = mod->getNextClass();
    }

    JUTReportConsole_f("TotalSize %6.2f %06x\n\n", ((float)totalSize)/1024.0f, totalSize);
}
#else
static const char* lbl_8039A4E5 = "\nDynamicModuleControlBase::dump()\n";
static const char* lbl_8039A508 = "Do  Lnk Size      Name\n";
static const char* lbl_8039A520 = "(Null)";
static const char* lbl_8039A527 = "%3d%3d%5.1f %05x %-4s %-24s ";
static const char* lbl_8039A544 = "%3d%3d ???? ????? %-4s %-24s ";
static const char* lbl_8039A562 = "\n";
static const char* lbl_8039A564 = "TotalSize %6.2f %06x\n\n";
static const char* lbl_8039A57B = "Base";

asm void DynamicModuleControlBase::dump() {
    nofralloc
    #include "DynamicLink/asm/func_80262470.s"
}
#endif

DynamicModuleControl::DynamicModuleControl(const char* pModuleName)
    : mResource(NULL), mBss(NULL), field_0x18(0), mModuleName(pModuleName), mResourceType(0),
      field_0x21(0), mChecksum(0), mSize(0), mAsyncLoadCallback(NULL) {
}

// mountCallback__20DynamicModuleControlFPv
// DynamicModuleControl::mountCallback(void*)
JKRArchive* DynamicModuleControl::mountCallback(void* p1) {
    JKRExpHeap* heap = mDoExt_getArchiveHeap();

    /* sFileCache */ lbl_80451148 =
        JKRFileCache::mount("/rel/Final/Release", heap, NULL);
    /* sArchive */ lbl_80451144 =
        JKRArchive::mount("RELS.arc", JKRArchive::MOUNT_COMP, heap,
                          JKRArchive::MOUNT_DIRECTION_HEAD);
    if (lbl_80451144 == NULL) {
        OSReport_Warning("\x83}\x83""E\x83\x93\x83g\x8e\xb8\x94s\x82\xc5\x82\xb7"
    "\x82\xaa\x92P\x82\xc9\x83""A\x81[\x83J\x83""C\x83u"
    "\x82\xf0\x8d\xec\x82\xc1\x82\xc4\x82\xc8\x82\xa2\x82\xbe\x82\xaf"
    "\x82\xc8\x82\xe7\x92x\x82\xa2\x82\xbe\x82\xaf\x82\xc5\x82\xb7"
    " %s\n", "RELS.arc");
    }

    return /* sArchive */ lbl_80451144;
}

// initialize__20DynamicModuleControlFv
// DynamicModuleControl::initialize(void)
bool DynamicModuleControl::initialize() {
    /* sFileCache */ lbl_80451148 = NULL;
    /* sArchive */ lbl_80451140 = 0;
    /* sAllocBytes */ lbl_80451144 = NULL;
    mountCallback(NULL);

    return true;
}

// callback__20DynamicModuleControlFPv
// DynamicModuleControl::callback(void*)
void* DynamicModuleControl::callback(void* self) {
    ((DynamicModuleControl*)self)->do_load();
}

/**
 * Calculates the sum of a #u16 buffer of length \p len
 */
u32 calcSum2(const u16* data, u32 len) {
    u32 accumulator = 0;

    while (len != 0) {
        accumulator += *data;
        len -= 2;
        data++;
    }

    return accumulator;
}

extern "C" {
void calcSum2__FPCUsUl(void);
void callback__20DynamicModuleControlFPv(void);
}


// do_load__20DynamicModuleControlFv
// DynamicModuleControl::do_load(void)
#ifdef NONMATCHING
// this function is really funny b/c it looks like missed inlining, but it *isn't*.
// really close though; some regalloc is screwy and the end of the function needs work
int DynamicModuleControl::do_load() {
    if (mResource != NULL)
        return 1;

    JKRExpHeap* heap = mDoExt_getArchiveHeap();
    for (int i = 0; i < 3; i++) {
        while (true) {
            if (mResource != NULL) {
                JKRFree(mResource);
                mResource = NULL;
            }

            char filename[0x40];
            snprintf(filename, sizeof(filename), "%s.rel", mModuleName);

            if ((mResource == NULL) && (/* sArchive */ lbl_80451144 != NULL)) {
                void* glbRes = JKRArchive::getGlbResource('MMEM', filename, /* sArchive */ lbl_80451144);
                mResource = (OSModuleHeader*) glbRes;
                if (mResource != NULL) {
                    mResourceType = 1;
                }

                if (mResource == NULL) {
                    glbRes = JKRArchive::getGlbResource('AMEM', filename, /* sArchive */ lbl_80451144);
                    mResource = (OSModuleHeader*) glbRes;
                    if (mResource != NULL) {
                        mResourceType = 2;
                    }
                }

                if (mResource == NULL) {
                    glbRes = JKRArchive::getGlbResource('DMEM', filename, /* sArchive */ lbl_80451144);
                    mResource = (OSModuleHeader*) glbRes;
                    if (mResource != NULL) {
                        mResourceType = 3;
                    }
                }
            }

            if (mResource != NULL) {
                mSize = /* sArchive */ lbl_80451144->getExpandedResSize(mResource);
                JKRFileLoader::detachResource(mResource, NULL);
            } else {
                snprintf(filename, sizeof(filename), "/rel/Final/Release/%s.rel", mModuleName);

                mResource = JKRDvdRipper::loadToMainRAM(filename, NULL, EXPAND_SWITCH_UNKNOWN1, 0, heap, JKRDvdRipper::ALLOC_DIRECTION_FORWARD, 0, NULL, NULL);
                if (mResource != NULL) {
                    mSize = 0;
                    mResourceType = 7;
                }

                if (/* sFileCache */ lbl_80451148 != NULL) {
                    mResource = lbl_80451148->getResource('rels', filename);
                    if (mResource != NULL) {
                        mSize = 0;
                        mResourceType = 11;
                        JKRFileLoader::detachResource(mResource, NULL);
                    }
                }
            }

            if (mResource == NULL) {
                OSReport_Error("DynamicModuleControl::do_load() \x83\x8a\x83\\\x81[\x83X\x93\xc7\x82\xdd\x8d\x9e\x82\xdd\x8e\xb8\x94s [%s]\n", this->mModuleName);
                return 0;
            }

            if (mSize > 0) {
                int uVar4 = calcSum2(static_cast<const u16*>(mResource), mSize);

                if (this->field_0x21 == 0) break;

                mChecksum = (u16) uVar4;
                this->field_0x21++;
            } else {
                if (this->field_0x21 != -1)
                    this->field_0x21++;

                return 1;
            }
        }

        // if ((mChecksum & 0xffff) == mChecksum) {
        //     if (this->field_0x21 = -1)
        //         return 1;

        //     this->field_0x21++;
        //     returnm
        // }

        OSReport_Error("DynamicModuleControl::do_load() \x83`\x83""F\x83""b\x83N\x83T\x83\x80\x83G\x83\x89\x81[ %04x %04x[%s]\n", mChecksum, this->mModuleName);
        this->field_0x21 = 0;
    }

    return 0;
}
#else
static const char* lbl_8039A5E1 = "%s.rel";
static const char* lbl_8039A5E8 = "/rel/Final/Release/%s.rel";
static const char* lbl_8039A602 =                                                          // TODO: shift-jis strings in Metrowerks
    "DynamicModuleCon"
    "trol::do_load() "
    "\x83\x8a\x83\\\x81[\x83X\x93\xc7\x82\xdd\x8d\x9e\x82\xdd"
    "\x8e\xb8\x94s [%s]\n";
static const char* lbl_8039A63D =                                                          // TODO: shift-jis strings in Metrowerks
    "DynamicModuleCon"
    "trol::do_load() "
    "\x83`\x83""F\x83""b\x83N\x83T\x83\x80\x83G\x83\x89"
    "\x81[ %04x %04x[%s]"
    "\n";

asm int DynamicModuleControl::do_load() {
    nofralloc
    #include "DynamicLink/asm/func_802627E8.s"
}
#endif

// do_load_async__20DynamicModuleControlFv
// DynamicModuleControl::do_load_async(void)
int DynamicModuleControl::do_load_async() {
    mDoDvdThd_command_c* cmd;

    if (mAsyncLoadCallback == NULL) {
        if (mResource != NULL)
            return 1;

        cmd = mDoDvdThd_callback_c::create(DynamicModuleControl::callback, this);
        mAsyncLoadCallback = cmd;
        if (mAsyncLoadCallback == NULL) {
            OSReport_Error("DynamicModuleControl::do_load_async() \x94\xf1\x93\xaf\x8a\xfa\x93\xc7\x82\xdd\x8d\x9e\x82\xdd\x83R\x81[\x83\x8b\x83o\x83""b\x83N\x93o\x98^\x8e\xb8\x94s [%s]\n", mModuleName);
        }
    }

    cmd = this->mAsyncLoadCallback;
    if (cmd != NULL && (s32)cmd->sync() != 0) {
        cmd->destroy();
        this->mAsyncLoadCallback = NULL;
        return 1;
    }

    return 0;
}

int DynamicModuleControl::do_unload() {
    if (mResource != NULL) {
        JKRFree(mResource);
        mResource = NULL;
    }

    return 1;
}

extern "C" {
// dump2__20DynamicModuleControlFv
// DynamicModuleControl::dump2(void)
asm void func_80262C0C(void) {
    nofralloc
#include "DynamicLink/asm/func_80262C0C.s"
}

// do_link__20DynamicModuleControlFv
// DynamicModuleControl::do_link(void)
asm void func_80262C5C(void) {
    nofralloc
#include "DynamicLink/asm/func_80262C5C.s"
}

// do_unlink__20DynamicModuleControlFv
// DynamicModuleControl::do_unlink(void)
asm void func_80262F28(void) {
    nofralloc
#include "DynamicLink/asm/func_80262F28.s"
}
};

// getModuleSize__20DynamicModuleControlCFv
// DynamicModuleControl::getModuleSize(void) const
s32 DynamicModuleControl::getModuleSize() const {
    if (mResource != NULL) {
        s32 size = JKRHeap::getSize(mResource, NULL);
        if (mBss != NULL) {
            //! @bug doesn't actually modify size; i think it's supposed to add to the resource size
            //! here (but it gets added anyway based on the header size lmao)
            /* size += */ JKRHeap::getSize(mBss, NULL);
        }

        return size + ((OSModuleHeader*)mResource)->bssSize;
    }

    return 0;
}

// getModuleTypeString__20DynamicModuleControlCFv
// DynamicModuleControl::getModuleTypeString(void) const
const char* DynamicModuleControl::getModuleTypeString() const {
    return lbl_803C34B0[this->mResourceType & 3];
}

extern "C" {
void ModuleProlog() {
    return;
}

void ModuleEpilog(void) {
    return;
}

asm void ModuleUnresolved(void) {
    nofralloc
#include "DynamicLink/asm/func_80263090.s"
}

typedef void (*ModuleCtor)();
void ModuleConstructorsX(ModuleCtor* ctors) {
    JUT_ASSERT(ctors != NULL);

    while (*ctors != NULL) {
        (*ctors)();
        ctors++;
    }
}

typedef void (*ModuleDtor)();
void ModuleDestructorsX(ModuleDtor* dtors) {
    JUT_ASSERT(dtors != NULL);

    while (*dtors != NULL) {
        (*dtors)();
        dtors++;
    }
}
};

int DynamicModuleControlBase::do_link() {
    return true;
}

int DynamicModuleControlBase::do_load() {
    return true;
}

int DynamicModuleControlBase::do_unload() {
    return true;
}

int DynamicModuleControlBase::do_unlink() {
    return true;
}

int DynamicModuleControlBase::do_load_async() {
    return true;
}

void DynamicModuleControlBase::dump2() {
    return;
}

// getModuleTypeString__24DynamicModuleControlBaseCFv
// DynamicModuleControlBase::getModuleTypeString(void) const
const char* DynamicModuleControlBase::getModuleTypeString() const {
    return "Base";
}

s32 DynamicModuleControlBase::getModuleSize() const {
    return 0;
}

const char* DynamicModuleControl::getModuleName() const {
    return mModuleName;
}

// @todo `__dt__20DynamicModuleControlFv` is getting generated here but should be in c_dylib.o
// it gets pruned by the linker in any case b/c there's no ref to it

// DynamicLink.o

// static const char* lbl_8039A67F =                                                          // TODO: shift-jis strings in Metrowerks
//     "DynamicModuleCon"
//     "trol::do_load_as"
//     "ync() \x94\xf1\x93\xaf\x8a\xfa\x93\xc7\x82\xdd"
//     "\x8d\x9e\x82\xdd\x83R\x81[\x83\x8b\x83o\x83""b\x83N"
//     "\x93o\x98^\x8e\xb8\x94s [%s]\n";
static const char* lbl_8039A6CE = "%08x-%08x %08x %08x";
static const char* lbl_8039A6E2 =                                                          // TODO: shift-jis strings in Metrowerks
    "BSS\x83\x81\x83\x82\x83\x8a\x8am\x95\xdb\x8e\xb8\x94"
    "s\n";
static const char* lbl_8039A6F5 = "\x83\x8a\x83\x93\x83N\x8e\xb8\x94s\n";                  // TODO: shift-jis strings in Metrowerks
static const char* lbl_8039A701 =                                                          // TODO: shift-jis strings in Metrowerks
    "\x83\x82\x83W\x83\x85\x81[\x83\x8b\x83\x8a\x83T\x83""C"
    "\x83Y(\x8fk\x8f\xac)\x8e\xb8\x94s\n";
static const char* lbl_8039A71F =                                                          // TODO: shift-jis strings in Metrowerks
    "BSS\x83\x81\x83\x82\x83\x8a\x8am\x95\xdb\x8e\xb8\x94"
    "s [%x]\n";
static const char* lbl_8039A737 =                                                          // TODO: shift-jis strings in Metrowerks
    "\x83""A\x83\x93\x83\x8a\x83\x93\x83N\x8e\xb8\x94s m"
    "Module=%08x mBss"
    "=%08x\n";
static const char* lbl_8039A75E = "????";
static const char* lbl_8039A763 = "MEM";
static const char* lbl_8039A767 = "ARAM";
static const char* lbl_8039A76C = "DVD";
static const char* lbl_8039A770 =                                                          // TODO: shift-jis strings in Metrowerks
    "\nError: \x83\x8a\x83\x93\x83N\x82\xb3"
    "\x82\xea\x82\xc4\x82\xa2\x82\xc8\x82\xa2\x8a\xd6\x90\x94\x82\xaa"
    "\x8c\xc4\x82\xd1\x8fo\x82\xb3\x82\xea\x82\xdc\x82\xb5\x82\xbd"
    ".\n";
static const char* lbl_8039A7A3 = "Address:      Back Chain    LR Save\n";
static const char* lbl_8039A7C8 = "0x%08x:   0x%08x    0x%08x\n";
static const char* lbl_8039A7E4 = "\x00\x00\x00";                                          // padding
#define bwMCDR2_ADDRESS 4
#define bsMCDR2_ADDRESS 17
#define bmMCDR2_ADDRESS BIT_MASK(MCDR2_ADDRESS)
#define BIT_MASK(__bf) (((1U << (bw ## __bf)) - 1) << (bs ## __bf))
#define SET_BITS(__dst, __bf, __val) \
    ((__dst)=((__dst) & ~(BIT_MASK(__bf))) | \
    (((__val) << (bs ## __bf)) & (BIT_MASK(__bf))))

SET_BITS(MCDR2, MCDR2_ADDRESS, RegisterNumber);
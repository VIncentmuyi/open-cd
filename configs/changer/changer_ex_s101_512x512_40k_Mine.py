_base_ = './changer_ex_s50_512x512_40k_Mine.py'

model = dict(backbone=dict(depth=101, stem_channels=128))

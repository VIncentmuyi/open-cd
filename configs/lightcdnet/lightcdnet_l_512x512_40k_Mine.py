_base_ = ['./lightcdnet_s_512x512_40k_Mine.py']

model = dict(
    backbone=dict(net_type="large"),
    neck=dict(in_channels=[24, 176, 352, 704]))
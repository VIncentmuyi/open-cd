CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_s_256x256_40k_DSIFN.py --work-dir ./Lightcdnet_DSIFN_workdir

tmux new -s opencd
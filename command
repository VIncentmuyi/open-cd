CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_s_256x256_40k_DSIFN.py --work-dir ./Lightcdnet_DSIFN_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/lightcdnet/lightcdnet_s_256x256_40k_DSIFN.py  ./Lightcdnet_DSIFN_workdir/best_mIoU_iter_40000.pth --show-dir tmp_infer
tmux new -s opencd
tmux attach -t opencd

CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_l_512x512_40k_Mine.py --work-dir ./Lightcdnet_Mine_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/lightcdnet/lightcdnet_l_512x512_40k_Mine.py   ./Lightcdnet_DSIFN_workdir/best_mIoU_iter_40000.pth --show-dir tmp_infer
tmux new -s opencd
tmux attach -t opencd

CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_s_512x512_40k_Mine.py --work-dir ./Lightcdnet_Mine_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/lightcdnet/lightcdnet_s_512x512_40k_Mine.py  ./Lightcdnet_Mine_workdir/best_mIoU_iter_20000.pth --show-dir tmp_infer_Mine
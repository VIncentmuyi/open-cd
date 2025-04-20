CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_l_512x512_40k_Mine.py --work-dir ./Lightcdnet_Mine_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/lightcdnet/lightcdnet_l_512x512_40k_Mine.py   ./Lightcdnet_DSIFN_workdir/best_mIoU_iter_40000.pth --show-dir tmp_infer
tmux new -s opencd

tmux kill-session -t opencd

CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/lightcdnet/lightcdnet_s_512x512_40k_Mine.py --work-dir ./Lightcdnet_Mine_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/lightcdnet/lightcdnet_s_512x512_40k_Mine.py  ./Lightcdnet_Mine_workdir/best_mIoU_iter_20000.pth --show-dir tmp_infer_Mine



CUDA_VISIBLE_DEVICES=1 python tools/train.py configs/changer/changer_ex_s101_512x512_40k_Mine.py --work-dir ./changer_r18_Mine_workdir
CUDA_VISIBLE_DEVICES=1  python tools/test.py configs/changer/changer_ex_s101_512x512_40k_Mine.py  ./changer_r18_Mine_workdir/best_mIoU_iter_30000.pth --show-dir tmp_infer_Mine

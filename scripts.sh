Dreambooth
unzip Dreambooth-Stable-Diffusion-main.zip

python stable_txt2img.py --ddim_eta 0.0 --n_samples 8 --skip_grid --n_iter 1 --scale 10.0 --ddim_steps 50  --ckpt /hy-tmp/sd-v1-4.ckpt --prompt "a photo of a backpack"

python main.py --base configs/stable-diffusion/v1-finetune_unfrozen.yaml -t --actual_resume /hy-tmp/sd-v1-4.ckpt -n dog --gpus 0, --data_root /hy-tmp/dataset/my/1 --reg_data_root /hy-tmp/dataset/reg --class_word dog


python stable_txt2img.py --ddim_eta 0.0 --n_samples 8 --n_iter 1 --skip_grid --scale 10.0 --ddim_steps 100 --ckpt /hy-tmp/last.ckpt --prompt "a sks dog"



#Windows
python main.py --base configs/stable-diffusion/v1-finetune_unfrozen.yaml -t --actual_resume F:/Ckpt/sd-v1-4.ckpt -n dog --gpus 0, --data_root C:/Users/A/Desktop/dog-all/1 --reg_data_root C:/Users/A/Desktop/dog-all/1 --class_word dog

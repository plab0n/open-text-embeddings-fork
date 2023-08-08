mkdir -p $MODEL
git lfs install --skip-smudge
git clone https://huggingface.co/$MODEL $MODEL
cd $MODEL
git lfs pull --include "*.model"
git lfs install --force
rm -rf .git
pwd
ls -l
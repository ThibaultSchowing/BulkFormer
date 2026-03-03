# 1. Create Base
mamba create -n bulkformer python=3.10 pip bzip2 expat libffi openssl readline sqlite tk xz zlib -y
source activate bulkformer

# 2. Install PyTorch (CUDA 11.8)
pip install torch==2.5.1+cu118 torchvision==0.20.1+cu118 torchaudio==2.5.1+cu118 --extra-index-url https://download.pytorch.org/whl/cu118

# 3. Install PyG (PyTorch Geometric) helper libs
pip install torch-scatter torch-sparse torch-cluster torch-spline-conv -f https://data.pyg.org/whl/torch-2.5.1+cu118.html
pip install torch-geometric

# 4. Install Science & Data Stack (Pinned for stability)
pip install "numpy<2.0" pandas matplotlib seaborn scikit-learn scipy statsmodels numba anndata scanpy umap-learn h5py loompy rdkit

# 5. Install Transformers & AI Utilities
pip install transformers datasets huggingface-hub einops axial-positional-embedding local-attention performer-pytorch tqdm

# 6. Install Jupyter Lab & Kernel
pip install jupyterlab ipykernel ipywidgets
python -m ipykernel install --user --name bulkformer --display-name "Python (bulkformer)"

# 7. Final Misc cleanup from your list
pip install accumulation-tree aiohttp natsort session-info stdlib-list

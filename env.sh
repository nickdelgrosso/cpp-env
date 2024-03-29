curl -Ls https://micro.mamba.pm/api/micromamba/linux-64/latest | tar -xvj bin/micromamba
bin/micromamba shell init

micromamba env create -f environment.yml


# Enable remote access to jupyter lab
jupyter server --generate-config
echo "c.ServerApp.allow_remote_access = True" >> ~/.jupyter/jupyter_server_config.py
echo "c = get_config()" >> ~/.jupyter/jupyter_server_config.py
echo "c.LabApp.collaborative = True" >> ~/.jupyter/jupyter_server_config.py
echo "c.ServerApp.allow_origin = '*'" >> ~/.jupyter/jupyter_server_config.py
echo "c.ServerApp.token = ''" >> ~/.jupyter/jupyter_server_config.py


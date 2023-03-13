NOTEBOOK_NAME=$1
# ex: polars-tuto

WORK_DIR="/home/onyxia/work"
CLONE_DIR="${WORK_DIR}/repo-git"

COURSE_DIR="${CLONE_DIR}"
# COURSE_DIR="${CLONE_DIR}/notebooks"

# Clone course repository
REPO_URL="https://github.com/romaintailhurat/miscbooks.git"
git clone --depth 1 $REPO_URL $CLONE_DIR

# Put relevant notebook in formation dir
cp "${COURSE_DIR}/${NOTEBOOK_NAME}.ipynb" "${WORK_DIR}"

# Remove useless repositories
rm -rf $CLONE_DIR ${WORK_DIR}/lost+found

# Open the relevant notebook when starting Jupyter Lab
jupyter server --generate-config
echo "c.LabApp.default_url = '/lab/tree/${NOTEBOOK_NAME}.ipynb'" >> /home/onyxia/.jupyter/jupyter_server_config.py

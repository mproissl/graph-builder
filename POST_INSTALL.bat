REM Create virtual ENV for Python 3.6
call conda create -n py36 python=3.6
pause

REM Activate target virtual environment
call conda activate py36

REM Update pip
call python -m pip install --upgrade pip

REM Jupyter installation
call conda install notebook jupyterlab
call conda install ipywidgets
call jupyter nbextension enable --py widgetsnbextension --sys-prefix
call jupyter labextension install @jupyter-widgets/jupyterlab-manager
call conda clean -tipsy
call npm cache clean --force
pause

REM Main Python package installation
call pip install pylint pandas pyodbc numpy scipy matplotlib scikit-learn nltk tensorflow keras XlsxWriter seaborn bokeh chartify shap lime
call conda install spyder
call conda clean -tipsy
call npm cache clean --force

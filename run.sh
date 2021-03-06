exit 1  # departed, use plug.vim instead of pathogen.vim

git clone --recursive https://github.com/tpope/vim-fugitive.git bundle/fugitive
git clone --recursive https://github.com/tpope/vim-git.git bundle/git
git clone --recursive https://github.com/ervandew/supertab.git bundle/supertab
# git clone --recursive https://github.com/fholgado/minibufexpl.vim.git bundle/minibufexpl
# git clone --recursive https://github.com/mileszs/ack.vim.git bundle/ack
# git clone --recursive https://github.com/wincent/Command-T.git bundle/command-t
# git clone --recursive https://github.com/sjl/gundo.vim.git bundle/gundo

git clone --recursive https://github.com/vim-scripts/TaskList.vim.git bundle/tasklist
git clone --recursive https://github.com/vim-scripts/The-NERD-tree.git bundle/nerdtree
git clone --recursive https://github.com/luochen1990/rainbow.git bundle/rainbow
git clone --recursive https://github.com/tpope/vim-repeat.git bundle/vim-repeat
git clone --recursive https://github.com/tpope/vim-surround.git bundle/surround

git clone --recursive https://github.com/plasticboy/vim-markdown.git bundle/vim-markdown

######  snipmate  ########
git clone --recursive https://github.com/msanders/snipmate.vim.git bundle/snipmate

# the below 3 commands are together to replace the above 1.
# git clone https://github.com/tomtom/tlib_vim.git bundle/tlib_vim # added for snipmate
# git clone https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils # added for snipmate
# git clone https://github.com/garbas/vim-snipmate.git bundle/snipmate

###### for python ########
git clone --recursive https://github.com/fs111/pydoc.vim.git bundle/pydoc
git clone --recursive https://github.com/alfredodeza/pytest.vim.git bundle/py.test
git clone --recursive https://github.com/vim-scripts/pep8.git bundle/pep8
git clone --recursive https://github.com/mitechie/pyflakes-pathogen.git bundle/pyflakes-pathogen
# git clone --recursive https://github.com/klen/rope-vim.git bundle/ropevim
# git clone --recursive https://github.com/python-mode/python-mode.git bundle/python-mode

###### for golang ########

##########################

This is the first time I write some emacs lisp Code. So this may seem silly.

This short el file add a function to permanently pop up and close a eshell window.

![alt](https://github.com/shushuang/honey-eshell/blob/master/example.gif)

Add this to your .emacs file to add a key binding.

    (global-set-key (kbd "C-c m") 'ss-eshell-toogle)


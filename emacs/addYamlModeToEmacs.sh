#1. Download the yaml-mode.el in the load-path directory:
#1.1 Find emacs "load-path":
#### In Emacs, type:  C-h v
#### then type: load-path
#### Result in my current machine: "/user/share/emacs/site-lisp"
#1.2 Open the load-path directory:
cd /usr/share/emacs/site-lisp
#1.3. Download the yaml-mode.el
## touch yaml-mode.el: I don't need to create the file
curl -o yaml-mode.el https://raw.githubusercontent.com/bbatsov/emacs-dev-kit/master/vendor/yaml-mode.el

#2. Modify .emacs file:
#2.1 Find its location: it is in emacs' "user-init-file" variable
#### In Emacs, type: C-h v
#### Type: user-init-file
#### Result in my current machine: user-init-file: "/home/hamid/.emacs"
#2.2 Modify .emacs file:
nano /home/hamid/.emacs
#### add the 2 rows as described in yaml-mode.el file

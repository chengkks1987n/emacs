my emacs settings

require:
	eamcs 24 or later
	install wget.(needed by jdee)

some plugins:
 - java develep	
   jdee-2.4.1 : this is download from web.
   javadoc-help.el - this is download from web, lookup APIs for java.
         

How to use:
 - copy this folder to ~/.emacs.d/
 - create file ~/.emacs, add the follow lines:
     (add-to-list 'load-path "~/.emacs.d/emacs.d")
     (require 'init)

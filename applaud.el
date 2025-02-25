;;; applaud.el --- Display a clapping animation in the Emacs minibuffer

(defconst applaud-frames
  '("👏   " " 👏  " "  👏 " " 👏  " "👏   ")
  "List of frames for the clapping animation.")

(defun applaud-animate (frames delay count)
  "Animate FRAMES in the minibuffer with DELAY between frames, repeating COUNT times."
  (let ((counter 0))
    (while (< counter count)
      (dolist (frame frames)
        (message frame)
        (sit-for delay))
      (setq counter (1+ counter))))
  (message nil))  ; Clear minibuffer after animation

;;;###autoload
(defun applaud ()
  "Display a clapping animation in the Emacs minibuffer."
  (interactive)
  (applaud-animate applaud-frames 0.2 3))

(provide 'applaud)
;;; applaud.el ends here

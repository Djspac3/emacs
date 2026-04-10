;;; custom-startup.el --- custom personal startup    -*- lexical-binding: t; -*-

;; Copyright (C) 2026  

;; Author:  <build@DESKTOP-AF90K79>
;; Keywords: lisp, extensions

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(defun custom-startup-menu ()
  (with-current-buffer (get-buffer-create "*startup*")))

(setq inital-buffer-choice #'custom-startup-menu)

(provide 'custom-startup)
;;; custom-startup.el ends here

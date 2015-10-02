(setq *new-list* (remove-if (complement #'my-test-p) *old-list*))

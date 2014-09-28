(define-test test-list-or-atom
    "Lists in lisp are forms beginning and ending with rounded parentheses.
     Atoms are symbols, numbers, or other forms usually separated by
     white-space or parentheses.  The function 'listp' will return true if
     the input is a list.  The function 'atom' will return true if the
     input is an atom."
  (true-or-false? ___ (listp '(1 2 3)))
  (true-or-false? ___ (atom '(1 2 3)))

  (true-or-false? ___ (listp '("heres" "some" "strings")))
  (true-or-false? ___ (atom '("heres" "some" "strings")))

  (true-or-false? ___ (listp "a string"))
  (true-or-false? ___ (atom "a string"))

  (true-or-false? ___ (listp 2))
  (true-or-false? ___ (atom 2))

  (true-or-false? ___ (listp '(("first" "list") ("second" "list"))))
  (true-or-false? ___ (atom '(("first" "list") ("second" "list")))))


(define-test test-empty-list-is-both-list-and-atom
    "the empty list, nil, is unique in that it is both a list and an atom"
  (true-or-false? ___ (listp nil))
  (true-or-false? ___ (atom nil)))


(define-test test-keywords
    "symbols like :hello or :like-this are treated differently in lisp.
     Called keywords, they are symbols that evaluate to themselves."
  (true-or-false? ___ (equal :this-is-a-keyword :this-is-a-keyword))
  (true-or-false? ___ (equal :this-is-a-keyword ':this-is-a-keyword)))

(def {fun} 
   (lambda {args body} 
     {def (head args) (lambda (tail args) body)}))

(fun {unpack f xs} 
   {eval (join (list f) xs)})

(fun {pack f & xs} 
   {f xs})

(def {uncurry} pack)
(def {curry} unpack)

(fun {nth n list} {
   if (== n 0) 
   {head list} 
   {nth (- n 1) (tail list)}})

;; have problems working
(fun {member a list} {
   if (== 0 (len list)) 
   {0} 
   {if (== {a} (head list))
     {1}
     {member a (tail list)}
   }
})

(fun {last list} { if (== {} (tail list)) {list} {last (tail list)} })

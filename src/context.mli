type entry =
  | Entry_free of Syntax.ty        (* a free name *)
  | Entry_value of Syntax.value    (* a variable bound by a [let] *)

(** The type of contexts *)
type t = (Common.name * entry) list

val empty : t

val names : t -> Common.name list

val lookup : Common.name -> t -> entry option

val is_free : Common.name -> t -> bool

val is_value : Common.name -> t -> bool

val is_bound : Common.name -> t -> bool

val add_free : Common.name -> Syntax.ty -> t -> Common.name * t 

val add_value : Common.name -> Syntax.value -> t -> t
(** Names of free variables *)
type name

(** Bound variables *)
type bound = int

val anonymous : name

val to_name : string -> name

val to_string : name -> string

(** Comparison of free variables *)
val eqname : name -> name -> bool
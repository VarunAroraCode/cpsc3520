(* ======================== *)
(* ======  Problem 1 ====== *)
(* ======================== *)

let increment x =
    x + 1
;;


assert(increment 3 = 4) ;; 




(* ======================== *)
(* ======  Problem 2 ====== *)
(* ======================== *)

let rec sum l = 
    match l with
    [] -> 0
    | hd::tl -> hd + sum tl       
;;


assert(sum [1; 2; 3] = 6) ;;


(* ======================== *)
(* ======  Problem 3 ====== *)
(* ======================== *)

let rec last l = match l with
    [] -> failwith "empty list"
    | [hd] ->  hd
    | hd::tl ->  last tl
;;


assert(last [1; 2; 3; 4] = 4);;
assert(last ["a"; "b"; "c"; "d"] = "d");;



(* ======================== *)
(* ======  Problem 4 ====== *)
(* ======================== *)

let rec map f l =
    match l with
    [] -> []
    | h::t -> (f h)::(map f t)
;;


assert(map increment [1; 2; 3] = [2; 3; 4]);;
assert(map sum [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] = [6; 15; 24]);;

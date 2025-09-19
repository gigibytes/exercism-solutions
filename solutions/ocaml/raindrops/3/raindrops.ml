open! Base

let raindrop num =
  let divisors = [7; 5; 3] in
  let sounds = 
    List.map ~f:(fun d -> 
      if Int.equal (num % d) 0 then
        match d with
        | 3 -> "Pling"
        | 5 -> "Plang"
        | 7 -> "Plong"
        | _ -> ""
      else "") divisors
  in
  let result =
    (* fixed my bad fold: I was wiping the whole built-up string by returning "" when I
  encountered an empty string/sound *)
    List.fold sounds ~f:(fun acc sound ->
      match sound with
      | s when String.is_empty s -> acc
      | s -> s ^ acc
      ) ~init:""
  in
  if (String.equal result "") then Printf.sprintf "%d" num
  else result
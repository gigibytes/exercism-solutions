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
    List.fold sounds ~f:(fun acc sound ->
      match sound with
      | s when String.is_empty s -> ""
      | s -> s ^ acc
      ) ~init:""
  in
  let () = Printf.sprintf "sound for %d is %s" num result |> print_endline
in
  if (String.equal result "") then Printf.sprintf "%d" num
  else result
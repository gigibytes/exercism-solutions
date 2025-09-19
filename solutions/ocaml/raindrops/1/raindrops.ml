open! Base

let raindrop num =
  let divisors = [3; 5; 7] in
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
  let result = String.concat sounds
  in
  if (String.equal result "") then Printf.sprintf "%d" num
  else result
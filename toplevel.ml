  let () =
    let usage_msg = "usage: dune exec --no-build toplevel [file.chomp]" in
    let channel = ref stdin in
    Arg.parse [] (fun file -> channel := open_in file) usage_msg;
    let lexbuf = Lexing.from_channel !channel in
    let ast = Parser.program Scanner.token lexbuf in
    let sast = Semant.check ast in
    (* print_string (Sast.string_of_sprogram sast) *)
    print_string (Ast.string_of_program ast)
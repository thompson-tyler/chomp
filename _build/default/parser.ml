
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WORD
    | WHILE
    | VOID
    | TIMES
    | STRINGLIT of (
# 16 "parser.mly"
       (string)
# 19 "parser.ml"
  )
    | STRING
    | SEMI
    | RSHIFT
    | RPAREN
    | RETURN
    | RBRACK
    | RBRACE
    | PRINTLN
    | PRINT
    | PLUS
    | OR
    | NULL
    | NOT
    | NIBBLE
    | NEQ
    | MINUS
    | LT
    | LSHIFT
    | LPAREN
    | LITERAL of (
# 12 "parser.mly"
       (int)
# 43 "parser.ml"
  )
    | LIST
    | LEQ
    | LBRACK
    | LBRACE
    | INT
    | IF
    | ID of (
# 14 "parser.mly"
       (string)
# 54 "parser.ml"
  )
    | GT
    | GEQ
    | FUNC
    | FOR
    | EQ
    | EOF
    | ELSE
    | DIVIDE
    | CONS
    | CONCAT
    | COMMA
    | CHARLIT of (
# 11 "parser.mly"
       (char)
# 70 "parser.ml"
  )
    | CHAR
    | CDR
    | CAR
    | BYTE
    | BOOL
    | BLIT of (
# 13 "parser.mly"
       (bool)
# 80 "parser.ml"
  )
    | BIT
    | BINXOR
    | BINOR
    | BINNOT
    | BINLIT of (
# 15 "parser.mly"
       (string)
# 89 "parser.ml"
  )
    | BINAND
    | ASSIGN
    | AND
  
end

include MenhirBasics

# 3 "parser.mly"
  open Ast
# 101 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState002 : ('s _menhir_cell0_decls, _menhir_box_program) _menhir_state
    (** State 002.
        Stack shape : decls.
        Start symbol: program. *)

  | MenhirState007 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 007.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState008 : (('s, _menhir_box_program) _menhir_cell1_LIST, _menhir_box_program) _menhir_state
    (** State 008.
        Stack shape : LIST.
        Start symbol: program. *)

  | MenhirState016 : ((('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_cell1_typ_opt, _menhir_box_program) _menhir_state
    (** State 016.
        Stack shape : LPAREN typ_opt.
        Start symbol: program. *)

  | MenhirState020 : ((('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_cell1_typ_list, _menhir_box_program) _menhir_state
    (** State 020.
        Stack shape : LPAREN typ_list.
        Start symbol: program. *)

  | MenhirState028 : (('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_state
    (** State 028.
        Stack shape : decls typ ID.
        Start symbol: program. *)

  | MenhirState033 : ((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_state
    (** State 033.
        Stack shape : decls typ ID formals_opt.
        Start symbol: program. *)

  | MenhirState034 : (((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt, _menhir_box_program) _menhir_cell1_stmt_list, _menhir_box_program) _menhir_state
    (** State 034.
        Stack shape : decls typ ID formals_opt stmt_list.
        Start symbol: program. *)

  | MenhirState036 : (('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_state
    (** State 036.
        Stack shape : WHILE.
        Start symbol: program. *)

  | MenhirState039 : (('s, _menhir_box_program) _menhir_cell1_PRINTLN, _menhir_box_program) _menhir_state
    (** State 039.
        Stack shape : PRINTLN.
        Start symbol: program. *)

  | MenhirState041 : (('s, _menhir_box_program) _menhir_cell1_PRINT, _menhir_box_program) _menhir_state
    (** State 041.
        Stack shape : PRINT.
        Start symbol: program. *)

  | MenhirState043 : (('s, _menhir_box_program) _menhir_cell1_NOT, _menhir_box_program) _menhir_state
    (** State 043.
        Stack shape : NOT.
        Start symbol: program. *)

  | MenhirState044 : (('s, _menhir_box_program) _menhir_cell1_MINUS, _menhir_box_program) _menhir_state
    (** State 044.
        Stack shape : MINUS.
        Start symbol: program. *)

  | MenhirState045 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 045.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState047 : (('s, _menhir_box_program) _menhir_cell1_LBRACK, _menhir_box_program) _menhir_state
    (** State 047.
        Stack shape : LBRACK.
        Start symbol: program. *)

  | MenhirState049 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 049.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState051 : (('s, _menhir_box_program) _menhir_cell1_CDR, _menhir_box_program) _menhir_state
    (** State 051.
        Stack shape : CDR.
        Start symbol: program. *)

  | MenhirState052 : (('s, _menhir_box_program) _menhir_cell1_CAR, _menhir_box_program) _menhir_state
    (** State 052.
        Stack shape : CAR.
        Start symbol: program. *)

  | MenhirState054 : (('s, _menhir_box_program) _menhir_cell1_BINNOT, _menhir_box_program) _menhir_state
    (** State 054.
        Stack shape : BINNOT.
        Start symbol: program. *)

  | MenhirState057 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 057.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState062 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 062.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState064 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 064.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState066 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 066.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState068 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 068.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState070 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 070.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState072 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 072.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState074 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 074.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState076 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 076.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState078 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 078.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState080 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 080.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState082 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 082.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState084 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 084.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState086 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 086.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState088 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 088.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState090 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 090.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState092 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 092.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState094 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 094.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState096 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 096.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState101 : ((('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_cell1_args_list, _menhir_box_program) _menhir_state
    (** State 101.
        Stack shape : ID args_list.
        Start symbol: program. *)

  | MenhirState103 : (('s, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_state
    (** State 103.
        Stack shape : ID.
        Start symbol: program. *)

  | MenhirState110 : (('s, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 110.
        Stack shape : expr.
        Start symbol: program. *)

  | MenhirState121 : ((('s, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 121.
        Stack shape : WHILE expr.
        Start symbol: program. *)

  | MenhirState122 : (('s, _menhir_box_program) _menhir_cell1_RETURN, _menhir_box_program) _menhir_state
    (** State 122.
        Stack shape : RETURN.
        Start symbol: program. *)

  | MenhirState126 : (('s, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_state
    (** State 126.
        Stack shape : LPAREN.
        Start symbol: program. *)

  | MenhirState127 : (('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_state
    (** State 127.
        Stack shape : LBRACE.
        Start symbol: program. *)

  | MenhirState128 : ((('s, _menhir_box_program) _menhir_cell1_LBRACE, _menhir_box_program) _menhir_cell1_stmt_list, _menhir_box_program) _menhir_state
    (** State 128.
        Stack shape : LBRACE stmt_list.
        Start symbol: program. *)

  | MenhirState131 : (('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_state
    (** State 131.
        Stack shape : IF.
        Start symbol: program. *)

  | MenhirState133 : ((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 133.
        Stack shape : IF expr.
        Start symbol: program. *)

  | MenhirState135 : (('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_state
    (** State 135.
        Stack shape : FOR.
        Start symbol: program. *)

  | MenhirState137 : ((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_state
    (** State 137.
        Stack shape : FOR expr_opt.
        Start symbol: program. *)

  | MenhirState139 : (((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_state
    (** State 139.
        Stack shape : FOR expr_opt expr.
        Start symbol: program. *)

  | MenhirState141 : ((((('s, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_state
    (** State 141.
        Stack shape : FOR expr_opt expr expr_opt.
        Start symbol: program. *)

  | MenhirState145 : (('s, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_state
    (** State 145.
        Stack shape : typ ID.
        Start symbol: program. *)

  | MenhirState152 : (((('s, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt, _menhir_box_program) _menhir_state
    (** State 152.
        Stack shape : IF expr stmt.
        Start symbol: program. *)

  | MenhirState158 : ((('s _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formal_list, _menhir_box_program) _menhir_state
    (** State 158.
        Stack shape : decls typ ID formal_list.
        Start symbol: program. *)


and ('s, 'r) _menhir_cell1_args_list = 
  | MenhirCell1_args_list of 's * ('s, 'r) _menhir_state * (Ast.expr list)

and 's _menhir_cell0_decls = 
  | MenhirCell0_decls of 's * (Ast.vdecl list * Ast.fdecl list)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_expr_opt = 
  | MenhirCell1_expr_opt of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_formal_list = 
  | MenhirCell1_formal_list of 's * ('s, 'r) _menhir_state * (Ast.bind list)

and ('s, 'r) _menhir_cell1_formals_opt = 
  | MenhirCell1_formals_opt of 's * ('s, 'r) _menhir_state * (Ast.bind list)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt)

and ('s, 'r) _menhir_cell1_stmt_list = 
  | MenhirCell1_stmt_list of 's * ('s, 'r) _menhir_state * (Ast.stmt list)

and ('s, 'r) _menhir_cell1_typ = 
  | MenhirCell1_typ of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_typ_list = 
  | MenhirCell1_typ_list of 's * ('s, 'r) _menhir_state * (Ast.typ list)

and ('s, 'r) _menhir_cell1_typ_opt = 
  | MenhirCell1_typ_opt of 's * ('s, 'r) _menhir_state * (Ast.typ list)

and ('s, 'r) _menhir_cell1_BINNOT = 
  | MenhirCell1_BINNOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CAR = 
  | MenhirCell1_CAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CDR = 
  | MenhirCell1_CDR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ID = 
  | MenhirCell1_ID of 's * ('s, 'r) _menhir_state * (
# 14 "parser.mly"
       (string)
# 429 "parser.ml"
)

and 's _menhir_cell0_ID = 
  | MenhirCell0_ID of 's * (
# 14 "parser.mly"
       (string)
# 436 "parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACK = 
  | MenhirCell1_LBRACK of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LIST = 
  | MenhirCell1_LIST of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PRINT = 
  | MenhirCell1_PRINT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PRINTLN = 
  | MenhirCell1_PRINTLN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state

and _menhir_box_program = 
  | MenhirBox_program of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun _1 ->
    (
# 160 "parser.mly"
                            ( [_1] )
# 480 "parser.ml"
     : (Ast.expr list))

let _menhir_action_02 =
  fun _1 _3 ->
    (
# 161 "parser.mly"
                         ( _3 :: _1 )
# 488 "parser.ml"
     : (Ast.expr list))

let _menhir_action_03 =
  fun () ->
    (
# 156 "parser.mly"
                ( [] )
# 496 "parser.ml"
     : (Ast.expr list))

let _menhir_action_04 =
  fun _1 ->
    (
# 157 "parser.mly"
               ( List.rev _1 )
# 504 "parser.ml"
     : (Ast.expr list))

let _menhir_action_05 =
  fun () ->
    (
# 42 "parser.mly"
                 ( ([], [])               )
# 512 "parser.ml"
     : (Ast.vdecl list * Ast.fdecl list))

let _menhir_action_06 =
  fun _1 _2 ->
    (
# 43 "parser.mly"
               ( ((_2 :: fst _1), snd _1) )
# 520 "parser.ml"
     : (Ast.vdecl list * Ast.fdecl list))

let _menhir_action_07 =
  fun _1 _2 ->
    (
# 44 "parser.mly"
               ( (fst _1, (_2 :: snd _1)) )
# 528 "parser.ml"
     : (Ast.vdecl list * Ast.fdecl list))

let _menhir_action_08 =
  fun _1 ->
    (
# 114 "parser.mly"
                     ( Literal(_1)            )
# 536 "parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun _1 ->
    (
# 115 "parser.mly"
                     ( BoolLit(_1)            )
# 544 "parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun _1 ->
    (
# 116 "parser.mly"
                     ( Id(_1)                 )
# 552 "parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun _1 ->
    (
# 117 "parser.mly"
                     ( CharLit(_1)            )
# 560 "parser.ml"
     : (Ast.expr))

let _menhir_action_12 =
  fun l1 ->
    (
# 118 "parser.mly"
                                   ( List (l1) )
# 568 "parser.ml"
     : (Ast.expr))

let _menhir_action_13 =
  fun _1 ->
    (
# 119 "parser.mly"
                     ( BinLit (_1)            )
# 576 "parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun _1 ->
    (
# 120 "parser.mly"
                     ( StringLit (_1)         )
# 584 "parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun () ->
    (
# 121 "parser.mly"
                     ( Null                   )
# 592 "parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun _2 ->
    (
# 122 "parser.mly"
                     ( Unop(Binnot, _2)       )
# 600 "parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun _1 _3 ->
    (
# 123 "parser.mly"
                     ( Binop(_1, Binand, _3)  )
# 608 "parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun _1 _3 ->
    (
# 124 "parser.mly"
                     ( Binop(_1, Lshift, _3)  )
# 616 "parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun _1 _3 ->
    (
# 125 "parser.mly"
                     ( Binop(_1, Rshift, _3)  )
# 624 "parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun _1 _3 ->
    (
# 126 "parser.mly"
                     ( Binop(_1, Concat, _3)  )
# 632 "parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun _1 _3 ->
    (
# 127 "parser.mly"
                     ( Binop(_1, Binxor, _3)  )
# 640 "parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun _1 _3 ->
    (
# 128 "parser.mly"
                     ( Binop(_1, Binor,  _3)  )
# 648 "parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun _1 _3 ->
    (
# 129 "parser.mly"
                     ( Binop(_1, Add,   _3)   )
# 656 "parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun _1 _3 ->
    (
# 130 "parser.mly"
                     ( Binop(_1, Sub,   _3)   )
# 664 "parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun _1 _3 ->
    (
# 131 "parser.mly"
                     ( Binop(_1, Mult,  _3)   )
# 672 "parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun _1 _3 ->
    (
# 132 "parser.mly"
                     ( Binop(_1, Div,   _3)   )
# 680 "parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun _1 _3 ->
    (
# 133 "parser.mly"
                     ( Binop(_1, Equal, _3)   )
# 688 "parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun _1 _3 ->
    (
# 134 "parser.mly"
                     ( Binop(_1, Neq,   _3)   )
# 696 "parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun _1 _3 ->
    (
# 135 "parser.mly"
                     ( Binop(_1, Less,  _3)   )
# 704 "parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun _1 _3 ->
    (
# 136 "parser.mly"
                     ( Binop(_1, Leq,   _3)   )
# 712 "parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun _1 _3 ->
    (
# 137 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 720 "parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun _1 _3 ->
    (
# 138 "parser.mly"
                     ( Binop(_1, Geq,   _3)   )
# 728 "parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun _1 _3 ->
    (
# 139 "parser.mly"
                     ( Binop(_1, And,   _3)   )
# 736 "parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun _1 _3 ->
    (
# 140 "parser.mly"
                     ( Binop(_1, Or,    _3)   )
# 744 "parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun _1 _3 ->
    (
# 141 "parser.mly"
                     ( Binop(_1, Cons,    _3) )
# 752 "parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun _2 ->
    (
# 142 "parser.mly"
                     ( Unop(Cdr, _2)          )
# 760 "parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun _2 ->
    (
# 143 "parser.mly"
                     ( Unop(Car, _2)          )
# 768 "parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun _2 ->
    (
# 144 "parser.mly"
                         ( Unop(Neg, _2)      )
# 776 "parser.ml"
     : (Ast.expr))

let _menhir_action_39 =
  fun _2 ->
    (
# 145 "parser.mly"
                     ( Unop(Not, _2)          )
# 784 "parser.ml"
     : (Ast.expr))

let _menhir_action_40 =
  fun _1 _3 ->
    (
# 146 "parser.mly"
                     ( Assign(_1, _3)         )
# 792 "parser.ml"
     : (Ast.expr))

let _menhir_action_41 =
  fun _1 _3 ->
    (
# 147 "parser.mly"
                              ( Call(_1, _3)  )
# 800 "parser.ml"
     : (Ast.expr))

let _menhir_action_42 =
  fun _2 ->
    (
# 148 "parser.mly"
                       ( _2                   )
# 808 "parser.ml"
     : (Ast.expr))

let _menhir_action_43 =
  fun _3 ->
    (
# 149 "parser.mly"
                               ( Print(_3)    )
# 816 "parser.ml"
     : (Ast.expr))

let _menhir_action_44 =
  fun _3 ->
    (
# 150 "parser.mly"
                                ( PrintLn(_3) )
# 824 "parser.ml"
     : (Ast.expr))

let _menhir_action_45 =
  fun () ->
    (
# 110 "parser.mly"
                  ( Noexpr )
# 832 "parser.ml"
     : (Ast.expr))

let _menhir_action_46 =
  fun _1 ->
    (
# 111 "parser.mly"
                  ( _1 )
# 840 "parser.ml"
     : (Ast.expr))

let _menhir_action_47 =
  fun _1 _2 _4 _7 ->
    (
# 48 "parser.mly"
    ( { typ = _1;
        fname = _2;
        formals = List.rev _4;
        body = List.rev _7 } )
# 851 "parser.ml"
     : (Ast.fdecl))

let _menhir_action_48 =
  fun _1 _2 ->
    (
# 58 "parser.mly"
                             ( [(_1,_2)]     )
# 859 "parser.ml"
     : (Ast.bind list))

let _menhir_action_49 =
  fun _1 _3 _4 ->
    (
# 59 "parser.mly"
                             ( (_3,_4) :: _1 )
# 867 "parser.ml"
     : (Ast.bind list))

let _menhir_action_50 =
  fun () ->
    (
# 54 "parser.mly"
                  ( [] )
# 875 "parser.ml"
     : (Ast.bind list))

let _menhir_action_51 =
  fun _1 ->
    (
# 55 "parser.mly"
                  ( _1 )
# 883 "parser.ml"
     : (Ast.bind list))

let _menhir_action_52 =
  fun xs ->
    let l1 = 
# 229 "<standard.mly>"
    ( xs )
# 891 "parser.ml"
     in
    (
# 153 "parser.mly"
                                     ( l1 )
# 896 "parser.ml"
     : (Ast.expr list))

let _menhir_action_53 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 904 "parser.ml"
     : (Ast.expr list))

let _menhir_action_54 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 912 "parser.ml"
     : (Ast.expr list))

let _menhir_action_55 =
  fun _1 ->
    (
# 39 "parser.mly"
            ( (List.rev (fst _1), List.rev (snd _1)) )
# 920 "parser.ml"
     : (Ast.program))

let _menhir_action_56 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 928 "parser.ml"
     : (Ast.expr list))

let _menhir_action_57 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 936 "parser.ml"
     : (Ast.expr list))

let _menhir_action_58 =
  fun _1 ->
    (
# 87 "parser.mly"
                                            ( Expr _1               )
# 944 "parser.ml"
     : (Ast.stmt))

let _menhir_action_59 =
  fun _2 ->
    (
# 88 "parser.mly"
                                            ( Return _2             )
# 952 "parser.ml"
     : (Ast.stmt))

let _menhir_action_60 =
  fun _2 ->
    (
# 89 "parser.mly"
                                            ( Block(List.rev _2)    )
# 960 "parser.ml"
     : (Ast.stmt))

let _menhir_action_61 =
  fun _3 _5 ->
    (
# 90 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 968 "parser.ml"
     : (Ast.stmt))

let _menhir_action_62 =
  fun _3 _5 _7 ->
    (
# 91 "parser.mly"
                                            ( If(_3, _5, _7)        )
# 976 "parser.ml"
     : (Ast.stmt))

let _menhir_action_63 =
  fun _3 _5 _7 _9 ->
    (
# 93 "parser.mly"
                                            ( For(_3, _5, _7, _9)   )
# 984 "parser.ml"
     : (Ast.stmt))

let _menhir_action_64 =
  fun _3 _5 ->
    (
# 94 "parser.mly"
                                            ( While(_3, _5)         )
# 992 "parser.ml"
     : (Ast.stmt))

let _menhir_action_65 =
  fun _1 ->
    (
# 95 "parser.mly"
                                            ( Var _1 )
# 1000 "parser.ml"
     : (Ast.stmt))

let _menhir_action_66 =
  fun () ->
    (
# 83 "parser.mly"
                   ( [] )
# 1008 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_67 =
  fun _1 _2 ->
    (
# 84 "parser.mly"
                   ( _2 :: _1 )
# 1016 "parser.ml"
     : (Ast.stmt list))

let _menhir_action_68 =
  fun () ->
    (
# 70 "parser.mly"
           ( Int   )
# 1024 "parser.ml"
     : (Ast.typ))

let _menhir_action_69 =
  fun () ->
    (
# 71 "parser.mly"
           ( Bool  )
# 1032 "parser.ml"
     : (Ast.typ))

let _menhir_action_70 =
  fun () ->
    (
# 72 "parser.mly"
           ( Void  )
# 1040 "parser.ml"
     : (Ast.typ))

let _menhir_action_71 =
  fun () ->
    (
# 73 "parser.mly"
           ( Char  )
# 1048 "parser.ml"
     : (Ast.typ))

let _menhir_action_72 =
  fun _2 ->
    (
# 74 "parser.mly"
             ( List _2 )
# 1056 "parser.ml"
     : (Ast.typ))

let _menhir_action_73 =
  fun () ->
    (
# 75 "parser.mly"
           ( Bit   )
# 1064 "parser.ml"
     : (Ast.typ))

let _menhir_action_74 =
  fun () ->
    (
# 76 "parser.mly"
           ( Nibble )
# 1072 "parser.ml"
     : (Ast.typ))

let _menhir_action_75 =
  fun () ->
    (
# 77 "parser.mly"
           ( Byte  )
# 1080 "parser.ml"
     : (Ast.typ))

let _menhir_action_76 =
  fun () ->
    (
# 78 "parser.mly"
           ( Word  )
# 1088 "parser.ml"
     : (Ast.typ))

let _menhir_action_77 =
  fun _2 _4 ->
    (
# 79 "parser.mly"
                                   ( Func (List.rev _2, _4) )
# 1096 "parser.ml"
     : (Ast.typ))

let _menhir_action_78 =
  fun () ->
    (
# 80 "parser.mly"
           ( String )
# 1104 "parser.ml"
     : (Ast.typ))

let _menhir_action_79 =
  fun _1 ->
    (
# 66 "parser.mly"
        ( [_1] )
# 1112 "parser.ml"
     : (Ast.typ list))

let _menhir_action_80 =
  fun _1 _3 ->
    (
# 67 "parser.mly"
                       ( _3 :: _1 )
# 1120 "parser.ml"
     : (Ast.typ list))

let _menhir_action_81 =
  fun () ->
    (
# 62 "parser.mly"
                  ( [] )
# 1128 "parser.ml"
     : (Ast.typ list))

let _menhir_action_82 =
  fun _1 ->
    (
# 63 "parser.mly"
               ( _1 )
# 1136 "parser.ml"
     : (Ast.typ list))

let _menhir_action_83 =
  fun _1 _2 ->
    (
# 98 "parser.mly"
                ({
                  typ = _1;
                  vname = _2;
                  value = Noexpr;
                })
# 1148 "parser.ml"
     : (Ast.vdecl))

let _menhir_action_84 =
  fun _1 _2 _4 ->
    (
# 103 "parser.mly"
                            ({
                  typ = _1;
                  vname = _2;
                  value = _4;
                })
# 1160 "parser.ml"
     : (Ast.vdecl))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ASSIGN ->
        "ASSIGN"
    | BINAND ->
        "BINAND"
    | BINLIT _ ->
        "BINLIT"
    | BINNOT ->
        "BINNOT"
    | BINOR ->
        "BINOR"
    | BINXOR ->
        "BINXOR"
    | BIT ->
        "BIT"
    | BLIT _ ->
        "BLIT"
    | BOOL ->
        "BOOL"
    | BYTE ->
        "BYTE"
    | CAR ->
        "CAR"
    | CDR ->
        "CDR"
    | CHAR ->
        "CHAR"
    | CHARLIT _ ->
        "CHARLIT"
    | COMMA ->
        "COMMA"
    | CONCAT ->
        "CONCAT"
    | CONS ->
        "CONS"
    | DIVIDE ->
        "DIVIDE"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | FOR ->
        "FOR"
    | FUNC ->
        "FUNC"
    | GEQ ->
        "GEQ"
    | GT ->
        "GT"
    | ID _ ->
        "ID"
    | IF ->
        "IF"
    | INT ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACK ->
        "LBRACK"
    | LEQ ->
        "LEQ"
    | LIST ->
        "LIST"
    | LITERAL _ ->
        "LITERAL"
    | LPAREN ->
        "LPAREN"
    | LSHIFT ->
        "LSHIFT"
    | LT ->
        "LT"
    | MINUS ->
        "MINUS"
    | NEQ ->
        "NEQ"
    | NIBBLE ->
        "NIBBLE"
    | NOT ->
        "NOT"
    | NULL ->
        "NULL"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | PRINT ->
        "PRINT"
    | PRINTLN ->
        "PRINTLN"
    | RBRACE ->
        "RBRACE"
    | RBRACK ->
        "RBRACK"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | RSHIFT ->
        "RSHIFT"
    | SEMI ->
        "SEMI"
    | STRING ->
        "STRING"
    | STRINGLIT _ ->
        "STRINGLIT"
    | TIMES ->
        "TIMES"
    | VOID ->
        "VOID"
    | WHILE ->
        "WHILE"
    | WORD ->
        "WORD"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_goto_decls : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | WORD ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | VOID ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | STRING ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | NIBBLE ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | LPAREN ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | LIST ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | INT ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | EOF ->
          let _1 = _v in
          let _v = _menhir_action_55 _1 in
          MenhirBox_program _v
      | CHAR ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | BYTE ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | BOOL ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | BIT ->
          let _menhir_stack = MenhirCell0_decls (_menhir_stack, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState002
      | _ ->
          _eRR ()
  
  and _menhir_run_003 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_76 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState158 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState034 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState002 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState007 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState016 ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState008 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_159 : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formal_list -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_formal_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let (_3, _4) = (_v, _v_0) in
          let _v = _menhir_action_49 _1 _3 _4 in
          _menhir_goto_formal_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_formal_list : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_formal_list (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState158 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_51 _1 in
          _menhir_goto_formals_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_70 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_005 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_78 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_006 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_74 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState007 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WORD ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VOID ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NIBBLE ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LIST ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CHAR ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BYTE ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FUNC ->
          _menhir_reduce_81 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LIST (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState008 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WORD ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VOID ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NIBBLE ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LIST ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CHAR ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BYTE ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_68 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_71 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_75 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_012 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_69 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_73 () in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_reduce_81 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _v = _menhir_action_81 () in
      _menhir_goto_typ_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_typ_opt : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_typ_opt (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState016 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WORD ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VOID ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRING ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NIBBLE ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LIST ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CHAR ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BYTE ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_formals_opt : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_formals_opt (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v_0 = _menhir_action_66 () in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState033 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. (((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID, _menhir_box_program) _menhir_cell1_formals_opt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WORD ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | WHILE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | VOID ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | STRINGLIT _v_0 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState034
      | STRING ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | RETURN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_formals_opt (_menhir_stack, _, _4) = _menhir_stack in
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _, _1) = _menhir_stack in
          let _7 = _v in
          let _v = _menhir_action_47 _1 _2 _4 _7 in
          let MenhirCell0_decls (_menhir_stack, _1) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_07 _1 _2 in
          _menhir_goto_decls _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | PRINTLN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | PRINT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NULL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | NIBBLE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LPAREN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState034
      | LIST ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LBRACK ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | INT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | IF ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | ID _v_2 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState034
      | FOR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | CHARLIT _v_3 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState034
      | CHAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | CDR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | CAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BYTE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BOOL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BLIT _v_4 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState034
      | BIT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BINNOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | BINLIT _v_5 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState034
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState036 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_14 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState034 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState145 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState139 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState036 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState044 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState066 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState054 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_149 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _1 = _v in
          let _v = _menhir_action_58 _1 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState062 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PRINTLN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState039 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PRINT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState041 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_15 () in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_043 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState043 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState044 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_08 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACK (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | RBRACK ->
          let _v = _menhir_action_53 () in
          _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState049 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | RPAREN ->
              let _v = _menhir_action_03 () in
              _menhir_goto_args_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_ID (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState103 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | CONS | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let _1 = _v in
          let _v = _menhir_action_10 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_11 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_051 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CDR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState051 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_09 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BINNOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState054 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_13 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_args_opt : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_ID -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_41 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACK -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_52 xs in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACK (_menhir_stack, _menhir_s) = _menhir_stack in
      let l1 = _v in
      let _v = _menhir_action_12 l1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_stmt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState121 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState034 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState128 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState133 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_155 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s) = _menhir_stack in
      let _5 = _v in
      let _v = _menhir_action_64 _3 _5 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_154 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_stmt_list -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_67 _1 _2 in
      _menhir_goto_stmt_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_stmt_list : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_128 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LBRACE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | WORD ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | WHILE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | VOID ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | STRINGLIT _v_0 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState128
      | STRING ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | RETURN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | RBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_60 _2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PRINTLN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | PRINT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | NULL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | NOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | NIBBLE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | MINUS ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | LPAREN ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | LITERAL _v_1 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState128
      | LIST ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | LBRACK ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | LBRACE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | INT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | IF ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | ID _v_2 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState128
      | FOR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | CHARLIT _v_3 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState128
      | CHAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | CDR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | CAR ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BYTE ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BOOL ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BLIT _v_4 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState128
      | BIT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BINNOT ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | BINLIT _v_5 ->
          let _menhir_stack = MenhirCell1_stmt_list (_menhir_stack, _menhir_s, _v) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState128
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | SEMI ->
          let _v = _menhir_action_45 () in
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_123 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_59 _2 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_126 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState126 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WORD ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | VOID ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NIBBLE ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LIST ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHAR ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BYTE ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BOOL ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BIT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FUNC ->
          _menhir_reduce_81 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_127 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_66 () in
      _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState127 _tok
  
  and _menhir_run_130 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_s = MenhirState131 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135
          | SEMI ->
              let _v = _menhir_action_45 () in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState135 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_136 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_FOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr_opt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _menhir_s = MenhirState137 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_153 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_stmt (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
      let _7 = _v in
      let _v = _menhir_action_62 _3 _5 _7 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_151 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_IF, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState152 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | WHILE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | BINLIT _ | BINNOT | BIT | BLIT _ | BOOL | BYTE | CAR | CDR | CHAR | CHARLIT _ | FOR | ID _ | IF | INT | LBRACE | LBRACK | LIST | LITERAL _ | LPAREN | MINUS | NIBBLE | NOT | NULL | PRINT | PRINTLN | RBRACE | RETURN | STRING | STRINGLIT _ | VOID | WHILE | WORD ->
          let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_61 _3 _5 in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_148 : type  ttv_stack. ((((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr, _menhir_box_program) _menhir_cell1_expr_opt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr_opt (_menhir_stack, _, _7) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, _5) = _menhir_stack in
      let MenhirCell1_expr_opt (_menhir_stack, _, _3) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _9 = _v in
      let _v = _menhir_action_63 _3 _5 _7 _9 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_064 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState064 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState074 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState078 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState082 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState084 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState086 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState088 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState066 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState057 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState080 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState094 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState096 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState090 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState092 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
          let MenhirCell1_typ (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_84 _1 _2 _4 in
          _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_vdecl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState034 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState128 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState152 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState133 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState141 ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState002 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_142 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_65 _1 in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_024 : type  ttv_stack. ttv_stack _menhir_cell0_decls -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_decls (_menhir_stack, _1) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_06 _1 _2 in
      _menhir_goto_decls _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_138 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v_0 ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState139
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | LITERAL _v_1 ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState139
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | ID _v_2 ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState139
          | CHARLIT _v_3 ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState139
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | BLIT _v_4 ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState139
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
          | BINLIT _v_5 ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState139
          | RPAREN ->
              let _v_6 = _menhir_action_45 () in
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState139 _tok
          | _ ->
              _eRR ())
      | RSHIFT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack. ((((ttv_stack, _menhir_box_program) _menhir_cell1_FOR, _menhir_box_program) _menhir_cell1_expr_opt, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr_opt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _menhir_s = MenhirState141 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | WHILE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_132 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _menhir_s = MenhirState133 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | WHILE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN | SEMI ->
          let _1 = _v in
          let _v = _menhir_action_46 _1 in
          _menhir_goto_expr_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr_opt : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_120 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_WHILE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _menhir_s = MenhirState121 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | WHILE ->
              _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | RETURN ->
              _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_126 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | FOR ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_PRINTLN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_PRINTLN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_44 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_PRINT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_PRINT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_43 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_39 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_38 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_42 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState110 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACK ->
          let x = _v in
          let _v = _menhir_action_56 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState047 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_57 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_105 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LBRACK -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_54 x in
      _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_104 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_ID (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_40 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. (((ttv_stack, _menhir_box_program) _menhir_cell1_ID, _menhir_box_program) _menhir_cell1_args_list as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN ->
          let MenhirCell1_args_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_02 _1 _3 in
          _menhir_goto_args_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_args_list : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_args_list (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState101 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRINGLIT _v ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | PRINTLN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | PRINT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NULL ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LITERAL _v ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LBRACK ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ID _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CHARLIT _v ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | CDR ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CAR ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BLIT _v ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINNOT ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BINLIT _v ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_04 _1 in
          _menhir_goto_args_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR | BINXOR | COMMA | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_22 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR | BINXOR | COMMA | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_21 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_33 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_17 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_27 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_32 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_31 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_30 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_20 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_18 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | GEQ | GT | LEQ | LT | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_29 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_24 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | EQ | NEQ | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_28 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR | BINXOR | COMMA | OR | RBRACK | RPAREN | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_34 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_23 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_26 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_19 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_25 _1 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TIMES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DIVIDE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINXOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BINAND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | RPAREN ->
          let _1 = _v in
          let _v = _menhir_action_01 _1 in
          _menhir_goto_args_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_CDR -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_CDR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_36 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_059 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_CAR -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_CAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_37 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_058 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_35 _1 _3 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_BINNOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | CONS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | BINAND | BINOR | BINXOR | COMMA | CONCAT | DIVIDE | EQ | GEQ | GT | LEQ | LSHIFT | LT | MINUS | NEQ | OR | PLUS | RBRACK | RPAREN | RSHIFT | SEMI | TIMES ->
          let MenhirCell1_BINNOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_16 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
          | ASSIGN ->
              _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_ID (_menhir_stack, _2) = _menhir_stack in
      let MenhirCell1_typ (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _v = _menhir_action_83 _1 _2 in
      _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_145 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState145 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STRINGLIT _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | PRINTLN ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | PRINT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NULL ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAREN ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LITERAL _v ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LBRACK ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ID _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CHARLIT _v ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | CDR ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | CAR ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BLIT _v ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINNOT ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BINLIT _v ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ((ttv_stack _menhir_cell0_decls, _menhir_box_program) _menhir_cell1_typ _menhir_cell0_ID as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_1, _2) = (_v, _v_0) in
          let _v = _menhir_action_48 _1 _2 in
          _menhir_goto_formal_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. (ttv_stack _menhir_cell0_decls as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_typ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ID _v_0 ->
          let _menhir_stack = MenhirCell0_ID (_menhir_stack, _v_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
          | LPAREN ->
              let _menhir_s = MenhirState028 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | WORD ->
                  _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | VOID ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | STRING ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NIBBLE ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAREN ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LIST ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | CHAR ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BYTE ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BOOL ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BIT ->
                  _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | RPAREN ->
                  let _v = _menhir_action_50 () in
                  _menhir_goto_formals_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | ASSIGN ->
              _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _1 = _v in
      let _v = _menhir_action_79 _1 in
      _menhir_goto_typ_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typ_list : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_program) _menhir_state -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_typ_list (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState020 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WORD ->
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | VOID ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | STRING ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NIBBLE ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAREN ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LIST ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | CHAR ->
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BYTE ->
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BOOL ->
              _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIT ->
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | FUNC ->
          let _1 = _v in
          let _v = _menhir_action_82 _1 in
          _menhir_goto_typ_opt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_021 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_cell1_typ_list -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_typ_list (_menhir_stack, _menhir_s, _1) = _menhir_stack in
      let _3 = _v in
      let _v = _menhir_action_80 _1 _3 in
      _menhir_goto_typ_list _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_017 : type  ttv_stack. ((ttv_stack, _menhir_box_program) _menhir_cell1_LPAREN, _menhir_box_program) _menhir_cell1_typ_opt -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_typ_opt (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_77 _2 _4 in
          _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. (ttv_stack, _menhir_box_program) _menhir_cell1_LIST -> _ -> _ -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_LIST (_menhir_stack, _menhir_s) = _menhir_stack in
      let _2 = _v in
      let _v = _menhir_action_72 _2 in
      _menhir_goto_typ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_program =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_decls _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
end

let program =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_program v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

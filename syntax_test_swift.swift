// SYNTAX TEST "Swift.sublime-syntax"

// MARK: UITableViewDelegate
// <- comment.line
// <- punctuation.definition.comment
//^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line
// ^^^^^ punctuation.definition.comment
//       ^^^^^^^^^^^^^^^^^^^ meta.toc-list

/* Here's a comment */
// <- comment.block
// <- punctuation.definition.comment.begin
//^^^^^^^^^^^^^^^^^^^^ comment.block
//                  ^^ punctuation.definition.comment.end

"This is a string \n \"\'\\\t\r"
// <- punctuation.definition.string.begin
// <- string.quoted.double
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double
//                             ^ punctuation.definition.string.end
//                ^^ constant.character.escape.newline
//                   ^^^^^^^^^^ constant.character.escape


"Length: \( line.length )"
//       ^^ punctuation.section.embedded.begin
//         ^^^^^^^^^^^^^ -string.quoted.double
//                      ^ punctuation.section.embedded.end
//^^^^^^^                string.quoted.double
//                       ^ string.quoted.double

{[ (  )] }
// <- punctuation.section.braces.begin
 // <- punctuation.section.brackets.begin
// ^ punctuation.section.parens.begin
//    ^ punctuation.section.parens.end
//     ^ punctuation.section.brackets.end
//       ^ punctuation.section.braces.end
// ^^^^ meta.parens
//^^^^^^ meta.brackets
//^^^^^^^^ meta.braces

@IBDesignable @objc fileprivate private final class MyViewController { }
// <- keyword.other
//                                            ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//^^^^^^^^^^^ keyword.other
//            ^^^^^ keyword.other
//                  ^^^^^^^^^^^ storage.modifier
//                              ^^^^^^^ invalid.illegal
//                                      ^^^^^ storage.modifier
//                                            ^^^^^ storage.type.class

class Mvc : MyClass, MyProtocol { }
// <- storage.type.class
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class
//    ^^^ entity.name.class
//        ^ punctuation.separator
//          ^^^^^^^ entity.other.inherited-class
//                 ^ punctuation.separator
//                   ^^^^^^^^^^ entity.other.inherited-class
//                              ^ punctuation.definition.class.body.begin
//                                ^ punctuation.definition.class.body.end

class MyClass<Key: Hashable, Value>: Array<Array<String>> { }
//           ^^^^^^^^^^^^^^^^^^^^^^ meta.generic
//           ^ punctuation.definition.generic.begin
//            ^^^ variable.other.generic
//               ^ punctuation.separator
//                 ^^^^^^^^ variable.other.generic
//                         ^ punctuation.separator
//                           ^^^^^ variable.other.generic
//                                ^ punctuation.definition.generic.end
//                                                     ^^ punctuation.definition.generic.end

1.0 + -.46
// <- constant.numeric.float
//     ^^^ constant.numeric.float
//  ^ keyword.operator.arithmetic
//    ^ keyword.operator.arithmetic

100
// <- constant.numeric.integer

100 / 2.34*40
// <- constant.numeric.integer
//  ^ keyword.operator.arithmetic
//    ^^^^ constant.numeric.float
//        ^ keyword.operator.arithmetic
//         ^^ constant.numeric.integer

for x in array {

}

switch MyEnum {
  case .hello:
    doSomething();
  case .goodbye:
    doSomethingElse();
  default:
    print("hi")
}

MyClass.myVar?.myOtherVar.myFunction()

MyClass.myVar?.myOtherVar!.myProperty? = 42



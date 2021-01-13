use crate::span::Spanned;
use logos::{Lexer, Logos};
use std::borrow::ToOwned;

// missing digraph handling because i don't care :)
#[derive(Logos, Debug, Clone, PartialEq)]
pub enum Token<'a> {
    #[token(";")]
    Semicolon,
    #[token(":")]
    Colon,
    #[token("::")]
    DoubleColon,
    #[token(".")]
    Dot,
    #[token(",")]
    Comma,
    #[token("{")]
    LCurly,
    #[token("}")]
    RCurly,
    #[token("(")]
    LParen,
    #[token(")")]
    RParen,
    #[token("[")]
    LBracket,
    #[token("]")]
    RBracket,
    #[token("<")]
    LAngle,
    #[token(">")]
    RAngle,
    #[token("...")]
    Ellipsis,

    #[token("->")]
    #[token("+")]
    #[token("-")]
    #[token("*")]
    #[token("/")]
    #[token("=")]
    #[token("==")]
    #[token("!=")]
    #[token("+=")]
    #[token("-=")]
    #[token("*=")]
    #[token("/=")]
    #[token("~")]
    #[token("|")]
    #[token("&")]
    #[token("^")]
    #[token("|=")]
    #[token("&=")]
    #[token("^=")]
    #[token("?")]
    #[token("!")]
    Operator(&'a str),

    #[regex("and|and_eq|asm|auto|bitand|bitor|bool|break|case|catch|char|class|compl|const|const_cast|continue|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|false|float|for|friend|goto|if|inline|int|long|mutable|namespace|new|not|not_eq|operator|or|or_eq|private|protected|public|register|reinterpret_cast|return|short|signed|sizeof|static|static_cast|struct|switch|template|this|throw|true|try|typedef|typeid|typename|union|unsigned|using|virtual|void|volatile|wchar_t|while|xor|xor_eq")]
    Keyword(&'a str),

    #[regex("nofralloc")]
    MwccKeyword(&'a str),

    #[token("\"")]
    StartStrLit,

    #[token("/*")]
    StartBlockComment,
    BlockComment, // gen by Tokenizer

    #[regex(r"//[^\n]*")]
    LineComment,

    // TODO: exponent
    #[regex(r"[+-]?[0-9]+")]
    DecimalLiteral(&'a str),

    // TODO: float lit
    #[regex(r"true|false", |lex| lex.slice().parse())]
    Boolean(bool),

    #[regex(r"[a-zA-Z_][a-zA-Z0-9_]*")]
    Identifier(&'a str),

    #[regex(r"#[a-zA-Z_]+", |lex| &lex.slice()[1..])]
    Directive(&'a str),

    StringLiteral(String), // gen by tokenizer

    #[regex(r"'\w'", |lex| lex.slice().chars().nth(1))]
    CharLiteral(char),

    #[token("\n")]
    Newline,

    #[regex(r"[ \t\f]+", logos::skip)] // whitespace
    #[error]
    Error,
}

#[derive(Logos, Debug, PartialEq)]
enum TextToks {
    #[error]
    Error,
    #[regex(r#"[^\\"]+"#)]
    Text,
    #[regex(r#"\\."#, |lex| lex.slice().chars().nth(1))]
    EscapeChar(char),
    // TODO: other escape types
    #[token(r#"\""#)]
    EndStrLit,
}

#[derive(Logos, Debug, PartialEq)]
enum BlockCommentToks {
    #[error]
    Skip,
    #[token("*/")]
    End,
}

pub type SpannedTok<'a> = Spanned<Token<'a>>;

pub struct Tokenizer<'i> {
    lex: Lexer<'i, Token<'i>>,
    lineno: usize,
}

impl<'i> Tokenizer<'i> {
    pub fn new(input: &'i str) -> Self {
        let lex = Token::lexer(input);
        Tokenizer { lex, lineno: 1 }
    }
}

impl<'i> Iterator for Tokenizer<'i> {
    type Item = SpannedTok<'i>;

    fn next(&mut self) -> Option<Self::Item> {
        let tok = self.lex.next()?;
        let span = self.lex.span();

        match tok {
            Token::StartStrLit => {
                let mut lex = self.lex.to_owned().morph::<TextToks>(); // TODO?
                let mut result = String::new();
                loop {
                    use self::TextToks::*;
                    match lex.next() {
                        Some(Text) => result += lex.slice(),
                        Some(EscapeChar(e)) => match e {
                            'n' => result.push('\n'),
                            'r' => result.push('\r'),
                            't' => result.push('\t'),
                            '\\' => result.push('\\'),
                            '"' => result.push('"'),
                            '\'' => result.push('\''),
                            c => panic!("bad escape {}", c),
                        },
                        Some(EndStrLit) => break,
                        Some(Error) => break,
                        None => break, // unclosed
                                       // None => return Some((Err, ))
                    }
                }

                self.lex = lex.morph::<Token>();
                Some(SpannedTok::bounded(
                    span.start,
                    Token::StringLiteral(result),
                    self.lex.span().end,
                ))
            }
            Token::StartBlockComment => {
                let mut lex = self.lex.to_owned().morph::<BlockCommentToks>(); // TODO?
                loop {
                    use BlockCommentToks::*;
                    match lex.next() {
                        Some(Skip) => (),
                        Some(End) => break,
                        None => panic!("unclosed block comment"), // TODO
                    }
                }

                self.lex = lex.morph::<Token>();
                Some(SpannedTok::bounded(
                    span.start,
                    Token::BlockComment,
                    self.lex.span().end,
                ))
            }
            Token::Newline => {
                self.lineno += 1;
                Some(SpannedTok::new(tok, span))
            }
            _ => Some(SpannedTok::new(tok, span)),
        }
    }
}

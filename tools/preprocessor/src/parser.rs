use crate::lexer::{Token, SpannedTok, Tokenizer};
use crate::span::Spanned;
use std::iter::Peekable;

macro_rules! try_match {
    ($lexer:expr, $tok_match:pat => $out:expr) => {{
        match $lexer.next() {
            Some(Spanned { value: $tok_match, .. }) => Ok($out),
            Some(tok) => Err(ParseError::UnexpectedToken(tok.clone())),
            None => Err(ParseError::UnexpectedEOF),
        }
    }};
}

#[derive(Debug)]
pub struct Parser<'a, I: Iterator<Item=SpannedTok<'a>>> {
    lexer: Peekable<I>,
    // current: Option<SpannedTok>,
}

#[derive(Debug, Clone)]
pub enum ParseError<'a> {
    UnexpectedToken(SpannedTok<'a>),
    UnexpectedEOF,
}

impl<'a> ParseError<'a> {
    fn expect(tok: Option<SpannedTok<'a>>) -> Self {
        use ParseError::*;
        match tok {
            Some(t) => UnexpectedToken(t),
            None => UnexpectedEOF,
        }
    }
}

type PResult<'a, T> = Result<T, ParseError<'a>>;

#[derive(Debug)]
pub struct Call {
    ident: String,
}

impl<'a, I: Iterator<Item=SpannedTok<'a>>> Parser<'a, I> {
    pub fn new(lexer: I) -> Self {
        Self {
            lexer: lexer.peekable(),
        }
    }

    pub fn eat_if(&mut self, func: impl FnOnce(&I::Item) -> bool) -> Option<I::Item> {
        match self.lexer.peek() {
            Some(matched) if func(&matched) => self.lexer.next(),
            _ => None,
        }
    }

    pub fn eat_if_tok(&mut self, expected: &Token) -> Option<SpannedTok<'a>> {
        self.eat_if(|next| &next.value == expected)
    }

    pub fn eat_or_err(&mut self, expected: &Token) -> PResult<SpannedTok<'a>> {
        self.eat_if_tok(expected).ok_or_else(|| ParseError::expect(self.lexer.peek().cloned()))
    }

    pub fn parse_call(&mut self) -> PResult<Call> {
        let ident = try_match!(self.lexer, Token::Identifier(id) => id)?.to_owned();

        // self.eat_or_err(&Token::LParen)?;
        try_match!(self.lexer, Token::LParen => ())?;
        // self.parse_call();
        try_match!(self.lexer, Token::LParen => ())?;
        // self.eat_or_err(&Token::RParen)?;

        Ok(Call { ident })
    }
}
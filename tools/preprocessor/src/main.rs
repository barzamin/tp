use argh::{self, FromArgs};

mod span;
mod lexer;
mod parser;
use lexer::{Token, Tokenizer};
use std::collections::HashMap;

#[derive(FromArgs)]
/// Custom C++98 preprocessor for Twilight Princess decompilation
struct Args {
    /// source file to preprocess
    #[argh(positional)]
    file: String,
}

fn main() -> Result<(), Box<dyn std::error::Error>>{
    let args: Args = argh::from_env();
    let src = std::fs::read_to_string(args.file)?;

    // let src = include_str!("../../../include/d/d_save/d_save/d_save.h");

    let mut tokenizer = Tokenizer::new(&src);
    let mut parser = parser::Parser::new(tokenizer);
    println!("{:?}", parser.parse_call());
    // while let Some(tok) = tokenizer.next() {
    //     println!("{:?} - {}", &tok.value, &src[tok.span.range()]);
    // }

    Ok(())
}

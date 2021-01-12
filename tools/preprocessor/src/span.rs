use std::ops::Deref;

#[derive(Debug, Copy, Clone)]
pub struct Span {
    from: usize,
    to: usize,
}

impl Span {
    pub fn new(from: usize, to: usize) -> Self {
        Self { from, to }
    }

    pub fn range(&self) -> std::ops::Range<usize> {
        std::ops::Range {
            start: self.from,
            end: self.to,
        }
    }
}

impl From<std::ops::Range<usize>> for Span {
    fn from(range: std::ops::Range<usize>) -> Self {
        Self {
            from: range.start,
            to: range.end,
        }
    }
}

impl Into<std::ops::Range<usize>> for Span {
    fn into(self) -> std::ops::Range<usize> {
        self.range()
    }
}

// impl Index<
#[derive(Debug, Clone)]
pub struct Spanned<T> {
    span: Span,
    value: T,
}

impl<T> Spanned<T> {
    pub fn new(value: T, span: impl Into<Span>) -> Self {
        Self {
            value,
            span: span.into(),
        }
    }

    pub fn bounded(from: usize, value: T, to: usize) -> Self {
        Self {
            value,
            span: Span::new(from, to),
        }
    }

    pub fn value(&self) -> &T {
        &self.value
    }
    pub fn span(&self) -> &Span {
        &self.span
    }
}

impl<T> Deref for Spanned<T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        &self.value
    }
}

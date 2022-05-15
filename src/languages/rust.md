# rust

## Error handling

[thiserror](https://crates.io/crates/thiserror) for library errors.
[anyhow](https://crates.io/crates/anyhow) for application errors.

References

* [Rust error handling](https://nick.groenen.me/posts/rust-error-handling/)

## Performance

### `cargo flamegraph`

Installation: `cargo install cargo-flamegraph`.

Usage: `cargo flamegraph -- <binary arguments>`.

Result in `./flamegraph.svg`, visualise with a web browswer in order to have interactivity (hovering).

### `valgrind` + `massif`

Heap consumption usage.

Install `valgrind` and `massif-visualizer`.

Usage: `valgrind --tool=massif <binary> <binary arguments>`

Visualize result: `massif-visualizer massif.out.*`

## Bibliography

* [Rust API guidelines](https://rust-lang.github.io/api-guidelines/about.html)
* [Comparing Rust Supply Chain Safety Tools](https://blog.logrocket.com/comparing-rust-supply-chain-safety-tools/)

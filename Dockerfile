FROM rust
RUN apt-get update && apt-get install -y pkg-config libssl-dev perl make \
    && cargo install dioxus-cli@0.5.0-alpha.0 && rustup target add wasm32-unknown-unknown

FROM rust
RUN apt-get update 
RUN apt-get install -y protobuf-compiler
RUN apt-get install -y libssl-dev
RUN apt-get install nasm 
RUN cargo install dioxus-cli
RUN rustup target add wasm32-unknown-unknown

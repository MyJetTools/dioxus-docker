FROM rust
RUN apt-get update 
RUN apt-get install -y pkg-config libssl-dev perl make 
RUN apt-get install nasm && cargo install dioxus-cli@0.5.0-alpha.0 
RUN apt-get install protobuf-compiler
RUN rustup target add wasm32-unknown-unknown

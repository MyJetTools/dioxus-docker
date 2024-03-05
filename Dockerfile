FROM rust
RUN apt-get update 
RUN apt-get install -y protobuf-compiler
RUN apt-get install -y libssl-dev
RUN apt-get install nasm && cargo install dioxus-cli@0.5.0-alpha.0 
RUN rustup target add wasm32-unknown-unknown

FROM rust
RUN apt-get update 
RUN apt-get install -y protobuf-compiler
RUN apt-get install -y libssl-dev
RUN apt-get install nasm 
RUN cargo install dioxus-cli
RUN apt-get install libc6
RUN apt-get install libwayland-dev wayland-protocols pkg-config
RUN rustup target add wasm32-unknown-unknown

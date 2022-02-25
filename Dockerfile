FROM rust:1

WORKDIR /usr/src/app
ENV CARGO_HOME /usr/local/.cargo

COPY ./Cargo.* .
COPY ./src ./src

RUN cargo build

ENTRYPOINT [ "cargo" ]
CMD [ "run" ]

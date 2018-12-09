FROM swift:4.2

WORKDIR /build

COPY Sources ./Sources
COPY Package.swift .

RUN swift build

CMD swift run

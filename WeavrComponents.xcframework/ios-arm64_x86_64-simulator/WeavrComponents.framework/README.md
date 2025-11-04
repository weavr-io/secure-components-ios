#  Encryption

Please note, the CryptoSwift library is a snapshot of this [commit](https://github.com/krzyzanowskim/CryptoSwift/tree/6d7c104cac017eb19f1ee869bd942b4cbc2e420f).

Initially, CryptoSwift was bundled in a Pod called "CryptoXC", but we decided to remove the dependency when the bitcode it included blocked releases to App Store.

Rather than migrating to a smaller class doing the RSA and MD5 encryption we needed, we embedded it to avoid breaking changes.

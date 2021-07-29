//%attributes = {}
$source:=""

CONVERT FROM TEXT:C1011($source;"utf-8";$sourceData)


ASSERT:C1129(SHAKE128 ($sourceData;0;Crypto HEX)="")
ASSERT:C1129(SHAKE128 ($sourceData;16;Crypto HEX)="7f9c2ba4")
ASSERT:C1129(SHAKE128 ($sourceData;32;Crypto HEX)="7f9c2ba4e88f827d")
ASSERT:C1129(SHAKE128 ($sourceData;64;Crypto HEX)="7f9c2ba4e88f827d616045507605853e")
ASSERT:C1129(SHAKE128 ($sourceData;256;Crypto HEX)="7f9c2ba4e88f827d616045507605853ed73b8093f6efbc88eb1a6eacfa66ef263cb1eea988004b93103cfb0aeefd2a686e01fa4a58e8a3639ca8a1e3f9ae57e2")

ASSERT:C1129(SHA3_224 ($sourceData;Crypto HEX)="6b4e03423667dbb73b6e15454f0eb1abd4597f9a1b078e3f5b5a6bc7")
ASSERT:C1129(SHA3_256 ($sourceData;Crypto HEX)="a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a")
ASSERT:C1129(SHA3_384 ($sourceData;Crypto HEX)="0c63a75b845e4f7d01107d852e4c2485c51a50aaaa94fc61995e71bbee983a2ac3713831264adb47fb6bd1e058d5f004")
ASSERT:C1129(SHA3_512 ($sourceData;Crypto HEX)="a69f73cca23a9ac5c8b567dc185a756e97c982164fe25859e0d1dcc1475c80a615b2123af1f5f94c11e3e9402c3ac558f500199d95b6d3e301758586281dcd26")
ASSERT:C1129(SHAKE128 ($sourceData;128;Crypto HEX)="7f9c2ba4e88f827d616045507605853ed73b8093f6efbc88eb1a6eacfa66ef26")
ASSERT:C1129(SHAKE256 ($sourceData;256;Crypto HEX)="46b9dd2b0ba88d13233b3feb743eeb243fcd52ea62b81b82b50c27646ed5762fd75dc4ddd8c0f200cb05019d67b592f6fc821c49479ab48640292eacb3b7c4be")

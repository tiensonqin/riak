-module(chash_keyfun).

-export([chash_index_keyfun/1]).

chash_index_keyfun({Bucket, Key}) ->
    [IndexPartOfKey, _Id] = string:tokens(binary_to_list(Key), "$$"),
    chash:key_of({Bucket, list_to_binary(IndexPartOfKey)}).

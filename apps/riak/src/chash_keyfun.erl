-module(chash_keyfun).

-export([chash_index_keyfun/1]).

chash_index_keyfun({Bucket, Key}) ->
    IndexPartOfKey = case string:tokens(binary_to_list(Key), "$$") of
                         [Key0, _Id] ->
                             Key0;
                         [Key0] ->
                             Key0
                     end,

    chash:key_of({Bucket, list_to_binary(IndexPartOfKey)}).

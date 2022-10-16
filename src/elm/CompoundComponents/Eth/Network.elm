module CompoundComponents.Eth.Network exposing (Network(..), getEtherscanDomain, networkFromId, networkFromName, networkId, networkName)

-- From https://ethereum.stackexchange.com/a/17101


type Network
    = Olympic
    | MainNet
    | Morden
    | Ropsten
    | Rinkeby
    | Goerli
    | Ubiq
    | Kovan
    | Sokol
    | Arbitrumtest
    | Arbitrum
    | Arbitrumgoerli
    | Core
    | Development
    | Unknown


networkFromId : Int -> Network
networkFromId networkIdVal =
    case networkIdVal of
        0 ->
            Olympic

        42161 ->
            MainNet

        2 ->
            Morden

        3 ->
            Ropsten

        4 ->
            Rinkeby

        5 ->
            Goerli

        8 ->
            Ubiq

        42 ->
            Kovan

        77 ->
            Sokol

        421611 ->
            Arbitrumtest 

        421612 ->
            Arbitrum

        421613 ->
            Arbitrumgoerli

        99 ->
            Core

        999 ->
            Development

        1337 ->
            Development

        _ ->
            Unknown


networkFromName : String -> Network
networkFromName name =
    case String.toLower name of
        "mainnet" ->
            MainNet

        "ropsten" ->
            Ropsten

        "goerli" ->
            Goerli

        "kovan" ->
            Kovan

        "rinkeby" ->
            Rinkeby

        "development" ->
            Development

        "arbitrumtest" ->
            Arbitrumtest   

        "arbitrumgoerli" ->
            Arbitrumgoerli

        "arbitrum" ->
            Arbitrum

        _ ->
            MainNet


networkName : Network -> String
networkName network =
    case network of
        Olympic ->
            "Olympic"

        MainNet ->
            "Mainnet"

        Morden ->
            "Morden"

        Ropsten ->
            "Ropsten"

        Rinkeby ->
            "Rinkeby"

        Goerli ->
            "Goerli"

        Ubiq ->
            "Ubiq"

        Kovan ->
            "Kovan"

        Sokol ->
            "Sokol"

        Arbitrumtest ->
            "Arbitrumtest"

        Arbitrumgoerli ->
            "Arbitrumgoerli"

        Arbitrum ->
            "Arbitrum"

        Core ->
            "Core"

        Development ->
            "Development"

        Unknown ->
            "unknown"


networkId : Network -> Int
networkId network =
    case network of
        Olympic ->
            0

        MainNet ->
            42161

        Morden ->
            2

        Ropsten ->
            3

        Rinkeby ->
            4

        Goerli ->
            5

        Ubiq ->
            8

        Kovan ->
            42

        Sokol ->
            77

        Arbitrumtest ->
            421611    

        Arbitrumgoerli ->
            421613

        Arbitrum ->
            421612

        Core ->
            99

        Development ->
            999

        Unknown ->
            9999


getEtherscanDomain : Network -> Maybe String
getEtherscanDomain network =
    case network of
        Olympic ->
            Nothing

        MainNet ->
            Just "arbiscan.io"

        Morden ->
            Nothing

        Ropsten ->
            Just "ropsten.etherscan.io"

        Rinkeby ->
            Just "rinkeby.etherscan.io"

        Goerli ->
            Just "goerli.etherscan.io"

        Ubiq ->
            Nothing

        Kovan ->
            Just "kovan.etherscan.io"

        Sokol ->
            Nothing

        Arbitrumtest ->
            Just "testnet.arbiscan.io"

        Arbitrumgoerli ->
            Just "goerli-rollup-explorer.arbitrum.io"

        Arbitrum ->
            Just "arbiscan.io"

        Core ->
            Nothing

        Development ->
            Nothing

        Unknown ->
            Nothing

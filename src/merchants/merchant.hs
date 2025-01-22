module Merchant (showMerchant, butcher) where

data Address = Address
  { street :: String,
    city :: String,
    state :: String,
    zipcode :: String
  }
  deriving (Show, Eq)

data Merchant = Merchant
  { name :: String,
    address :: Address,
    phoneNumber :: String,
    email :: String,
    rating :: Float
  }
  deriving (Show, Eq)

butcher :: Merchant
butcherAddress :: Address
butcherAddress =
  Address
    { street = "Rua das Flores, 123",
      city = "São Paulo",
      state = "SP",
      zipcode = "01000-000"
    }
butcher =
  Merchant
    { name = "Carne Fresca",
      address = butcherAddress,
      phoneNumber = "(11) 98765-4321",
      email = "contato@carnefresca.com",
      rating = 4.8
    }

showAddress :: Address -> String
showAddress addr =
  street addr ++ ", " ++ city addr ++ ", " ++ state addr ++ " - " ++ zipcode addr

showMerchant :: Merchant -> String
showMerchant b =
  "name: "
    ++ name b
    ++ "\n"
    ++ "address: "
    ++ showAddress (address b)
    ++ "\n"
    ++ "phoneNumber: "
    ++ phoneNumber b
    ++ "\n"
    ++ "email: "
    ++ email b
    ++ "\n"
    ++ "rating: "
    ++ show (rating b)

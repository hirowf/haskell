type Name = String

type Age = Int

type Language = String

type Person = (Name, Age, Language)

person :: Person
person = ("Bronha", 20, "Haskell")

m_fst :: Person -> Name
m_fst (n, a, l) = n

import HTTPSmartCommandTests (commandTests)
import ObjectParseTests (parserTests)
import ObjectTests (objectTests)
import PktLineParseTests (pktLineParserTests)
import PktLineTests (pktLineTests)
import Test.HUnit

tests :: Test
tests =
    TestList $
        parserTests
            <> objectTests
            <> pktLineParserTests
            <> pktLineTests
            <> commandTests

main :: IO ()
main = do
    _ <- runTestTT tests
    return ()

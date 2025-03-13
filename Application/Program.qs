operation Main() : Unit {
    let n = 3;
    let oracle = Oracle.CreateOracle(n);
    let result = DeutschJozsaAlgorithm.ExecuteDeutschJozsa(n, oracle);
    Message($"The result of the Deutsch-Josza algorithm is: {result}");
}
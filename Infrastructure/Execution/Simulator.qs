namespace DeutschJozsa.Infrastructure.Execution

open Microsoft.Quantum.Simulation.Core;
open Microsoft.Quantum.Simulation.Simulators;

operation RunDeutschJozsaAlgorithm() : Unit {
    use simulator = new QuantumSimulator();
    let result = DeutschJozsaAlgorithm.Execute(simulator);
    Message($"Result: {result}");
}
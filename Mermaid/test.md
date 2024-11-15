```mermaid
graph TD
    %% Lüfter/Ventilatoren
    Fan1([Ventilator 1]) -->|Luftstrom| CombustionChamber
    Fan2([Ventilator 2]) -->|Luftstrom| CombustionChamber
    Fan3([Ventilator 3]) -->|Luftstrom| CombustionChamber
    Fan4([Ventilator 4]) -->|Luftstrom| CombustionChamber
    
    %% Brenner oben auf der Verbrennungskammer
    Burner([Brenner mit Flamme]) -->|Brennt von oben nach unten| CombustionChamber
    
    %% Verbrennungskammer
    CombustionChamber([Verbrennungskammer])
    
    %% Wärmeübertragungsunit
    CombustionChamber -->|Heißes Rauchgas| HeatTransferUnit[Wärmeübertragungsunit]
    
    %% Wärmetauscher und Kessel
    HeatTransferUnit -->|Erhitztes Wasser| Boiler[Kessel]
    Boiler -->|Dampf| SteamNetwork([Dampfnetz über Regelventil])

    %% Wasserführung im Wärmetauscher
    subgraph HeatExchangerSystem[Wärmetauscher-Pakete]
        HeatExchanger1(Wärmetauscher 1) --> HeatExchanger2(Wärmetauscher 2) --> HeatExchanger3(Wärmetauscher 3)
    end
    HeatTransferUnit --> HeatExchangerSystem --> Boiler
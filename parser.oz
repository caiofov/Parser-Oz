
%main parser call. Returns the parsed output
% S1 -> input list of tokens | Sn -> the rest of the list after parsing
fun {Prog S1 Sn}
    Y Z S2 S3 S4 S5 
in
    S1=program|S2
    Y={Id S2 S3}
    S3=´;´|S4
    Z={Stat S4 S5}
    S5=´end´|Sn
    prog(Y Z)
end
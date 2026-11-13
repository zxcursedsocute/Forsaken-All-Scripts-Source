local replicatedStorage = game:GetService("ReplicatedStorage")
local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")
local testService = game:GetService("TestService")
local virtualInputManager = game:GetService("VirtualInputManager")
local debris = game:GetService("Debris")
local userInputService = game:GetService("UserInputService")
local teleportService = game:GetService("TeleportService")
local textChatService = game:GetService("TextChatService")

local v1 = {
  "M1jsbq==", "R05psx1MABZs", "19J+EGQr7b==", "4X+7XqKX0q==",
  "3+5MxgX+MKqGrBPa0h78eyuYm41vmKVj0f3HtRstN9c=", "QZ6GfDyhdAGHndpKEADI",
  "V9OvB81gwcgemBRLLbRRUq==", "8PvKftvp78==", "MaX+OEuI+Pb=", "lTneL28=", "1/lbUDK=", "NnYq",
  "uApEuCgp7Pz/uC+y7AiF", "AE9dmc==", "xh4C3F9=", "1WWJmb6OmVsR1izHrq9nJMq=",
  "CWNS64Q/e8KE851K5rgWRc==", "kAa6m+L0Ek2Tf0oRn8==", "Jg3smc==", "BvSiAB5=",
  "wyD4VmZA0T7g3TjPab==", "h/xZKnXXqxvNrQCNFc==", "qyuOXdk=", "Q+00GWz9cRIg",
  "nkEMcZtkSHrr8L168XnHasc=", "hCPQ9SvoJLmj", "ESouzfySk5vT", "GQQQFT17D1q3", "vdh+7rrT6gb=",
  "ctn5ESEKUA2spBzM3q==", "myIZ706=", "YtT+FJRYWm4Ww8==", "wmx60IAr", "JDVmwb==",
  "mc7Cyh/UTH5Cthz6nq==", "SantQihsV4IS61TN1Y79Gb==", "Fi38Iz7UBsSxXwfd8tEFLEkFcMc=",
  "d8WeSFcNi4JuKfnjmq==", "wrn68cdP", "ojufpn8PP8==", "c3BMKAtO+XB=", "W7RRUhOha8S7B13SyXPq",
  "qLNH+vRBWb==", "r31Wkb==", "udgWf/nCC52RTKpp7rT=", "/jiNYlF=", "RE96ndHadDsZc6K=",
  "/M5z80R+", "8eQECgeU", "IucQXCgIKhMtDJzO98S9V26uJXHICmtIE1G5", "8HgoRJ2d7Jn4Tq==", "lBSW",
  "wk81", "QA2z", "9RXBLFvuDkj+P6OSg8==", "VxJA5mJj4pdMjLkgUWFs", "CpUe5LgoCVMokC+8",
  "3djoQPM8sTSEqFhEZEK=", "2phXIEUQN8==", "HgfVjUp+6q3In2h/uc==", "7jhJhMUyNLq/7Jni",
  "wLNofn2Gmj24OKAzJaRD0Qc=", "jeZHUJHNUxq=", "2Qe9qdT5rc==", "i1Rb", "u3E1IpYVNP/=",
  "e31PJhkveMHSZkc=", "y41RBB+kE0/B", "TVvElPeH", "NjMGTpuZRA8brJznRb==", "7rN3",
  "mL3xYD0/ZZgFd8==", "QV97wtq=", "zdMLLxk=", "fXv/TBhphc==", "knUHNqR=", "MKr77q==",
  "zN+/MiFruV8=", "aNGTn8==", "Rtv/uPybhBiZ7JepvAzE5Jzy7A8=", "oycI31k=", "7Uceo+a9o8==",
  "e4Axs0b=", "RpgmRAUpiKgLlOKO", "l8XZIWN8wb==", "0fmSuZQx0UG/LEAvq4k=", "cF07f3D=",
  "yYbFyrwGNCHTskrBnzxiiBq=",
  "3/u1lyWoXDbJ7eW5Ca53uZaGbP5NeFP9YkYEBL20z2IWnYxbtmE8UeY8IATLSYgsgJ4UtRDzTm6=", "rUEd",
  "DeKfZq==", "lMCOP52YvKed7jROrq==", "kpupidMYfH+ENPCJ5rT=", "+q==", "jpcYIIdsHY8=",
  "nbb84HnoOv+DA31acOmf7L+g2hDgOq==", "9hBjk8+zfzSX", "7/q3WhB=", "ktou5i6=",
  "t5TCPMA+3z7hG4I6i4SASY9S4CaBAo7Swxk=", "ePsYX+ryZeGEFhTBAADpSgxYX+O/48==", "KnVQYz9Jfxc=",
  "hGL9", "BA/l18==", "J8L1y1zWDYCnoQ8=", "ccRRuuccz2R=", "hpiVrJng5BUb8JhZfb==", "4dLPs/Xe",
  "hyD8/YcS", "VrHbkc==", "CACjhLzEkb==", "E6Mn+KGFPRE4j8==", "h5gCuKpSRj6e8CMZ88==",
  "bLUUqc2oxkD=", "p1Di/70JXMwT8q==", "Qa6SWwkHmxc+MtYq", "a0V5RYTxUt345xviv7NC", "taBOHq==",
  "PhnfbDDQ9b==", "ltpRhMvRrKevCBySGMF=", "TnZYxHz2XsF3nG0O6q==",
  "Im8jaC4cZIa/6/tOzJJfZP8bwo5iFf0w3oO59XrN", "5+mimjEcrb==",
  "MZVyR2XwhZKLVbq8xzdBVYBYSwGrHtYkPgK=", "8KobkP9VhPo+5HMrRHq=", "xA06VKrhniD=", "vApEu8==",
  "HnM6BlY/7fF=", "5JnouLCE", "yH/1QHKaKI/=", "RJzE7VC/lPep", "NWuhDR9=", "ijiuxq==",
  "RJzZ7VgO", "uvtbGJoc", "xV2/k7B=", "ujz9wh6=", "9BbJipNpn8==", "sg0djPPo", "iqq7b9F=",
  "s5FGzHyx3RkU7Qx/", "X/u+M8==", "QeIA6q==", "5gvPydRDBacogC+0", "LXHeVRHW", "sOjl", "s+uN",
  "3AGXgh16RBrI54LRnPmRfXx0JnhIRY9=", "TFXM", "UlTZ", "Fg8qU8==", "ktX39ASwsByZ+3EzPc==",
  "JdrwAUxdCBqkdLsBG3OL", "OZrvZDFyoJObw1y2", "fzkZXJKGI2k=", "CpBbG5vYfAu0i56D",
  "TEeaUVUn18==", "gbXGt0Vh", "KVYAF/F/", "TSQyRHEzzb==", "PwfSLALei8/=", "P5y+5CuXTAe6hJFJ",
  "OJ9NbPYHXc==", "/189dTdnMb==", "g5rnaq==", "reORBi7e21Ri", "7vaXHrp55Zk2", "9jG6RMT=",
  "8RDfbSONSeF=", "X5YAddkWz6Sl9c==", "usQCkhF=", "TLnUN5iyTVv475MSlP/=",
  "CCmYATGdKwtq+Mfn2ltu", "eeQILPF=", "0Qiba+WK8IDq0dA5rt/=", "E4cxdh9=", "5ofVGD/=",
  "SW1fiqAxIbB=", "Hq==", "f5z3o8==", "yJgOkMb=", "tyzo7AvpNc==", "4qlH", "bD7tE8xiJew1sfk=",
  "RJyBfPvk5/UETj5VNA8=", "dCLH", "V4ReZJjvT8==", "nM5H2Zb=", "vApSuBuoTHi/8JUo7Lv1uKiZRtiO",
  "ePXaaYIiRlCeqnXdAeq=", "RaIl8c==", "crD1", "34v5ZljD2IR=", "C5vo7r6=", "HgpRPu9=", "ac==",
  "GvqmsEJA11v3jcwcGolC", "/wv0rQVSbg6=", "+JhWhMUZfi/n52D4gCrsflV5", "z+pgvNZ=",
  "DigV5wemdX5=", "Z2bF433gFeDsQQ37", "+CVUm2yy", "eZTk5Y8CThKPhRqOHq==", "hpwZTC8=",
  "vyoMrCpEhPhO5BnR", "t6F5DPes", "VM+Rm3o0MPYN", "Vq8Y0q==", "HxzILaF=",
  "f2hKNwjSV0BRC7NLHs7PXVrZzq==", "RH86glpVsaUVzn37QfZim8==", "CaegIKRTCxqX", "rmVrfGt7wn6L",
  "nPnrbAwB3TIz0b==", "/A7Y", "M11dUq==", "e1B2EtYFrU7nDbIemX/8I6dp5OR9IE+MbtKhn5SASWt7",
  "+ryYrBT=", "H+zhGmxUXBrPUoVE1O/=", "SjgAV+3E2zQ2ssF=", "KT0DvTD=", "2801J8==", "xU/TRb==",
  "7rvSlX+WNBia5/C4", "5QH6+vsoAnApj6gVClFMH/6K", "7pU6vJo/lC+gTLvKPB5=", "GjSb",
  "GCpqlJYvRddo", "KGAY", "rlZqiGoqRPvNgEEj64LT", "Rtv/uPybhBiFRtgHu5u4Tpi4hPeK",
  "E6hxzS7CH1nEPBTIiO6+", "1QKa9iMOTUdlKhZnx0saNq==", "dzTjR8==", "h2TWiq==", "DCsCgZkM",
  "EtvMcVWgqINcg/WaG5MSZB52PfV2G8==", "dH6Kw3eNlc==", "MrLWMGJb4A52QBF=",
  "fB2/iPMiNAgkRyvmPXK=", "6w3hkvO+ZLptGCGvIUmCajSAwFOJpowT", "GlB+VCo0RxX0", "TzX8Ob7C8h5n",
  "h8Tn2MT1tnR=", "kBUuk/n5iXv05/eR5q==", "ayCrV30C", "9G2dq8==", "YQODGc==", "fcN40zq=",
  "u3u5", "bh73y68=", "uApEut+E7VUo7Pp/Nt+E7Jybhc==", "qKnoIwYfob==", "uXgUuJpAN8==",
  "Rwt30JOGpA5=", "wuh2S6h8ZkSVfbjGgeOXnOAeWFsSUlVyMid1", "7n4/GWRZAp19KoxTH+8=",
  "8PnZ8JzSuApHT/vE7V+K7VhS", "/e5XBnK45Ezz", "l/uo8AeZfPuofMhrvb==", "4CVoea5g", "XxDcAVk=",
  "o1aillD=", "10zIQpgRGBG7UDrb8eNp", "oQHPWW4Q6I4Q6y8IdcGEB8==", "eK9eJVWCLD4dJZzO2n/=",
  "5sHjsdQBjNWAChBcuS7+hqjvQGFNkCLiXb/BNCudCcXFaPshIDgcnPtJrw+ayLaE2+paRnfxvNKVQNOdYtW6O1+6UkOq3Bg1VQlZcPmIENX+Hdy04Ya2nFMXzfzaGz7eJeWSGfey5Fcc9fhrWgOw1q0EYMu/pPrEX3JE5wtSTQ9+N3zzsKcXFX+ppWlzH9PGEJoHw+lF2OKOLb==",
  "/tMBXl7q5XmmRYF=", "VcPFib==", "TookClvrw+iyR/dPzLp+UBb=", "iq==", "ONjfGc==",
  "oNhmbbj7Dlk=", "uVJotzmw98k5", "SkNr7nqgInhKW+CxbkGfQTc=", "uF7y/HYeeEF2bALugeEcAb==",
  "Kh2qE93NxeMU7Mvxzc==", "s/JNV9+qZMZ=", "0YEI/yT=", "Sq==", "aezS8c==", "RA/I", "/VCCQb==",
  "9d+SbGTa8r3ZTku5epR4PRS8OUjasV85Fqk=", "5eYN", "Gto/hLibTruVNPeo", "rHUGkyke5KknfLM+",
  "EEmn", "RAnUCB2vNKogkjUr7c==", "OrvJCZAnm7BaXdg2", "v2+v", "sSNs", "P4ytd3EZm1k=", "UxPd",
  "pbhAq/lcknJJEqGv", "t/n8", "pNUnjPD=", "r3LhVNsQP7ohUHNaID2u1c==", "ZsR8vGu/vb==",
  "V+VARf8=", "NbaXFc==", "bzFkRTvDO80n/fy2Evv7w8==",
  "TLnUN5iyTVv475iFRtgHuChohLU+htv45Vv4Tc==", "2/94", "i5iaGBZbiAvdlKu1", "QdtojW5=",
  "4lMim76QSzsmvEuxDEvz8Row3llQKWr7tcICwfXsxr6/ZmTPMmAn+y38xFSt9lUvvu7Nu2qE/ST=", "/BGLeZT=",
  "WaXGbn7rUnDk", "tEpgxb==", "E6BK", "emYvon/=", "OSCtWc==", "CAhpRV+l7XovuHppib==",
  "dDfqsRD=", "5+Ltk0v1+Zs2d8==", "TAi5NBnb7OUC5t5bu8==", "/gyI/Xjiq3fNtVmflSUG",
  "rS+LeSoqFfbHfBTUO/7IhPgy", "sOiQCc==", "w254bDf4", "1S/c7JOOzzWl3o3iLc==", "sDeUZyb=",
  "z8==", "WkyS", "D2v208==", "G07fEFb=", "OxbRPV+N3g4LolBT/u5dX9D=", "ZsY82LUm8IG648==",
  "wwwBUG8=", "6hTNJXLAjb==", "rP2ePMKbfCik7t+mkJk=", "d2i53xb=", "5mFh7KE/qq==",
  "VJP6aVolaq==", "U4O31Ksx", "8c8GdWlbvx2jd7LJSuit+vCMRBAw7b==", "1tnNl6ti5c==", "fWNrt98=",
  "WfEp0z7JTFq=", "OvmRcwc=", "aIvEp1q=", "zq6wy8==", "HbY6+naahhVuXzvtmj+JlwCR7gYe2u9w9c==",
  "BE1xi18=", "rVollJpHhKCtiOU+GMq=", "RAz478==", "8RXU101QpYqVvd7uyNR=", "M5lo2IT=",
  "FgBP1q02YfKllo2IkyYovI5zfwFnl4+W", "BbC8JJ30NVC4xCmqc7p+z0+i80mX", "DHsyRJfkSLPa6Uc=",
  "rXIBeR4+98==", "b5TFWuOcvRL7BCNZy1tPU28=", "Q0RQIb==", "uXgUuyv4uJhZu8==", "Ozbnx8==",
  "Gq9pKAuevFMxceK=", "CJMohBu4TKiFlPnK", "5tMDTjvfPAMvTKiWfb==", "ljq8/kOnA8==",
  "tSxxmFW2Xn//4wf65YRLVeOBbPcgQjKJ", "zWVUvYUGeJk9lM5=", "U/ghyUS6juD=", "TuG/82Z=",
  "VeLinI6/", "eNPqALw1W3bM6HDbAgX8LW/=", "EvaYPNudEKc=", "4vXEYq==", "noW+poABXOmi",
  "w0KARqB=", "/5ge2MLZpsYEic5AiKBgmAR=", "3qRpgqri/43gD0jxImuchbCK", "84VViZ6=", "ddiF4q==",
  "bf5NCahm", "1K2iPKWH9b==", "we9e", "t1fN96TQ", "dhxMeib6k8==", "UPtTVQ/=", "5oQsgbZQ",
  "ghI/VMGmd8TC", "o4ruGypjlmOzkc==", "5DkzDDRJkgSVjN106+c=", "ZWECIHc=",
  "s3V09cY1QEmm6dVaV1T=", "Uwi8VIQ8irQm/oD=", "vJC/5LnUNPCETb==", "TAMSuLz2", "EB/t+/R=",
  "zHKOzC/=", "kBz4ecMdz8==", "Jwtwg8==", "6cbr", "krCkuypy7pvKTjCBf8==",
  "2BnIMkhVaMImYFZ8HAdL38==", "aInCkspXw3Ah", "yDw2gXK=", "Hltx", "2kRZ9aLczhg8zc==",
  "Y1RzrKystU3HdjLT+gcj3jRH7Q8zITuxj84DSJ+m8u8=", "LkbLZKwoHXHLneif", "yLspOBZ=",
  "lMi5vphCktoJT5qV7XK=", "zyg7vj9=", "KELYw8==", "xmJfi/FOEE7V8G18JggJ", "0NhDuNDwK49=",
  "dXIBdWc=", "6yhu/rOPw8==", "feG6aqDNADqH", "zAyr9b==", "u//J7VooTtCSGLhGiAb=",
  "MmRGCYXGt7K=", "AJ/WnexA8XXBmRYuCEf0eIV3", "rk/Vv8==", "Dq9F43F=", "CgbzBG/UMf/q8Pqg/8==",
  "3a/+Hq==", "O+W4Sb==", "+Yld4wDdjnR=", "jluPb8==", "I5Hq", "wsOmS1B=", "msl2qTxAqBap",
  "xuWuaqDc9heSfPAHKQapgrr79586", "FFv8bSWsaRBiZTo68bc=", "RJzZ7Vgw7JUS", "2HVhYea3",
  "fx7KBMOSykGfblX7VjSU", "tGvdpGb=", "AUJX0ebQ6BK=", "4+uZq1bXdPGh", "MmQDj/34",
  "FbGsg510q8==", "Id8YP1zi1QKBn3b=", "AM5n", "kIOp8q==", "NFUp0JK=", "vJMS5y+PuPy85JCG",
  "AuO3", "8f+XBAo7aPqzvG/=", "73jrJLb=", "TXuDvAoWh/2yvjg2uKD=", "pymhjzoi", "Xysaoq==",
  "z5/wIGwSAb==", "GR18zmitK5MiUgpfDGQpQifBAwym3c==", "RX0vNaSgDmxojbyczLHR1CzvzIoRR6P6O2B=",
  "jzhaPc==", "W47rrXq=", "TJmq", "GLhXfXMYlLig8Hpdl8==", "7dhRf/iFhXimuBip",
  "7tFbrV+VhBus7LgSic==", "5VlC", "Qyowj8==", "LW6DmQgDG5CD", "emzoIb==",
  "7wKxXQzvQlhIMC5ujdkveoQ1OfHPUROsjgZjusghZvOceVFxktDjg9bguion6cJNDqb=", "/hKvzcbs",
  "TO7P/wSnib==", "GLukvK6VuL2HRpo0fb==", "bkv2OZyx8c==", "+ZkevUD=",
  "kKvtQ3yEPj658VYHYv1OFAsN45H35C07Vf3mhfU6MvZysKvXUNzFHRDl", "XSknmSQC36SS2RVtNq==",
  "sPvq5b==", "Llj7bc==", "yOXAitR2yhPFMdAOHxjx", "AgoPTHOY", "X72PRIr2ydD=", "d8G948==",
  "vaSW76K=", "oKTFBPAnAqzSkj6=", "GIjMT4D=", "FqQNec==", "8FzqZjAOOq==",
  "Cb7bBB9yEx9rz/JoJEIO", "zhPJ/pu0Bq==", "V+Gcr15BJECUn2VKX0dWJwk=", "SyN7zt3O", "cXvMMq==",
  "FaZzYOlekEfqDvaoqP69pb==", "8/iJf5/eP5nL5Lp17jq=", "XunNmO/=", "uApSuc==", "EZ1PSOR=",
  "CLMa", "dU/ndP3ds8==", "MDDN7PeWztcGCaDdOq==", "tJiURJUpuBi47JnK7VhS", "Z67ejMD=",
  "W3nRQs2/NN/d1WJFlv/+qI3L0kGxIhq=", "fC+PNKvVRVgSNLzy", "FKuj", "uJz32alV/xuhQ5PtHc==",
  "PZ3rymY0eqDiAxy4ydjpPq==", "ZTa8zxdx08==", "6TyoI0d4pb==", "rBvb8yRO8pgAry+mh/9=",
  "cRl7Wb==", "DjJBpvT=", "iV7Szb==", "lwAaq3EuSnxFjH+LZDwfBfgunT4B", "TPa61nbq",
  "n4zv7xkIeMFmgp5=", "RtoyTA5=", "/XfZ", "ACG9+qD=", "F5Q8UUbsKfZ2yFF=",
  "ASAzgnx2kz5wsbW4oj71Wf97+wsAhYwdqMud6cMdFS3LnRMV+tYJo+I9ZTPWrIRgqZB2nSiTQ5cx86OQ",
  "xsK5j8==", "MxmHU16=", "4FP/xgR=", "XClA98==", "ySBc", "qJRT", "JYTUbfZ=", "HVwuGH9b",
  "uMUB7OibRKBbvP9O", "vwaxAtqZ96vmWKyOHyxxUvNu", "p3NgLY0lxK5=", "3UZIpXwb",
  "id6nlH8nrP8ERPoVP8==", "2Y74", "6GnU1rUVUk2s", "H5dGjHZSKc==", "hXh4hLp2u8==", "G8==",
  "vLpORPgZu8==", "CMoalppl8HUkNACjic==", "bj/7MjmgXu0aUq==", "TJpDut6=", "2eAi3DR=",
  "FlHX1YSrK2L+afks", "gUNx", "RJzZ7VgWlPnZut6=", "CLzHuJnp", "TLMoTHk=", "Mfavkije",
  "XWOD2G6=", "Py/lKHEubjZXLq==", "dkCEBb==", "zd32cb==", "1SgD5c==",
  "/i/gSpJa9JvZDJaRfkgPQgWiSndWJc==", "vm2Vyu2p", "B/kA6pTTnIQFCJn3DMLiUTUy", "qNeXlc==",
  "nO/LOq==", "H7V5Aq==", "JFpGlQNpGxDSw/7iouQvQXAgT8==", "GsQIUYwfsQSSD4hx4d1c",
  "evid9jxJbu2HpX3lX7+r", "XZ4AG2K288==", "GdX2WUv6R8==", "GggqCROfEEQb1MM2d8==", "+8Gh",
  "+LCKb8==", "SB1EYJT=", "zGpO+J5=", "mEl1PoqmtsR=", "1G6Vxb==", "can2yKT=",
  "M15pNBCTkQ+QLc==", "b/nucEno", "xfIcAUB=", "iCHyZhB=", "0KlYA7k=", "V5qLv8==",
  "po9naK8Ymb==", "y9U+0T5=", "aw3XGlX/Y9quab==", "5SoAgYP/Mb==", "2KuRwFF=", "O5P+bLT=",
  "oGyu67JK", "dYJVtfcz8EIAlz4ko8xwprg1", "Nvf8YR0DJqMXDy1k6wpOZhEVjBT4Zh45YEiRafh49c==",
  "6XYFwk+k", "X/IxJfYNkMo/oM9CIPG5", "Fr60+LDJu01/5fZI5AofLVT=", "zpskTc==", "8Vg4TVk=",
  "25GG", "wq7YefwLzh/=", "h1OAMS0y+IVkxbg2gOW+1cRLeJMriRB=", "sswvkb==",
  "+woH219SR8lkUjexlPevONr6QsaW9Y3R/oUhcq==", "7y6/h/vATJitTpCV8b==", "v5oURHpwvJzul5k/itB=",
  "C2qGvzq=", "uRpkkeVC", "ljM4vBUBlL9JkCgB", "DN39vFZ=", "UysXew+LCqrY", "+c9NMCBFlpC2",
  "llT668==", "W9TnKjyumK5=", "DmhzYf8S", "0sRLBDXO9SK+vk08Ag4eARCzzJO+boZCrxMqKB8VPdYm",
  "g/7iVFan", "b+y2QnF=", "RUjOILBM", "fbGEubQinc==", "8cs/aGh+", "Kq==", "k8==",
  "NTisikbzkmXWwZwo7sTseIwGyzH/", "oyEwgWD=", "PLgL", "FJRtk3ZTjJgg+E8dA5MJ0vT=", "Vs/P",
  "Nthw5/TVkX+PPj+H", "egzqQAcR", "TLhbV8bPbhK=", "N7vv8CZ=", "ilx/AHZMhb==", "LQtbK1OUXb==",
  "5rCwkp+5GB//7CMP5c==", "HT0IdHgyA28TmNy4nsfsz1TtZq==", "Uciqosf0KzKW", "6+Zupb==", "fc==",
  "ceYsg8b=", "c/vEGsSG6Sk=", "n1AFErC/3G3oDaA1IAzP", "ONACmD5DNTL9/zZsov+pIb==", "4/XV",
  "rPCFtc==", "WIkI+aLF6NJT", "iSQPD4R=", "c/yvhc==", "Pf3pNw/U", "KiBEsIF6JlA6B8==",
  "waeaW2NS4ud38dK=", "4Mtftq==", "fEAbSQxH", "8Y8m", "OpVdE4R9s8==", "jkTEGujQE7Warc==",
  "O2PityS8+c==", "N9rm+JcLMN1ZFI9=", "TLiU7Lb=", "ezb92Tyst8CMUETMOO3Cnc==", "pc==", "ox3h",
  "RBFvwB6=", "sU4Pub==", "Xc==", "hzE+AAsa4d4V67ibIR4Sn0q=",
  "JH7b3dV96fmxDoi+9FKIFhyP2JNWaa30LmWp/f2A+b06hRml", "85UO5Hu5lr+jfP5Elb==", "pGuK83K=",
  "I2862AYkY9dU", "hC8=", "2Uh/FzB=", "pW3Ujc==", "NrcDfruMiCClujg6", "mzqZlqwZ",
  "MOPchkSixudGpc8e6Uak", "fKjcLZJhrDkR",
  "Y2wmosa8ge8O34jGevFX+u4bzSayjZzWPjoP2VLUfI7bTU+8AkU8wq==", "kAbb5jp8PMRbrBhtNc==",
  "ssFYFc==", "2PlljRNJRsk=", "7LMOhBn4RJMZ8An4RJ25lPyp", "vqfKGP24Zk+ElHdDgz5rEi/D9j5=",
  "jsFKhIszpQFUJORtFKfNpwBARvCpfyVGmK7uF8+PNdiMnbiaymFQ0tOCBoOy9Y9XDSHRzxH+R9m4yDmniZp2Evb=",
  "l4w/qNfxThxzXGu982k=", "GWKSakJnFM5M0h5MqL4y28mu", "aZCqbk+yvVF=", "ithjTpUarLooiBoErP6=",
  "7Ybtx3b=", "fOURiyCafHBbTpC2G8==", "z4hDMlcDHZeA/b==",
  "/wcYA9PZWeHkbhvBHsqmEcDuszcgfxssWHlX", "HsfdkoBevtai", "v9UlEq==", "xjAEaOTnIiik",
  "hLMHhPeW7AzV7q==", "nPi5uRs6Z7VxK6Gubj5RD1H7gJ/54J5=", "e2beJBc=",
  "ooJste5b4seaIa70Q6hqQhNUcu0vsQu2YkZ80xq=", "E4pKV55hRb==", "NGiMpPq=",
  "TKUkadJzXJZgzbiwEs8K", "+ZtBOFyefc==", "VMRV", "W5oDoq==", "bAf9Tb==", "uDLQFcZ=",
  "EprgLb==", "3DjjbHwjpb==", "BdRfAyrr", "awpx8S6=", "FiKTdC8=",
  "zEr90YZXQTyIb9SurVh4xwspKabwlMGe", "L8sR", "DK+Nz+6Ja1r4cc==", "OJ8lXNyJXj7y", "ABVCXmpr",
  "k+Nv85yQqyIO", "yXGPUlDTrhIv", "fKnrvAh8vjcyTBDE", "IUTagkbjoNk/", "prvjoVst",
  "TdU58JvPhtgfNBCH", "vPMivBB/7ji+uBMu", "c8==", "s2oPS5kQorS5XH7+Lf9=", "GhIc",
  "uJC/5Jzy7Avt7VgZuM+4TJp/lPzS", "nblvtKltgrK=", "UuGWLdbr+ay6ZA29rVoQbVCiXDE/Yq==",
  "Nq4LIXTKUaaOg8==", "tcIkiKNbZrvKHjzPzUuHKqkRxq==", "oJuLA8tpNIXiC2vBVFXR",
  "iH+8TOgyhAeR5ruU", "bNZw", "ZEpyNcyKEZUpxRpIisOEEVk7RHPgdl50Wc==",
  "CgEMkUOHtE9Xbx312p0mrIvhFHRSavE2AJepwhoK4A/TXI6bkHyxhFND7q==", "rjAGF18=",
  "HoqyFoDS9xJOO0F=", "FjSkIPbDbgDlMc==", "AvJqNXhLwMF=", "5IhUisja", "n6rcA+cftAZ=",
  "CMg+8/2QvBCsryCG8/5=", "zGwJSc==", "tb==", "C6hqupez6GZ=", "u4IoUFhu+NIL6c==", "jiHEaqF=",
  "qd0Y9H4rl7t/gWwnTcB=", "K2nZQP5=", "Z3XFC46q", "Bx6yKEmLG8==", "4cV2TIGbfvk=",
  "uXgUu/pSTXC/", "ljiRhJijG5MDijUEvc==", "GM6VfLUOPMT/iJ8V", "fPeOhLMSRJ5=",
  "AP5GRUGv/knirDKaKA2jcW5=", "cNslv4kxmXw1", "QOqHeM2znZb=", "RUli", "ULKLuPR=", "yOLy3q==",
  "4nLBlOq=", "NCVqxq==", "IB637yd+zn6zUQBCuDLG459t", "js2jzRQ++hVZ", "lzCHUJ7ZasNfS8==",
  "2Hop9jcI9dl+", "s8==", "d5CBAZt/xHR=", "D0Kq", "LR9HTkRmoYab1jmdkvqpmIBwVbYScq==",
  "5Ks0e/PlHB6zq66HpPDw2zyqrpeffeZwi/8V", "jZScgc==", "9FkM9uB=", "3FUhQSq=", "dnqN9qF/awZ=",
  "QbEIspD=", "5hxwpI9hsQE4CIRPjb==", "DJgqwOOT", "td99mO4jBTsMq8==", "kp4GuxHoQcT=",
  "ssJAZ8==", "Ct6iuWLSY8k=", "GSDlhvDl", "P0tzqtc=", "I5U3yc==", "fEI31c==",
  "iC+/CtuprVhC8AK/", "Ji09uAf5CncL", "pLmOyO99Ob==", "TK4NNCV+VuWX3a6h9UEWSHgOAfZ7",
  "TGoOckAAmc==", "6y1WaheAWDkUdPZQL789XXgQIdF=", "I6sGAc==", "YsI2sX+6avc=",
  "jYmi+SQe4V/UlcGUBzR=", "KnlS9GFK9c==", "ynza3SBsKPk5PeDkJnsXP6tvvaW4Yb==",
  "tyz2utvUhLMa7L5=", "fARykBiDkXUJhJpd", "F8ZaNGb=", "6Ykm", "UL8AoOT=", "3egvXU/bzWSw1b==",
  "OnmJ3m9CKTTm", "M/uW7Bq=", "8tyMozWAOc==", "bom+sb==", "frgJ5CiPlAvCuPha7CB=", "dJI/",
  "2mmpiSLhDb==", "SCrXAoic0c==", "4lisXBbtZ4q=", "hJMohc==", "vAFsh0/bGiYeIO0fy2plAb==",
  "Gsh0b7Vc/ic=", "qyhtXmRbIQYU/JUgGb==", "rckJnJufAiQu3M9=", "YWRzxHzp8eMWhAQxctpMLoa3awB=",
  "hn3O9D4emFb=", "nTXwG4SK", "N06r7/G478==", "Rnyq", "nLFC48==", "7b+Z4ywUZc==", "amRlQ5a2",
  "rBZvrqKj", "0q==", "CJq7Vb==", "jqXm", "dBXTjzTNP+QMrZ7DxxMk", "K6NvOLtZQc==",
  "EtUAydXN/b==", "SxLakGe6IsecYsFwI3FBqcxHCH65", "K61ZWUx3PHq=", "zslU5DPU+2q=",
  "fwjyRzCsf0gN7zY0bYKryq==", "Xkk/415=", "OsQhvi5/", "PrjNexBcha3i1kC7x8==",
  "N2MEjyB6U8iHljiZ1L9MAfq=", "NCzxCZK=", "ak/xvjIhBGVv", "H8LFoKueAgIGK/FWyXrSsq==",
  "rgK8xq==", "6lmyU4K=", "Bi5UQ8==", "lyabjBmF", "eSWhvn7CIA/=",
  "IGQ7pcXbiQweQcOUryd6wh9CKpzaZuLv7b==", "2GA9LF/+X/1/", "8N1i", "EkCvNZR=",
  "ejtuWHMegcxiW0AXrk3hJXoRQTAviyrtyMERsvdWTKws", "++o9", "kV5Mqc==", "tmUnSkRpssIbXc==",
  "mZeLV9K=", "V8jv0FzNl1Vo", "5ACATACOlc==", "ZTul", "omWO7tmpx8==", "88jezOdurUT=",
  "c/ZfQ/hqh1YGac==", "tyhnrgX/GYUwCUzZ09xqb/PnaOOg", "h/gtfjMPTJuf5A8n7c==",
  "hrAOtcuqQzGJNBK/2UzV0id5f7i3BQyh", "y/93rjXyY1kCnGHp4b==", "STgm", "fkRWyZ4L",
  "x7FzJG2fZc==", "0wN2yyYveQq=", "7Ac9Crivsc==", "oxCe3Xz0m+v5gb==", "yltPpx5=", "7Az4Rq==",
  "FYf61vFIxpw9Fa6=", "SN4Pr0pjoSS1VMt5IxhP", "bvSIeg5RcfukaIj5WBdFFRxM", "/XSCOte5",
  "SHrCYJsmPq==", "E09iDVAJEc==", "kfW9flk=", "zfslYPT=", "Fq20nR5=", "CVgEuAM2iLCFROUZ5t6=",
  "TVCEhApJ7Vg/RPgZu8==", "tQMcd712", "ICDg3q==", "fl2vl19=", "ibfvvyKGmUZFfNkZLWcf+gL3Fc==",
  "lILxNb==", "NM5ECjkV858bu5hr", "eIefBeO59gKqVZfHYZ8V", "DIUzHpwKltjQOHaA", "TS+X/0kZZAo8",
  "Oi47W2506c==", "eJ8gW3K=", "VeA0pTZ=", "LHvgidaFfl7imATW", "XUJFNkU68Df1vAOzUm7OQw6=",
  "4RPNJ+1Se8==", "Xw5SG9D=", "YszPGcruD8K=", "0f4NbM+Q6ozV", "uJC/fJpZ7LCEfMg8",
  "kZcHAPWS8c==", "a05lhq==", "ZAE5+R2pmRDxY8==", "cVIt0866/y6A/9R=", "sDDmGn9A53gMi2ga",
  "H18Blq==", "fXo4kBbnTKg8TBoAiJ/=", "WqMuK88=", "mT4x/Jjm58==", "bnAQbV1aFGK=",
  "T/zXPpiCT5g0RyUU", "eqiu8EddPq==", "u/oDNKgkPAikPHM+lVK=", "5BqVrc==", "h8==", "4wIV",
  "U/Yktx0Z", "jH/43c==", "NiuW", "5yGLhtB/", "tJgZ7JiW5Xgphp+ZRtpo7AT=",
  "RCk+W804lyuLa6KFY0vub6ytQ6KT5krN+AVs", "NtMwkrBEk/n0C5pK", "WhlEYDk=", "fgbhlOUP9i8=",
  "TJC/RJnoTLg4RtgK", "WtTChhoFWXgn8xBwvKA0", "LF4mO8==", "y1rnBUE5ZQ/=",
  "6dqBuMos8m6iuqEmlc==", "EKua", "Z8==", "uXCOuP2WRt6=", "n8aQNq==", "dI/OAdlu0PwWXc==",
  "8rMyCJzsTBUDkAya7pT=", "eKXDgNcavc==", "vAq89uGhfc==", "485khM8=", "4/mWI5Fp", "foQ+Ix6=",
  "GaqpusFoGq==", "47AcZ1S+egANIRCV2b==", "+EcUbtvY88cM7j+9FGZNB8==", "kyGc", "nhC8Y8==",
  "RtpU7Ph4TACSub==", "oiBu177b5b3TYMmkKGasaSTuLLh/JG5MqTzE", "BRG7rx01OoK/6vFDiY8=",
  "KfSrLc==", "sVJabhJFU2Lk97fnVRJ8xa8=", "F8SHq59=", "xVTZu8sUpIq=", "IdtewD5=", "G9QWXp3h",
  "aJJmKHC7IUF=",
  "0AYXEWo4yrtAfIPwmSf7sThfcRC/t3En8jCIDEAE27OCR6APnJxWa91QmEmi0ulv73iGPVplJoLlzyLilKwPgOzTPMVxYBU/eAc5JTc9hq==",
  "1TkM9q==", "ynG3", "5AMJCyvOCKZeuV+eC/K=", "h25T", "CSrB", "VDU7", "CKqJidgeTLCJCd+m",
  "NCM2RyoCCJnlvB6Du8==", "EclE8O2xBmOiG7THh/0WXpan20MzM9KdmXfj", "tE92PoMToFq=",
  "8CCBf5zQ5MgMvBpdCMzBCc==", "6Ee8", "Y1b/Q96LFKuxFFYQi8Nno1lLCOT=",
  "D2v3dgo1lK36WyvDHPZEHZZ=", "Dv56CmDKbEg3MShThWgP", "e8==", "PzXK/R/GRbWpGb==",
  "3xhDScmKepD=", "/cmK0Ky9aPuJeyVXq6mfFq==", "2WEE/PXeDC25xi/=", "rOMwTBykitu8lyuOTH6=",
  "y5G6oBCzoButGWfbw1pVkjz8WyAfE2utiffpnc==", "21d61doRILUW", "NW9Suti7F/xaqwZ+",
  "7K2/NCoek/hsPADE", "h9cn+83X", "rLzUuBMSlPyUhLp47q==", "a9UQmwKXP8uH", "82D18Aidqhb=",
  "aPJGiqZ2xgiNcBB=", "6tV5S5b9KFrAhOArU2cZ", "JAdS38Er3ZNhynV2AW3URb==", "RriyiJuel/My7AkJ",
  "NGrYPkpnCOq=", "jHYZ8zB=", "/dSfc7xebk0U75tt", "XJsO4iZ=", "7Xym", "HL1mVBzl",
  "b3ketDwewgRGMc==", "vrknT5MZ5P2ZNAFDGPZ=", "Ku+b5nX+jb==", "NHhiNKneTyp5N5hakc==",
  "2Uw77Ac=", "LcFEHiQ0QjOuxjRImFKPLqFKpMF=", "crb3vEABzowI", "5IS7wHjyfyfaOPj0jc==",
  "fLUgiVgklJC5rVMKvrT=", "xaaFab==", "cueJiq==", "wjUjw0Rip9Gjwb8=", "+HWq", "jTal",
  "M4S9gqhS6L8=", "TdUJ5tp57PhoNruu", "l5m4Pf9R", "Z55PUqB=", "ADt1", "3DZHlo/=", "Pli5gLB=",
  "QAaYrc==", "QLLsh3s9FAK=", "eKQf3rGh/gY5", "EfmovBRt8A8YZx14rw0SxmrB", "UcRYdqxt",
  "x3D8r9hB7ZvW7b==", "2eCoHpw6Xq==", "p6ka/Q/3L7dly8r5Nl9wriEe", "+Hb5Ojk2AnmTlFibAnWw6c==",
  "rClaspQq4Sl20Kk=", "MYg72Vo9G8==", "NuyX4t2bdc8=", "6n1pM8==", "dikUfjJT", "AKt2zq==",
  "7q==", "5tU68yuG7tM6PrUd", "AFzUodT=", "RtpU7Ph4TACSuVk=", "8VgpRtvp8JzSuApH",
  "GtpZRJzkC/vRfAn4", "OUc85pwJGW5zYhaDCQb=", "mfMsRc==", "YfB7WNUy", "NgcdJ8==",
  "ZGeqMFooTNUuBc==", "2hJqub==", "9b==", "SO6zGq==", "5NiI+m5=", "2QFT+SMXWXlS",
  "LJrxr3IXIMxEi4CQLZjP5PbtHeec6Qc=", "ht+KRtvpfPebht8=", "9wOT8q==", "rOu+8A8/5Ahn7Jnfijc=",
  "iDu+4eu8lSZ6qbRCuwCb0pwfTWkS", "5tWnDylAJAKPloKAUb==", "hOiLkLy1vtoeuM5Vkq==",
  "TvoufP8g5b7WGc==", "cD6cLrFDrz71", "Nvim8IJOf7ArZ/z8", "0k4bklT=", "WQz+J2F=", "2llKX29=",
  "mYEb0b==", "/aCvoefmXMo7Z4vO", "vjeM7l/BYo6IvzAFLGlS", "z3dWir8=", "kusSWq==",
  "p7UUbkb+Hd++3Qq=", "WR/s", "FByG47gD", "NLyVJb==", "lTKdR9wnB8==", "fsBC",
  "KJ3zC3KQBggjORn5fq==", "6TH65Tjx+Kpr", "34mh6yLA", "wcfl", "IBmpSmF=", "WCuNaWqXGy9L",
  "i6sd", "AiPXKonS+iT=", "rcOTgPGxXRD0", "BwQ8LcOc", "I2a9ZceOB8FJZ8==",
  "PAh0rLM4rXvMRARVlb==", "EoVl", "zermAfhMhwoG", "6gyifvK=", "t7JB",
  "fvyrPDm9jlDSXZUPfMbuWb5=", "O2oWlA6=", "tsbZS5lVR4yzAuw+rQYZzQLJ8/bsCUwq9rePgrEb58==",
  "SI/T2WIgZFCAItUkhJiX+sJrdH9Y9CebCvvLQ199od6bK0MjkIqMfQF0Wziv8PkdcoZ=", "eYTP3c==",
  "o28Bz+NbuUckQYU7f+0WLRzE7GWSSIpwvXeaa2PDwNMurQAlbYJYAUXjB9c=", "Ifd9", "KoqiIk3yCq==",
  "J+ZcW30aQsv4cXc=", "7PMjRPD=", "nBt9I8Q03ZbZE3TYZQBYHc==", "6etGSnF5Bj5NSSqMpjfn8b==",
  "8JzSuApHrAM2u8==", "iKzLi/yKvtMdNBp1", "SxPQ7vVp", "bSUV0b==", "LmBZYj6=", "Uym6",
  "swda74EWxli2EzPTBJLf", "5zsw0y18m9Pa", "hqH6w6dStq==", "rgdGDnR0t15=",
  "6JssnklRxb8cyIi0dFPcA2H/zcsbIoufyKH8", "LUuc", "Ignf9ZJr9mpVwX9=", "maUwBSjC",
  "8uynx77gm5yL", "LNPsn3Z=", "voepVq==", "PaDbsZK=", "cMufreD=", "JA+VUq==", "5npEt8SIx8==",
  "s1DGic==", "uJCSTJCE", "NpMYRruV8jubkdvrCq==", "sSaGErk=", "rMgDrt8VRCg5fKgM",
  "vKCduPhp5tRbhBnLiq==", "ixqU0DQzDB+5ri9=", "DGSgF9otYPyCMC772n/3i8==", "5JyHw+inp4t3",
  "cb==", "CLnClJH3dLqr6c==", "CB5Ehtu5ldhyTMUXCHk=", "68bCO1RF/4uTIq==", "tPm15DyyJL/=",
  "U11MgDSTcWRwhTR=", "tyzZuPD=", "T/CpvKnkfBivhPgd85/=", "/aB5XwQMFUp/mWf4MfzA", "FyW130b=",
  "Jc144kQx0uT=", "kGRGhgly5IVudKNUQqlJ", "URnT5Fc=", "6eQiRs/29wqq5TKI6dp5UHW3uDbFcpG8",
  "2LQuIm37", "Xao9", "i/iru/pKuHUPlBudlc==", "gq/Z9UD=", "662luyBXkb==", "sq3Jl8==",
  "8dw/UzwkTq==", "0HX3Ie6=", "BlE+W7n0iOYHD97BESD=", "oj6TEGc=", "vLCARtCZhMuU7XCp",
  "/YkQLSqF", "xd7MugB=", "8A9N+wk=", "2El5PxFGGlb6nd5=", "FLRnab==", "wF44bvySaEtPnI0nKmyh",
  "BId832lqppUbn6qqTcI8Sz50z9rzE9X1xLqJklVZjFeyec05ovveUbzoWKVEVBVqnT/1mBCsaclCdyISrMZj5+SxsOOPVCGeE4qO33xGEzvJ62rSX+Bd6Va6lBC4hjreNM8XO/Luza0dREoZymjAcFO7alGKT1fb/K89j+VOIX6eX2HcPP2lhZKV1k1pNyFv6EStdDCVF1SRXbQaR0DBMIPxbW59HVy26E7OcCaZz3YXdBheeqPSzQFKWG7D0CWWsSeKVwCTyb==",
  "HLNzNAnQQob=", "YHt6jKHvm4/1Lc==", "2vWYW0+T3c==", "EmSk5aMAD7PppgvcwnZ=",
  "/aMtFbOUxFEdOoSV20se", "RJoXlH+0T5pPiruP", "YBHRIKijhiEtjeUBMq==", "gRE7",
  "LQnD0hn2eYd7Ty+RXO8/bpS4ecU1PuYG1EMF9uQsFueYMmm1yAna/zhv2m30SuA5Wf56q9xsderF+aG6cZuUZB76SPNljroYgxOQYMTjN8tF8NKIxbO9P8==",
  "wkyHVQT2pL5MOVZ=", "Tc5GFb==", "fqWO/5d3QvdSJPN/ZoASY8==", "r/OMLfL+qi4pNc==",
  "zIZrH1KYRXc=", "HY4f", "hdLaGsbpkN4t", "vApEuCipTHupTq==", "6It3UG5I3Bk=", "Ukjq2q==",
  "lHprfChLRAUa8PCtic==", "UbGSpuc=", "LRqbPDtD", "OERz4GF=", "SjByUidb6ErvAnq1tc==",
  "H0t8iZOdonyjPvDObzoE", "f/3iZlZ=", "PDlK2mTTiqq=", "6LwFcq==", "y4Fohh58NlT=",
  "BvAySOb18JGvocUl6HL/Rj9=", "hrvtipvJ5Jo0NdRO", "2Ox8t58=", "8N7z", "PGgq28WsFxA3YjdPusJ9",
  "+TJxkyD=", "qtM4ob==", "fCTOijiwhdC5h/pYlrB=", "eRVUF8b=", "I3BAkQHtJFn8j5rG5b==", "Vxoh",
  "xKaGyrb=", "EzR9U1vkCsT=", "gQ9f", "HUdM", "5UNz+OpRVq==", "Jn8xqeVhHhbdLq==", "uLP2uq==",
  "uAMjlPeHhLzHuJnp", "eZQDCyf88l0G9fd0wT1W", "nR8gp7sdnSB=", "3t2+", "lC+PPXoGRKCouKeVrOK=",
  "oFFxo3agS5D=", "0PBGZCyZEc==", "eSMgu4iMJxm1f6zuVQYqaQDo8b==", "jKz0VpK=",
  "GHCxSIZ7ihS6v8==", "NXCwvKDbNAMX7tFDPBB=", "yUdJpc==", "iqQc+5Xo",
  "GVIeGrwfnGJm/ff83XSbksRrSRDYjUz8WREpKthm1q==", "FTWggc==", "o6+SSOQn3b==", "AW+SrvBMnb==",
  "BWJP", "Cmjm/9car2z4sYhL", "kA/dmvzgo8==", "QSH3vg09euJqA8==", "uVkSgG+GZ7XP60QnnuG+Uw/=",
  "+yymRFjXGOVvfSqF+5ZC6WK=", "DI11LaESRb==", "jNpOXbK=", "EtqK", "LNcxxq==", "ey27",
  "YCH+5b==", "flk0", "jkWTF1K=", "5r/eHWApwPXDwI8o9gque2dz+VCASuEk", "UKX5", "swD=",
  "j5e9NNgsNfB=", "t/Eqzz/=", "UO3O", "tJnUTVvs7Lzjl/ypTViUuJC5lPyp", "PzEANRc=",
  "VDFuZijY3Pek", "phekNLyXG8==", "7OuViKUFiBeyiXMPCrq=", "lt+zgxb=",
  "ZodPMZ3BcMMk/jxw5gd65yDOmGDps+lwiDzpZNswdVzG//1RNtRjPq==", "6XrrPQLdW2oVUnF41YwA",
  "FD8wW3P87fq1i9M9XAAS3BD=", "89dpGR3seoyxHpc=", "tI+Mozq=", "63acU0v7JMJJijkRYT8=",
  "urCphLn2ftg47yiFib==", "ZOVvDS6=", "gXc=", "z0s/", "nq==", "PpvjPCqnkJ9ErBe8",
  "Yn81ZYapS7uVkX7zIaGx", "5Lzbhtc=", "Oy45YnhJ5zb=", "i/pA5AhEvAg2vOMofdc=",
  "eHkKsy04GOnX1or88ymrtlTfZvGtegq=", "//KC", "dLNhKn8skN/=", "TCej3iAx0QOAyvJnncZ=",
  "+iwRf3Yb", "dQ3dz6SpyTUz76/JQ9R=", "hOek0U30/r+sw0ABal0F", "WwF6kksY", "xcSLBRoosEaZ9q==",
  "dOwXaz9ngq==", "WSylYaDGcisbRwNfRsiiyc==",
  "Q6U/5/Hm835NJlGw7dWGi117Be+qofSyzTjI9TFla+XmA4iZ", "8PnZ8JzSuApHTb==",
  "GB0S0RyF44G+Ryy1jDC5W8==", "+hTZD6phibXYxSOhnYpDdOtDv8n898==", "kCc5sz972VwKD4mIe5b9qsF=",
  "tJiURJUpuBiFRtgHutk=", "I8hhb8==", "dulw8W8r", "uPuuvOvZ8/vd5/zJu8==", "5sRNcIiYhLvQg8==",
  "n9biF+Y/vevLdb==", "2L43yXQBhLq=", "fVKqARiE", "FGeOugk=", "E9B/F85v70B=", "LnTxXb==",
  "onZch1sBG8==", "3j+KX3NXtxrKqnxSf7F=", "7W7n", "eyZlTmY/Qqk=", "pEoC", "e1UDqHF=",
  "RpMbCMM0v5gRfP2b", "4Oe8yXxRQ8WqAU6uYHQL", "hyCVrB2sR5zeRth/PKk=", "uJyUhLiF",
  "8L+xDba8ScZ=", "gF6HBfklaHbQnUY1lQUb7Jl+8lyw2q==", "tJM/hLC2TXvL7Vgr7VCSuc==",
  "KzlSLk/JYa3VNb==", "pStvtKYXc0Tc8b==", "xIb=", "GsQT", "iBah9Nb=", "9o5mMq==", "hpmU",
  "G5zweRil+raGWVMMSUFlfqZ=", "b19S3w/=", "UCj7ybOIyWfF",
  "rMUw3cR/UpltkpewJ5R3+jvv/W28cN3CRjjG", "kB2kfpigfXv0hCMRGc==", "KPO3PqiddEnT+8==",
  "Y/B1PeGBeOsa", "kF6G", "hLpjlb==", "rLuC7rv6vr+krCM6uV5=", "CVTkKnQZvOrismt/CC2WTb==",
  "zw6OG67pzRgxCq==", "rYgwIEJV", "hQf/Qq==", "rV8nfPyUNdibCJu1iOq=",
  "rBX+VqdLZUBYqUYb3Y9w4JiP4Jc3Oc==", "ukQ5", "3kAuJc==", "BCkGF8==", "7F3uDq==", "2acNUHT=",
  "+SkP0o4U", "Ifdx8EdXnajO6K3OdB04Sq==", "E4OAlc==", "rwkK5S5k8VF3fxxJMN/=", "JBWhuoK=",
  "5tBTQc==",
  "r7abqaBnwunXk0bgpKiWNxOzgkzUtIjOjeXrPQRpX8jqDMemmkNyIX9gp02mTxNHSK4TwGGKH6huzJ+vWgkFsTwvGibDskxl13w+uCULu6CB1j7ZBHzwQMrCh79SeFIiICCiTQVy2ZR=",
  "IuVIY8==", "fAniNCU5R/pwkrUiR/F=", "CJp+TLyJvyiE7Jith/k=", "fuqs+vPJOd5JOawgR8==",
  "MiPF3c==", "5OTW", "YN/frc==", "/uik6hk=", "p3etOEiskSG4", "FiEUEi/0LlQUm8==",
  "rXhrNAhVhdqD5digPKb=", "XiRbUygXqwBdvWcimpPL6YEFfEEnuaF3ATLg8CWId8==", "JmHE0hT=", "eGfW",
  "Ui1/50ak4bW2", "k3n2nTTPBKwNQtk=",
  "N9xoYXX2ohNm/V4d8LYu7yRPKJNrD9hMbrt1WA2+qInbmfLZdCCI7OzCDhdATbplYZA3L0IW+CrDwXq=",
  "c9bCrbYw", "6QN6X3DWquK=", "JKNN+dQuhC0wMRK7", "zhRjcSBME8==",
  "Baqb5WKe+FanyO7iKkmrhCHoWeL0Tc==", "x8HiFYdSEkRz+q==", "8CCBf5zQ5/zCrKvQCBUfryv5rB5=",
  "TBUkfOvXfBZDPPqENP8=", "OyQC", "T90cjbN/YEUN", "/tzS0cEm5tg0ZFuSCOeAw8==", "cSYhX8zFAc==",
  "RcMA1Ctb0boHdP4VAGKj/q==", "I5b4HSq=", "wLKq", "RJLWLQHqBUc=", "8FRq0HX326FoLwm7",
  "hLzOhXgo7AT=", "cX/eZ+FA", "9A+qBx8s", "TOhL5HcVPMkev//D8Jk=", "PqaC", "3IWw1c==",
  "MQ5fXR54I4B=", "RpdI9GB=", "wDhT", "iPhFTBCChAUaGXMjG8==", "2QgzY8==", "Angewg9=",
  "ROm6kmqwl569BWjX6pwHrY1hVq==", "BwaIjLr+2zB=", "tuwBw6xP", "OC2VjjpD3EiUNo2n7MtUDXgb",
  "7S+yiV+VxGDAr4aZzU+buM9=", "wet4iuqMj0Ivwb==", "ukd461Hg/wR=", "nqyFIqQozjkqvKdKsEvXnc==",
  "sYarFoWknDIHwIfwaJeb3rT=", "6b==", "TyQOwSZ=", "xECeJiXMPhBRI2qYmjI8ptV6xqTq",
  "euGOyKKAblEO/aIER0B=", "4EFh1c==", "hB3J", "hcKhejsArel8/8==", "Dqq89hf6eLS2Jc==",
  "mQg5yfr67xQejp6=", "sGTC", "bprTm1/S3IZ=", "pjNDO50EHtgUv/DyJO2ALB3SbzxF", "8BJpGoWlMBb=",
  "uB8Vkgq6c8Zas11V9O9VLj1K", "CYbRIIggVeaa4XRS", "jfo7avKplAFV4vuh/2E5OmT=",
  "h705cnckZfkmfFEs", "WDml", "mjXv", "oRTYnTKzrCe6A1NbWzu5Oc==", "zCrj++HHbB48",
  "eXkPiczG28==", "Blk0Rcj+rc==", "+BP5V1Ux1kk=", "RJUA7Mu+GCu8hVFbT8==", "glMDXUmqLOjj",
  "sqvxoZ8=", "iMiK7CUlipKJ8t+iic==", "XgtbcIRrk9gRhHjKD8Q1", "fRI7z0qiWq==",
  "ssaNH4zedfRzAL5c", "azbOj8==", "4s7hpivh", "Fjj9N6L4oA/=", "Mafwjm9=",
  "1y5KP4MYBCOXxl/7Xn0uCogyvGzvzafKO77GWoYodEF=", "p8Tszs9=", "zc==", "B/gvneT=", "RJUU7Aip",
  "6LGMWDGVBQg0TklarDRB", "+hGh", "SNY1eQc=", "4/QU1sKd0OOTpFKtHxiZSP62NhIPbRyvlKK=",
  "86HjjZDkkVt6", "dWrTeb==", "TGN708==", "W1x+gX9=", "xL8rR1kLl/Sk", "R8L488O1R2HbnxSy4ZF=",
  "qzaWzF6=", "+so6", "Tz4e7K/C/ylJQgMK", "qwETYrRcAc==", "BIGJATfy7e8Iqf5=", "pORH3k6Hta/=",
  "wMI4", "ZBAkNc==", "MxTu2LDUk5Hv", "gJjWDHaN16B=", "sd5AZlOh7856eo6=", "H1KU",
  "+UJqoIj0NZQB74MgHOoFVHM3", "5eBtxZ9=", "JOyAL1aaTE2UjA/KVy3c5k0Dqv+F", "Q9BA7b==",
  "aM0aOwlGTYtiEw/V", "Pfxs+m/Kz8==", "yNWwcc==", "AfmGA+WFsBne", "XyP0apJC",
  "BjQVUJMwA8CccbmYBk6B", "YkYmzLzsOGBpCz33Bq==", "KMuMwAnem5SvlzJx0Eww7ertYO8=",
  "tCyIAiIAOTxc", "CLCZut+4TH8=", "WKvVUd+C3Mem", "Z5tFQcgn", "NolF0c==", "/EwpzVunntxcknKZ",
  "RFD=", "RNG5qXHnAwfjNpPJeY1tX/YM/PG2Hv9wJXhyuB6=", "Yknmfg/XJsTUrbhzO8==",
  "NHu1vOviPrMXk5pF", "aOdM3HZT0OYY",
  "k9yM9ueSOp1h341tVzVZk0rz1FmQlLUvrC0Exlgj7TCISOyTKYzV8CBJoTxiIAQC1DCgEPtjFfSEoyYcy5e/G4b=",
  "JwEFLb==", "RfoK+/4jfW1iU6T=", "+RlqxA9=", "VZlG", "dk5Ldt6=", "M5q0e2R9X6tBB8==",
  "RwFlRq==", "1FdrJ1k=", "tRNz4tborvX3UvOurqv6Q8==", "8Ej+EeyPhLeypgkKI3lsQis/", "qU98SQ5=",
  "fF5kh8==", "Ct+8KXV+sq==", "wEWAl8K=", "8gAT", "lwg8k88=", "mouwv0MwBGB=", "lAMSutip",
  "VEFIXGWXKb==", "SImk", "P99MXYT=", "baCfxI6=", "N3VTvPhga9bN+b==",
  "e0WesewCm41UTERuInJgmW2zhfMkGv8CUW0Xb5KfYOaRU033+EKAc+x2kRsX6B8EzmkLzpm9fcmx4qk=",
  "8JzSuApHrPMSRPhpTq==", "pX1GMKtm", "N4BzzV/=",
  "NeEAj1C+L+tdyZF/E1DEBJ1mNMyzzFaOKcEkv8zKMBb=", "vookS60LeSZViY6=", "RKbIxq==", "tq9C",
  "4bCvDXzEgcb=", "uJM2u8==", "aDPJwFZ=", "7H+pujhBuXpZiKgO5c==", "rCviPgnsMyhs",
  "CfeOY209fRjtKq==", "u/eJv68=", "FMfe/kT=", "uq==", "82kveH1Do43Rvdgkx0UV3sDH", "eSifqW9=",
  "5V+URJ5=", "Z+MWekzVKb==", "TAJH/dc=", "n+Ul", "5JCjhLp47q==", "BPB5BpuMGBook+QHkn6=",
  "Ja19WAK=", "KuMy3WprnsiA", "8hKBLfb=", "d3YNVc==", "Mc==", "lTr3zDmTp0Xa55T=",
  "IiuVuXytsO9=", "1DNEyq==", "IIQyJ66Hiok=", "lAgKCADbhCoRlJhLvq==", "Z9kfaVQsXq==",
  "hfKh4OZu3+8=", "WojZtfhJl8==", "aDXNla9=", "7d6=", "l304lYYx6zrSYKfGpq==",
  "xvHcbK71a7E4hmI4+OF=", "FPKy6n6=", "hYDYpHc=", "HYI2", "oG2y0FnW", "uPUXPBUlNLiVRppArKB=",
  "x3FAA+ETVzANFCw/", "eG2NU0sqU/zRv09Q", "x9w3Ru43wHgsWaA6khK=", "567H", "O8AQdpq=",
  "gFwzGA6=", "RZUujzT=", "TXu/PBzAijUG7Byg", "WSe0x5yUNYo5KlzXk47SCk9Zt+calmTvDAi3MGZ=",
  "qoS+a22FJYTk", "LOtJRRT=", "d/Tj0c==", "yFUbT+b=", "OpuOaQwmNVk=", "ht8s3rKleIe92KxFC/k=",
  "VnH9c2Ql", "PKUbPBFyipM6CXuS5c==", "vycDitUWit+JRCqD7O8=", "1mbBDorKMu5BWKD=", "IBcQ",
  "VvEruznx2V3P", "+mWRAISvmHUL", "Ob==", "bTRXNkc=", "tzH0Q4rF", "B0+nh3s9XzprWP/6L06=",
  "vakA", "DBHpZWHftqkT", "wxLzVlq1cvc=", "9xK+mN1pkJ7YU8rlsByUDgzOagrk", "EIeqbmywc83h3q==",
  "46h2xA7+FqkG7DwXPk7g", "S+FEOVMwrNlj", "ltCskyo8CLZVfrgXvq==", "rLzUuc==", "9XvqZAT=",
  "5JCEhJRV7AnikHonlK9=", "Ue4UN3nQ3u9=", "HKum2c==", "+rcOZICmeYdtJb==", "8JzS7ACjhc==",
  "lLahfc==", "eToqkTBnQq==", "OAZFcc==", "sPyIaLO2", "s/Krsk8A", "KbLwWj6=",
  "u4CF57Wo48cT8lF3OC/=", "RbfkGOCrK0ySgecPCoXrXxEHlC3c0eMyYc==", "SI7GB8==",
  "Vgpf7nj6Fe5OR2XdOPyzGryctcvTvNvW", "U2jTQXeYGwwhHKDrSWjw", "mj1B3q==",
  "fM8bNXpdhXuDiKiJvCB=", "rOgB55eSkthKkOMU", "JwnhhcgM/oR=", "Ie44fc==", "hEWynrYGRzxIxd8=",
  "iCUMNtCB5H6er/geiL5=", "VDiB",
  "9K/88UP/ZK6AEZUIrqLfIcrOxEaUNdu2COSdU4bDiLHQn9a2Q2sLIz9hH/Wmvj4UDj2adeGapetcILflN+wzOQNmIDoTZiY5IRmrWcsU197EHZxDLvfNs+TWukcsWySRDhi/fbGnuoVrS3IFe9he16nuJAtzmtWZfDb92G/QHrpsPdy7/egjYl8XiTEOlG+Zi3YqsvHEYuQpxgThtFOixf5xrMe11F6UqbI4fS7CEfATBPTts1at7OoERjVs6g5VfLTqRXSl4GnsSFTiYJCQHZzqjH2bemLfc06DDkGJg/mRFnO9zMACBt5dSjlkSQVneed2m4oRQIrInptd0d8xHVnftr82sBT=",
  "k8qYR2qHqKrUh01LoR5h7xc=", "r5oeTVigPjM4uOqev/6=", "qS5pegzqd5SR",
  "BLMkP98kuowVt0pRC9QnDc==", "x/Bj", "MtZ5", "CUzF", "FuYStaDzEr24", "iJv5CADe7KCXlMudPCB=",
  "cWT6", "peNNSFVrhDGXI85RblKDsCw42/VAGcp2o2MjLEnpBK2PT0nnDg0kWnvqzLNri/Z=", "savKnc==",
  "OQGcTN3u", "X883StRq1q==", "93T3GsHvpxQdjWk=", "qiXn", "rtol", "+/ezsZb=", "XQxc",
  "Ej54zjflfYzyqob=", "JNixHaXM", "id8EuM+kTLgH85oj", "Dq7rcweK//uH7nq=", "vu6zpfhY3b==",
  "OOSZmJ6aBk98", "UvqRljC3Cq==", "hjiYRVoyCAn8Gr+2lq==", "mrYIZc5=", "9q==",
  "mZrXJEe6HA4kwkI4TEJ6/c==", "qrYTkw9=", "p2GS0sB=", "xohI4q==", "uAMWuPnUuVip",
  "8vA5BjX3Czk=", "jkcbq4DvGYed", "NH3KhHxzPd4NCrSZfb==", "m/dQ19QYQK15", "fp8bvBUb8AT/hJhg",
  "oMaWi7CIln3GIc==", "/d47oW/DDZk2Cn7FkQcZg0zWlhY0bb==", "5dHB908s0nD=",
  "vJC/vLCORJCSuLMShXk=", "d+ZWaSWFJLM6ssf1UvXbX8==", "nVGzCMb=", "is/XR0zvyqm01yR=", "Y8==",
  "mzTQ4whzSb==", "+43A", "igs8cqVnDouG3bLyb3s9", "Xid5EW9=", "KUIjJbeCEZrNWKtnah8=", "kYS0",
  "A8==", "Jabtbb6mqq6=", "qgsELppdWc==", "5LMERPhERt+F", "UyPiU9lP/wECrMdMl8==",
  "LOgzeL4Wp8sNE8==", "7pTrqRrrFmK=", "iFvCS8==", "WLLVu0BWxNrhiEwgT79=", "t3iXWFF=",
  "ftI7anSRwc==", "FSNNWq9=", "ceHHgPYd9jq=", "TKAWty/sbb91Bc==", "nUrP1KAImORZ", "CUdxkJF=",
  "RJUUTAhp8Pp28Pi/ltup", "eX23F3Z=", "kA8JlPbnfdu6lVCjC5Z=", "dHzq", "feSYvUGe", "xqbzAfT=",
  "TVvElPeHtJyUhLiF", "GX+4smTSDveuYb==", "yAmNDSde+24qSXvoWc==", "REM1sQK=", "hvhF8xb=",
  "CpiwfHMvfCp1ktuM", "A40d8jcivb==", "TboWaSNiyq==", "vr8ePLzCvKoaCByR", "cFu86iR=",
  "u/FylBCPfdMU7dhO5b==", "O1MTbq0wbmk=", "h0d5z1Dfyf+sgy4+XZHoa8==", "SV30kueWdc==", "1xdf",
  "ctQ1J59SAsav", "SjdG7b==", "KB4b7VWkDwn/1P0YYbD=", "yS7kCrMY21sS",
  "6nJowzVjMde6+GJMXFmZ7jeKEFieTc==", "LoTR4KZ=", "KDmWp8==",
  "O+9q7WoMvangXSGVGuRFpETpOr3SJ8==", "DPcsOHB2mtJShJPBCWGgrCb=", "nXkr+lqj", "8dwn",
  "xTQnKJjSg4qHVb==", "SLS0", "gYuD1QtDE/b2eNK3/dK=", "uViyRq==", "oeSK+xJh0Rbrh8==",
  "2cH49dKdIS217q==", "NLCWrjcnljiBPthVlb==", "ryGeZAFQ0rk=", "MPlOF8==", "GPQGPhio",
  "V8ttfuaP", "J+edEFjm", "Io8i", "e2u6UjvPeRYoi3u2HHNyCq==", "hCVmafT=", "koMd9b==",
  "2floXpVKJKB01U4/k3bN8q==", "LICchV5=", "aEuY0Tc=", "5Mjx5E4ad77kyCsPDLdJCGntf3sI4P9jEb==",
  "GabcB6DbpodFIhF=", "pFCcktD+AcwJfcb=", "2zaI", "b+YWKb==", "7p6yfriHPp6D8JvaTVT=",
  "RJzZ7VgXuPepTAM/7VgO", "J8ztizO/Mc==", "Z5LaBi1/g49=", "+zCTN8==", "xaEQXN6TOb==",
  "kacsSuR=", "14/mc77pmdF=", "ADCTgQ5=", "E2paKIP9", "Ty+WTBpLTPotGX5ORq==", "Kynp3Bdp",
  "iBugidg/5LutT/Coub==", "3LL+2qmEogZ4TL+KZFjm", "nuC68ZK=", "+ZO3glB=", "LR8kYsk=",
  "W7wT0zs334oT", "Sc==", "uLhrlLnjkKoH7Ki18q==", "v9qQ/6m5HC76",
  "Numr3k3rO5szjMF2ukDJVwIDBb==", "fAoZTpUL7Lhildv/vc==", "Mxnmb8==", "hJME7q==", "hLMblc==",
  "4uFisfytPaSk", "RbkTm8==", "8xc89dFnVp+f", "s2Nsj8==", "dqm1cub=", "7PM/RJq=",
  "TFFLuh2Ogb==", "el7V", "KJc4oimSmsZD", "48==", "MT29ogRcdHLdkmic0f5F2fZ=",
  "MW+D4IqO06CHvexlNFT=", "C/ufGb==", "Aep5n8==", "cb9kCq==", "nryN0FhL25YkUZtdQ5K70Z6=",
  "di0YKq==", "AkNN6Y5d", "rrCK5rvmNLglC/or58==", "+HFi", "utU/TAMjhBey7PCElPir7VCSuBpK",
  "ijhnPdCRrMMe5BUWTq==", "kDhs8HhdP/krD6Kp", "PfqxmkKbiaBI", "pCAavxB=",
  "RJzZ7VgXuPepTAM/7V6=", "WdyO/hbMVj5=", "Zs2+Ojly3Hms/Qkfe0MvdM1GPOuoC+ZvegNzG1FxGb==",
  "hLMa7L5=", "WC3bHt/=", "CBcGp3yB0TOs", "WZUSmcXcgR9=", "v3WocucI5xT=", "O7YyfmO6ptQ1Do20",
  "eM8o0XuWH9xHQcD=", "uLpORJzEuc==", "B+H7vl/=", "eGbBHU9=", "8VgpRtvpvLpU7LzH",
  "ZiOk4VgQ5tB=", "HH9tDotsrO0C+V7B", "gpiPIKDQz3B=", "lwXotbb=", "EdqMenc=",
  "snKZl0dzfo5Orp5M", "OEd0VOIf", "ylZGnb6=", "RJz2RAM/NtipTAMOhc==", "JJ09CniS4EJ0QC3d",
  "Ej2jfb/=", "K2wb", "W25SLc==", "ssvulbG8NZGKnfdzbrR=", "dKKtWg6l", "ouBGZgAZ",
  "B7U6bJZVUeEeoAkpZq==", "/K8S2wgZt8+3eN6FLS0Ivc==", "qPcLEjF=", "VniugUtK4pk=",
  "sqM51ZY9gPq=", "00mc", "SPBftr0mWF/z7Uhz", "lUrXTit1", "1iah/k6=", "fKpg5/o8l/g2GriM5JB=",
  "+gzd72/IYc511fq8ZcaHiZeYDs+xyWAVT8Lud4lLbM/=", "D9Ncf8==", "s3GU+qHvEL41n+xL", "L/PPRb==",
  "8BkSW8==", "kyTe5/vnhPC/i/BOhc==", "xq==", "f3Eswb==", "88ugV8r4hril0c==", "MdniG8wc1dgg",
  "Q/J6bZoDyrniRgc/wac6yFc=", "lXw658==", "/yf/T8b=", "1UE0Eq==", "vl/Nf4c=", "PueU8NYU0q==",
  "jKR7ogxrt7Nz", "tauanb==", "MreKZPeFwK7y", "FzuN", "c1IeRdMpvxcqIRTOd3BXNhGB48==",
  "9CmAm/Z=", "/YPT1nF=", "fMiURVU5fVREuBMYCq==", "5KBbuXM4f5zbuCgRC8==", "FNz1aj5=", "1q==",
  "8VgpRtvpCJpSuLzV", "msTCvbk=", "Zb==", "7+ZG53vST3xyxhWXRR0MH8==", "Fa9YNs5=",
  "hAyUrtCC7t++kjvO", "cr/55EJRQ24Y0EY4gX2i7yXScWn6k8==", "ks4vjH69", "12yRPq==", "5p4bRN8=",
  "5HlyGq==", "q/1mqbhCX8==", "eJhYi+DvVhE06ab=", "Mv2q7L9=", "9Sz9/I0dN80OETlk",
  "Nv+K5dB63q==", "5JC/fPyUuJ5=", "jjbp07UUdb/EP76=", "67Q4Ts5=", "wImRfbrPmWAyQ8==",
  "TNH4bxT=", "IRkRbWTTErle0FeBGDB=", "Hf+jGQUjCAcw+c==", "8QK++uk=", "O0gPX1T=",
  "xmf57QAeqfzaTLBY", "sT7n",
  "2HYgeXgo+s1Wtyyh7WIkbQkrrjIHCF7ILMwE6ajOb4eeKJeUrmF25kb7mLDrhLGa",
  "akS2BPilMtlqBt/ipcQyXOSdSIUb90GUCz7Jrc==", "vdUuTKvLNX+18rvm", "5Lh6PBeWTdio7pv2Tc==",
  "KqLSBaD=", "BvYk", "8CCBf5zQrBzd85nQ8/z1rBv1C/D=", "fMgTni0X2IsTa0hxdBwuk5SU6xSlgnBkqvk=",
  "AwzBb29=", "Jut2yD8aXkkFlZGfoPW/jdK=", "cc==", "eDfe337sMe6=", "ESKmiLb=", "bL3gfr97",
  "08==", "uPnZlPz/", "NNcD/iSlb1M+saF=", "PSZx3mQms0KAi86gusDuYc==", "QEqc", "OOxlxbq=",
  "JyVmw6+qSc==", "uJC/utUpRVC/7VgSRPyp", "bNfWaawREANajaSdvA6Zunnt", "iTeB",
  "1gXEb/V+TwtVUHRJLT2TBwvdigJL1b==", "Z7yxBc==", "Hu64FDASic/raOq4NcFMKb==", "m6+JdP5=",
  "8ImLMb==", "e3cbTRDG7hZ=", "naYGnRBHPMg8lmJ3G+kH", "uAMjlPeHTVCEhApJ7VgO",
  "YDhv0/JvmmZeu/jeGvWLCb==", "MJP1gfjF6qBU", "LMe+rhK=", "5Lzo7Hv57/zalACjhMibRPip",
  "7LzVut6=", "WO3vGZT=", "oYYRmzp9", "h2733tMGUq==", "VMIYgrR=", "k1WWdq==",
  "iP6yCOpHRV+iuCp58b==", "felGVz6SNjJ9", "oFLT4zR=", "fceJfdjnKZ5=", "ON5LnQ+O/c4VppD=",
  "CHEoc5ws75F3GzvJK8==", "fl8zkmF=", "DnnKHTce", "ggONEoWbdq==", "/hcj", "ZA5ElfT=",
  "vLhkRJMnNAgw85gyNXT=", "MnuWQwD2uLjYp7iJKaL52OCUsHeo", "XnPshPcdm3wmbAB=",
  "TLSWiymzMX89lfhJN/9i92mG/sE4s7R8aZAr3D3woYyfkQ8Ut9jJpmD=", "O5EhsFP4iXvs",
  "7ivkZMdb8XsZh+q=", "QZIsRonPRWLRiduJ+kFWHjrWvXtKkc==", "zc+nDq==", "5guPDwJc", "gxv5",
  "wKyzyJ5=", "gG4IB4zD", "TKmml08=", "SoK1Cex3PbUHRb==", "IfazLJSBbY2+e3BB9c==",
  "sVAJfoRwjZ7c7q==", "uI6cqQnYYq==", "FXTyRHuTXcOVLdzBB2agwc==", "7dB=", "Talg97XrQEkd",
  "sfWoWKl5kpZG", "4aysBRR26t8wolLmSboa", "HTGuCc==", "ISZu", "uU+QKP33YuK=",
  "zbbm27gCNrBBkNwMikT=", "vdnGTv2/gETJ8bB=", "vJC/vAzjhtipuMvpNXvs7Vq=", "GV/3VgjhOYF=",
  "udHW65pG3hXRfagU", "DpCyd/5=", "1qTQpi1H705pbdbgnSC8ettoACNp",
  "uLHvmzpbPziBou5FmWjbNYaTySgtAXik/+ZAAszsx2eWqBFE0wYJOIgVS/XTWd6MrjWWbPss",
  "iAZAtdt208XvR7c=", "fdmXVD5qMwx8LI5=", "XcokcfLZeWD=", "F1EM/b==", "RKx8E8==",
  "qWzAXjaycGK7dF2B4oqfSxsxaSEPrb==", "Dsjf", "9Vmz3GcHcY+b", "kjZG",
  "VsmIyrFGHDUzSmFfgrHACuI0Sk9K2TO578rAAPCmNvD=", "OY/+dJ0351cr9D9ltq==", "wOyvggR5",
  "HCqDx9R=", "wIkOXPc4Rq==", "BvjLQGdW", "SGawC6KJyYz0Gc==", "LJnYIq==", "YwS9",
  "TjlZEq31pWD=", "OL6ZUc==", "3t6yo2jJXptNjoSYgpq=", "9/h6izxxDJdZk3JsqRlJB2Kslvgb", "+e89",
  "jeJZEU2IR8==", "tL8SFHUsx5nb", "cj5nlfvjbQQZ", "NL2+5Azjk/hXRPek8j8=", "NBvsRKCnrAnelyFe",
  "7bneYXgUJNUv0PzX5GDedpyb5q==", "nMghh+2BMub=", "xYeNXR0s", "xJ5CqylUMfOt4q==",
  "4L2/SNbWvW8lQ3SdGKfb", "oXx5ol6=", "h7m1PjE5", "GLvwlpBnPLuPf5Ui", "uVY6TzLos/b=",
  "9kOPKYgGu5466kk=", "FwPwCP0Z", "8Jb//o8JVQsK", "3c==", "JTaibJRKmb==",
  "m6V90LUyPEuobFfOKhnCDH8=", "Z4WH", "5FB7", "tmmpBzaw11bl2DJo",
  "Rtv/uPybhBgZ7JiWvAzE5Jzy7A8=", "hGTUh/hdGXXh0/ybx/igrn39laB=", "rHIRva+huZswUGnWEyfbyCin",
  "3bXDdU2VxChr", "CLM2TLCE6BvphLCjhLCK68==", "mGQrZlBgrq==", "wegwxvpnbh9=", "ftik7JMKuP8=",
  "vpvl8phRR5orfX+JTHF=", "EerHYqBM4fR=", "ib==", "3WgLu/4Yn3NB10TCLf0Lfia5RSf1cRHHbTNKA1/=",
  "Cc==", "hPg9sc==", "Mi5oF7xpwTV1EKg6/1qLXbZ=", "GzzdtgilL/1GZXnyNx9sBwVCI8==",
  "QoFmUXDk5WO0fq==", "NC+GNtCeTrgfGM+Mk/k=", "2pIGImzFTt9kaAKmkKJP4q==",
  "eylDkwmXjewTKovifPOmDOJrHZc=", "uPCs7OMR7CC0lyoEvM8=", "CyosCAeSuKzVldgvkL9E",
  "utiaiKnjhLpS55pnT5T=", "XawrJylbO18s", "G5zaiMv05pun5AynTq==", "xRj9pinf", "UZ5sOq==",
  "o4YV18VWTIL0DhT=", "+e9Pfzic7lBnBxKKwq==", "i+7FNNsjx+k7",
  "rGzxZ2VKJ+PxNZS0CQ9R6JV0tqhM/v1u", "/EFMDW3l+B5Ga5X7oTMzYsGEd0eo", "lAzF7Av4u8==",
  "rxEAxUk=", "ghB2NvEIwb==", "VrBkRur2qbMVWg6=", "vXg4TLv4hJD=", "ZheLzIMxp2G3B/0y",
  "ForPav8=", "1vwTp8==", "EN80t2KEVL2oPAv39yF6Xq==", "hzeWWq==", "gkiX", "3VdRauc=",
  "7B/aySjZlMgk809=",
  "KxRuFkbmtMNipBugUTPVsONo6ZtJYjGnFBdJ7IX4LbC6GnaH7jaFDIQXD4JCLP1gh2znifDg/HCGp1/Oagb7xuKHEMcgDdEnXDApbgqu8pKUyqqErDU4g/BYdUNaK/KErixMkFy2wc0B4ZkOEV8=",
  "QQpt6x/=", "v/gFRAnbvCiRlHuAvb==",
  "o2LJCSTFUue2v0krkAW+V/6GtmlwqIjjenW314QqWPqcf/mgvsqPyb==", "rBzd85nQ8Kn18/2Q8/z1rBv1C/D=",
  "WgOwddq=", "guOPdb==", "can5qRcuCCF=", "ts2A", "RSBMdtp4", "MgKv1iqTwbP4YftU",
  "/sax+IISkXFYXuT=", "lLz4lyi4hPeK", "MIpV5b==", "o/HO",
  "vaAys9srBzdK7ZJ0cEAhqRwHIk/dcjowRrlet8==", "2WLYrIknVALyipGKTFIH", "fti+", "PGIB4q==",
  "XYDGRq==", "QYEs", "Xr2mIcvPqiwg", "IWVsE08yaunnuzMjA3t6", "yHmv8uQox8pvz8==",
  "c62Juhb0fKqKzb==", "qknYIdKYTlk=", "NCkk9q==", "vrRsClR=", "krAfQc==", "RjuVTA2DRtvLPLCB",
  "hd63", "siVFlfJew4S3X+kq2Iw40H/vFkqhLt/N0+8=", "Xt5YrIzbxj6BJQ3N7umF", "Uma3P/3F0b==",
  "brVgUSD=", "66+xI24MWOFwpE0nsIxOMX1AeEB8qWba1vpxgUEBukzZIq==", "Oz1yY8==", "KVwMZHfvkBT=",
  "kAF7Hc==", "8JbEsb==", "f/R=", "AjC+SGaO", "FznyUp/=", "SmE03FA0", "Ns6qGTT=", "3Zq0NHZ=",
  "HyYJm3j4ifR=", "aO/OOqWB5QTqub==", "l/FN9hD=", "AQEU3fq=", "7+KFIb+SfOD=",
  "YjcYiUMHlm+92Dv30EKjY48NaTIrkQZq", "uJC/8JUUTAMjhLCEvHg475vpTJip7AvU7H8=", "2mvgfLnLnTc=",
  "TL7Tuf5GPRsN", "j8za3Q4A", "kK7qBOeisq==", "Lc76z8==", "vxMuuqYy4oZdEPr1y8==", "Jc==",
  "jnaz", "4v1vOgv1qWiXx10PFOX12q==", "/44kbLzF5f03sB2/", "MktrZDiHH8==", "LXKi8jT+",
  "hnB0avC+AcGfj1oa", "WSAul+1kKVU7", "3GGySSc=", "dxikQEq=", "CsLsdDk=", "7HwNBb==",
  "6Ttsb8==", "PjBOCjpAuHBe75Mg", "UFR0eq==", "oSjh/c==", "M4wzFABo3Zgf", "9AG1ub==",
  "aBcl6U8zFZ3S", "EyjZIz2hqzLD6xB=", "MqhweRT=",
  "msDBH8TkgavVW6+MHG+8ghAexIZjNVF8Bd35l5jU7EB=", "CY7i+E9hLBB=",
  "c4dxw6mwhgeDoES8kAnowke8aD8bqbbGvnc=", "TJDdausQcojFMfAM", "C/Z4Yx5=", "vLCOhXg4N8==",
  "ye01YiWz4O+lbHJay+Qs4J/=", "GPzVNLuDhBhohpvMr/q=", "fHg25MMFGMpWiJea", "GjAfgvqNm7T=",
  "hcY7", "YrIT28==", "HkuRC8==", "GgTXJf+qM2pck0syUTb=", "RJUUTq==", "kiOnfb==",
  "qMArSmgDVc==", "wElfGcFsr6Sn8EsCTc==", "O2AtsjHY", "GjznOb==", "vBRe7/5nROM1P5y+5b==",
  "zoWW7tYE", "3ykd3bKjkPFzTqCQ", "/wtBRQMvD65=", "/PKrTv8=", "CheQ", "4z7wO97a", "vPey78==",
  "hH5NMprnA8==", "sF03VYML8C+K", "sv4dbu6y3W4ldnEK", "UxlRTV4wK8==", "6ipaL9MkBN8=",
  "VEog1If4R8==", "Fa0lx0kCgRWNrQ4GgMhuKc==", "kVt6w8==", "ekERBHRtvgc=",
  "ksEc+ar5/2uCyJZphNW4TZAUNTqwiISqj6e66c==", "cwScf+c=", "CeDH54D=", "b+Pf",
  "eavqjzHRrJwQArC9X3J9zDSZaQnBsc==", "AJgjZGcuinK=", "CbkV1I6JzZ/=", "s+jpwOckdvq=",
  "Mzyid1RFtFQU", "3xnAqu9=", "vyGSmiju", "rAz/lPue", "EhPqY+6Mi8==", "6c2Jo3Z/", "WazJyq==",
  "W8MjJufLuS/=", "sjZHZM1F/XMI", "yNAhaJgYNWzz6+6=", "uApEuCgp7Pz/u5gZ7JiW", "xOjAME6=",
  "L+o+R8==", "/lGvvGiT8b==", "j+GW", "3r5TwKYNrGnl", "K9oOUkFSlFFJIb==", "2M4CL8==",
  "HLJStANH8B1mauzP", "5G2jVgy2", "an3P2iZ=", "o3d5p8==", "tpx+Qf+JBn8Wh6/sZtP9fMxkbq==",
  "pFOGo22HJRP8Z38R", "zJjclJnd2q==", "WOn/Xc==", "RJzZ7Vga7Jya", "lwDBQ5D=", "Uu5Hgmb4Z1F=",
  "A+NpgB5mxq==", "Kjkji3aT5ck=", "ef6m", "Kv+mLNac", "k5o/u5uWPAzWR/gt", "ROcb7L2ouL8=",
  "T/hErH+mi5/evCutRyB=", "9fqLSM0D", "Ul0IKsHsv5eM", "d4t5jUR=", "S9x/sirKxhYrs0llTq==",
  "X4FgqNP/6c3rfhvepP4L9M4C", "7DeP", "6/h7", "vJC/5LnUNPCEvHg475iFRtgURVvpTq==",
  "vdUP7VvPvtu/8poE", "D/yE2sb=", "i9Ywk5w/Yp+L3Z8=", "AHleLU8Ifv64mF3dpwb/0VF=", "zfyvf4R=",
  "xsz2MU0Se2PNHb==", "hXgURJ2kRti/CXgouJhpTACK", "OAWGPb==", "A74fxfc=", "lD5dulR=",
  "EeVvXPXC", "OlPcD8==", "p+MNe47P9TJ7dbgZZRud", "/JHwv7D510Lm", "Iw7MM9ZTjymFezWO", "9fYP",
  "ZayPrQ3tzdePDb==", "kK8c", "fdqJ", "aMtC3bB=", "csmy/QHwTKxXwV6Y5/hzVq==", "52jPPFusF8==",
  "xbZN", "KkbAJHrC4EaPYywY", "4RXUAHry9/pvnciK8Om9gwSunezvac==", "uBuUr5pnGXh6Cy+f",
  "sPLKU69=", "ntS5", "VxUFm8==", "5KpslpvfkJpLCAzEPc==", "hNLCHqyIb+5=", "u1W9Qj68",
  "DnCn5L+2n3LfzgBiiCoptOj+CzjxRmIOgVP4h5fXmb==", "rpplYREdB8==", "LaPCNyF=", "PMlQ",
  "8rGJblTFWfDwluR=", "dxumqLbdOBhEka4Zc8DLpXirWzNZMcqDCIoc", "4kdkyZhH8PSDdxzE", "PhUK2+b=",
  "VUxhX6Xq", "bAci9GQyLd9=", "w8Bt", "CTUnmg6fI6OUz6C6", "CU1awa2bZ8==", "FOOG6TLiH3OUhb==",
  "tpf8KoOd", "3f82kz/7vnqS867UWq==", "UkV42uJONiyqV8==", "G3ZxlpHTxwb6aUCyqFELmDG58sOkQb==",
  "DE5VdTrrlF5=", "eSeQ1S+H4RT=", "xcpcGrLQkEuIXpdAPF9u", "BMkft3Wer8==",
  "BuE41QZR7xe12UtNk1R=", "ILcbIEuX6in8EbLH8c==", "RIve3b==", "Tppe7HuXitiFCtvE",
  "7Vu2lM+fudguNBvn7b==", "/sOrGE7GW2K=", "8tC/7y+y7AiFCLMa", "zGif", "n264W2xmrpxB0+i6",
  "3c2epLwMfXfXjoF=", "F7nzOEwWXqRRfzD=", "Noz+ib==", "xutgobNjmsEiKjW/zsH0LB6=", "j2fslQPs",
  "kF9n", "yQXf", "pGGJXvmaS2wJ", "/QvI0Rb=", "nVA4l8==", "Ou2yIWR=", "S22x28==",
  "lnVWf8Ko4u6EodCFac==", "CaBEQeXzieR=", "e7Yd1q==", "Q3ZqixqN6CPynsYm", "4//iYd5=",
  "9lKXtt54", "kJzkrHo15r+8hJCP78==", "AEgid8==", "vYfutq==", "OMQqPCK=", "p6EQYqeRFsq=",
  "bRrKn4kxW3g/Zs8=", "NWgRz9HYk8GMpS1w32PkNQD=", "sqXRZUfnWF9QdPVE", "tJiURJUpuBgZ7JiW8HvS",
  "MUaNbKRc", "7PM/lc==", "oqmBClD637AZ", "8NQkHf9+XXvh1XuHVq==", "TPe/TXMl8JFEfJpj",
  "G4byxWk=", "Waf/MZ2+iwK=", "GHtzhiYYF+/SWxZpFZ8kp8==", "nhKJbACYT3n0", "JRn+ogZ=",
  "uLkxhoB=", "z5F/M68W424VDGZtvYf3AlB=", "XHjWkyvQ", "FmG9dnorhVKxms40B9Z2IgLzJ2cPUt++i/eE",
  "DUu77krY4lfyeDTt", "sbB15ad2", "cw+nDe8r0ZjhFmFSYF4d", "tod60pXFGSIvUq==", "qKsd+CwG/Z6=",
  "+FSZt+8zf/wYvzxRAA35xfWPnHpcBkQzxudOwtqqCrkTt46r", "tWV7cyfUbEFv",
  "hbt8yHwGWSwu2MiMNVQQez10WdVelRsntrCIHGHZq8==", "73WnQkq=", "34+PyRB=",
  "KiKpW575kUEYwJ3Px8==", "VV77fejCeZac+4A7JKJ9rNWl3c==", "AbE0X8==",
  "8dJYY77yVbHN4o9gbUNbzF/=", "57gHiLV8", "MNMKZums7q==", "Q6f9hqnGYsMbOF5=",
  "5yjSJ80ieMKtI2YO4Y8RmrT=", "94dEnawB", "JPLt2VY51wCxrMM3BzB2Vb==", "fvyu", "FIOApWM0",
  "R/hbuBM4NpiFkX+ukO5=", "5rFlhV2kQmUqWMld", "XfQ1UReN5aIlZRR5lb==",
  "HeOSw6Orj1yq8Xe5PhN5ahc=", "vc==", "RCZNBAyc5iTo", "TVo08KvJuHp5vOvf", "esBk1qmhKt9=",
  "CkVsOIvU7LYl", "i4oIpmtFvBbf0sF=", "568antHxEKQcttw1KaCY2kh9eiE3", "fPAiX1OF", "sIbN",
  "KKXzp5Va9iZ=", "hO+m5yUAvPyP5L9ECq==", "Prpn8JiurjhXNBMU5PZ=", "75bOhAZE7Lu0lphV",
  "24Xx7ZR=", "TJzy7Av67JzWTb==", "JYXf", "iGn1", "Y6OBeq==", "fVtA",
  "VoRxkE6Ula/Bu9KD2UexO8==", "yJsWJOrOpq==", "6zt/MUQS7kqz6qEIkg2VWLNgH8==",
  "EsfKAFDjuWaD/8==", "AW/eWtM2HdinWwsjoJ/txecSIkC0IqkKxjr8RVJ7Umo/LTNycEE1FcT=", "7GtjzZq=",
  "IEI507T=", "7SJpREifjmtHukbbcBYvyb==", "CJgJ7/gaudUoPdibNBB=", "7dbgOgjsLRR=", "FhK3hL+J",
  "gyduleUGcSbBUBCmPsK=", "7ozaWn2Mzb==", "ntK8",
  "yBsVYWb0/I3Y308pXn8Co/KjPecb4Ymz0KNN8WZtRG5J6klob1t3Xdljwkgd", "5nVjb0wPyiShmb==",
  "oxY+KC5=", "OCndv5oHOnF=", "7p7UNLhQlygWPVHIyIdNhb==", "JrDR", "/CVOAq==",
  "RpvB85eSk5Cbh5iMrb==", "GPekR/pukOiRRHouf8==", "Jytf", "p5IFqccv", "2ANs7Mk=",
  "3FpT1pkYAG5q", "RJzZ7Vga7LzDN8==", "C5UthpcECAivRrvaN8==", "2boo", "jox+3eJOfWD=",
  "VlERpfJfDx6=", "KzXyHo4JgODF", "uxX6vrnxc3yXlx/=", "6m1M/JRjigwCsF69/qMg+8==", "4oHKMfK=",
  "vHCifMuWuJqb7Lu85K6=", "QF0Wfk9=", "swuPhq==", "sK9jUDLW", "C741mDp6wSF=", "tjK3",
  "jBh6QDFN7Zk=", "QY2+", "5rwkuwYy", "5+37vb==", "m/cuVygVA54Z21UHv4Zj",
  "TLyGG5v6TdvmvJp5l/Z=", "/7GmYxVAVl/8AUqJiJI967deZb==", "lnM3J8SyZ4Og",
  "iji0vPB/hKyShL5biX5=", "u8TtAvZ=", "6Jigomj67Po9", "kc4VqPcqRnAQ", "mtufebBTM1V7F85=",
  "tyzHRb==", "VFUoFIasGBD=", "btNdro9y6FMf", "RACHlPeBTAMHfPe/7/2o7LnpTq==", "GD2n",
  "iJyJRJbVfriMGdgM58==", "eb==", "TMopfJiRhCvMG5y4", "7IWV2YDk+c==", "2XJG8Pb=", "8ayR8v5=",
  "RVuK7A2ihKCZkJpR", "IAvi+cL/rEkdFewgfWTZ", "LdCkWAx+6Gq=", "9yat", "ciZTxFc5Vzb/mnjMRb==",
  "FRqrK79=", "HkHdMR5=", "jPlUxggzuEyz", "jzCJq6Pe", "VGmy", "bRZ5gc==",
  "wiQChCNQssZ3WtJkf2sjTvfyN8==",
  "rpMyA2op0J4EqmV3Yyt88GdpDIyNl5+Y2xZuDp0MFTH7yvcnFmWZT/AqnBBdL5F=", "i2m4bm/=",
  "95yhryEELkIJ6VZ=", "ek20P0Vn", "2H/7Oh+xiX7LAq==", "Jxu6tm6=", "mhHkwGz+Pt6=", "3kpR",
  "CdY9", "NoOi", "hLzOhXgo7AhQ7LzjRPb=", "8dvn", "QU3b2r88QAQWsG/=", "vnbGs0T=",
  "GgW8Qy7wNVB=", "zVoTd4gGeX9w8yDbsEZfdS9HPib=", "vMgYkMhgTBedujuRi8==", "cCd/", "nVGHL79h",
  "UFrFac==", "7Xq+3Lei8TGteq==", "Fftrzcu7kU5V", "TNThmwC7zOML0hRW", "ziOfOtR=", "+wHR",
  "hP44iWJ3Qb==", "q8oL", "/cevc0R=", "unOTAeKnfc==", "3rud/H/=", "CwCZgfT=", "Ft4O/gK=",
  "eFZFNfxSXt1e8aVk28==", "s/Ebtq5=", "qk08U3dnkJdQkq==", "7faaXaWVXsZ=",
  "zqlb8+LRJ+2sdtwbFnPC", "txiT+sYLVc==", "G1mQ", "ZZys95Xv7Qk=", "REWfJ8==", "aPSYj6c=",
  "m8==", "JfgxMrRJ", "a1ZgNzhXOb==", "2g/1+h8=", "9jrx0/pifcEO0e+ewVR/w5ue", "AoOrRPT=",
  "zXDT9vGt+eT=", "ypXQ7hRKXGhv0b==", "", "JH4qBeOTDq==", "DDi/GuREV88=", "I/C/",
  "8EDPtSYaeG143I5=", "IN5sMc==", "pdeuSKczSYZGKCWy1rcA", "IOrc", "n+fTIWZwLNQhkiD=",
  "E6fx64/=", "9QoJUts4KpiainqOZ44n2EtIX70aM3vpuVX0", "b7KaszfE1HF7svYMZTJkz4tGtVZ=",
  "QPRGgtFfX1SGNu+9rAq6cq==", "/Vk3sEZS", "OdU2K7aLm8==", "VXv9L3FP375iok6zpc3Vmhv3/1ZsPDq=",
  "pnpvQ+pE+b==", "SGow8gVY", "5/z6kMgUiJKDvPiP", "rIzwMcSNFY965ouM0FP1oTCsskfY", "kENO",
  "TARO7OcDvJCjCLgY", "/d3fzJdFLeT=", "qlXlVnin/eT4qIfphp8=", "1Zz4Km9RCrYGaiYmFB5=",
  "zCaA58==", "zR3JVXHbJV7V", "fzlK", "lPok5J20GCiu5p6/", "6ZjFfbFIrq==", "9xrIb8==",
  "hrv25BoArCU0rXC0Rb==", "uAMjlPeHTVCEhApJ7V6=", "7iPr5FKeMWTA9l655b==", "5l5IDoq=",
  "W1BgtUpvXc==", "Bp/zc8==", "Oq47bWo9JEc97q==", "4rjfZWttqujG", "5b==", "UfniAUMZgNz+",
  "rDV7", "GPRbhKCVlJo65Lh1", "s5R3L5CDxRAiqhzrC/F+KKT=", "ZqXi+wYkO8==", "ipApJcO7",
  "COueTdf/1c==", "S9xGqZXyFIdX6SBOyNfG", "7dmStuYcT+7V", "xi0B", "Oevw",
  "Ao2o2MtpSP7Y/UvvwBYHhQKziVVjvB5=", "6C6SY8==", "KGLG/f+bBdfLrc==", "vNtK6b5=", "a0ccfDc=",
  "lqRBNs8=", "MWUaYVjY+9q=", "DUTrpAub", "P/wlB7BnOrOYBYot/xwo1BZu",
  "N/+YAUQzbDVt3Y47MoEErmD=",
  "QE2VX+ob1Lj8MqQTqdVzMVBPihNMQh25v34zpHSIWokTQzLbN/esnCkQ+Eq68L5afXvUiZ1x7qnH+WAoQpUbkXudA0URHZe2k95IWh2V+DDTS7U4f26oi65bd+Zsn2Fq3yksEAiQvGj6LglqO8==",
  "qQAnVvxZVbV4fob5Rmz8PeZ=", "rria", "uAn47V6=", "knwiLlZtcomKKrn2a8==", "+Maojn1ISBhr",
  "8AkeRCptNXUGiOMD", "OdG7Vdq=", "GI0J1bw1Z0mU1k9iUq7c2KR=", "Idugdb==", "4vP37CF=",
  "k5vAT/oBC5ekCdiO", "vJ2jfpCAlCpJGrB/u5b=", "AlQkl31J1jvgP7rBACbYNb==", "5pUIG+FmBv2i",
  "hjvElVgkkADE5/CUh8==", "JwmRMSAEfaef", "p9UOPlZJ", "kiJCLkB=",
  "XUaubFSnoNl3sjyuoPsS4akXccHrSAae6UVyQspGFtxpyh93nF93Yt9HM10EJxW1o/jan/AKF2FOO8mI7JnY4IeZc4x0JzhKzIC3UwqRAT85/W35ZfmHJCe85UUPDJP37xwj+mMikkvM7vSi4WtoxSGLS3n59IenrlnRPLr/rREAfyJsDCbnOmkjpRtJ/ixx4WbBXNh+rug/yHs99QS6bjkQTm80MsssNltJe1ji0yOdCFjhd2ikOfNme3HY43S98O2sGZ50LaIG9URCiNlDtflJBhDAqvxhbOw0nRfuu9I2+zMCN8II3oXA3UcykvC/jfZ=",
  "r0ArUz5f6wq0isdpItBc", "puuO5zKAqE/=", "rq==", "NNtWE9ynBp+rnAG5",
  "EEMe4jfdKeoSZ0obJ8tFRV0J+jsAvhd1dcZ=", "WYjszLaiPy00Ii0ND2NQTT+2BZft", "jENaIZq=",
  "8A9EuHRDlLnyNC+ATb==", "tQiw", "rSdXCMSLW2jNGNPfpywI", "BWrjalD7HtJ2/ta/ZcEhwSVMtt5LG8==",
  "iibwYgb=", "UiZhUqyqk8==", "wJwNIaE+18==", "V3FKdyR=", "DpyiRgQiQViwT8==",
  "BJMegbESLNXaPQSTkKvdReK=", "COH5WXILy9KY", "tXbuLBAaFVuz", "97WI7VCFrb==", "5MM2W/bGfKb=",
  "8HC/hLzS", "V19OB/7uT8==", "kndIVIUfWyb1M2E5WhM2f8==", "o4aM3GGXZlG7VLGb6c5p4CNO8vk=",
  "d1AvWsB=", "iKRY9kzF3GQ9rKZS", "zL0uovLODRXxBq==", "HCEf6cUK55ZmN0b4FV6doqub",
  "RAn4RJ2/RP6=", "TLiRNpoAkJhovrBO5V6=", "Yy/SqNVBgU8=", "/7ekjkq=", "DDGC8dclWenc38==",
  "uApEu5hyl5iZ7Jep", "tGeInsLy", "DHY2Cj0Cw8==", "ZDnrmc==", "85M6YH0fxCWB", "ZeJp72qtac==",
  "RJzSRJM/", "/SRlMqk/QonfwTKeVW9CDbRiQ0tm", "KaBQDybDA4IP925=", "ZiicR8==",
  "NrC0iAh0CBkn5Avpi58=", "+wqspK/=", "/nkVEe8=", "YT/CCzDmAd5=", "Ps8yachnqeLsca2E56diXb==",
  "1hKIvb==", "rX4eToOmGnla", "f/aybkRl+b==", "qb==", "8KuFlPkJk/hRRK5yRq==", "vRy1ac==",
  "tSoc", "YGsrcfaTe/jo", "Gc==", "5/pekCgD5rCCr5UflJD=", "6cIhBgb=", "0ZfNcAhYxq==", "Q4FB",
  "uJC/rACUTACOhB2o7LnpTKy4uLCZ", "fHtd0traqMViac==", "IEEcva+uOb==", "tX6NyVK=",
  "fjw5J7x6U8==", "5w+i3mjGdhB=", "MCGF6c==", "1rJQfsl2",
  "isrDoVlqs+dsoRl6VeG0F7EZqVkdIadBtZXg9/1YpDyybOHeXg01oUXvDMbvcpdXXvyx0a0mnKNxQorNWAxsQSlgC6+hbyUR49PyM6r2kq==",
  "rpiYPPhE8AygP5/Euc==", "jEppP0Z=", "fJCeRApSuc==", "vVfQFDT=", "IHvZMuq=", "oYPvMq==",
  "lVuoTJp47q==", "+vkRLb==", "kOVgr66xaa6=", "xgwZW3jsbh7X", "oOOEROOTkZqLRvnFGy5=",
  "CXhpuPeg7Au4", "iJERAq==", "QurtjkEP07ho", "Mn/ZXCVOdMLI", "V7xur74b", "dJcJx31cx6XT",
  "b1Lp", "8IlCe3n1", "f5URG5pmP5iOPBei", "AqABJDdRdO28ypA6rdPvjlJKqs1Gu7qIPes7X/q=",
  "2s7w8sHrnoP9u8kY", "vI2PlIph3lVhSnTo", "Vl+kC+Q1Nc==", "UhcvXU15u6DJZ1CKXc==", "m5BC9wq=",
  "cQaJTa+lQc==", "fjYDxfZ=", "HrmmbH34dc==", "i3k8tiq=", "rJ9BwlvEoc==", "2x6hGa1VsK/=",
  "JZrk", "+EpFwVF=", "za8xVg3SHM6/", "Tb==", "PEJrDt4s", "h5zKkLCb7toO5yoprc==", "4rkx2MB=",
  "uApEu5hyl5gZ7JiW", "Y9ha", "Vp97H/b=", "5PA51d30z7LS", "LlSaRCyKByR2LSXH3lYV2fNv",
  "qrROJanyT8==", "H/rkJvFcv0bf/NB3IqSAHq==", "5Vv4Tc==", "q9nA", "iHi+5PCRNXv5hr+v5C5=",
  "7HiirZsRhEeFzc==", "uXgUuyi/Rtg/", "06+fE/VTOgsnMkNC2xCBKR+SkhfDZJGykouLdp+Ri8==", "Mtqi",
  "oRgrFeqyk13YUqJKPbs1qq==", "kedWsjAIiDk=", "QHcaZn9=",
  "B6uoR+t4T80pHAnzrR/7d4My0ECZulDr2b==", "pR5Qy/K=", "3W3kPYUHbD0wTb==", "NvkkaWUCJaZgxKT5",
  "NCoMGr+giMv15PMYlb==", "h/6nlc==", "Gqk0", "xjiWRzFXp2oVWb==",
  "MttmzPO+APir1RpRr7hWcpBPHrCs23x6lZkyG8te+aPgF/uuqcmyNoll6qWuP0kAGDvQ6+iy",
  "GPULkJzf7BzUhB5bhq==", "ke/dyBrvjHRN", "W/SYsc==",
  "o4yC+Fg5JLsKxg9y9AbvyFpKU44f5wPonQU6vUjkXydmgG+RivjnTf8=", "O591evlz0ct8Db==", "BE8BOq==",
  "2CDwXFGOe4v+xaNAtb==", "gihyRYT33H0r", "eRyfO5kFIe/s4oH6", "iszeYk6=", "UhpwGPmmeH5=",
  "/P6TGDhrHXb=", "TccFwmD5D353", "fdOL/8==", "rtimCSGl", "bAMaaU6=", "OC/isVzn88==",
  "lAMSutiO", "zMmjejrJTmlQVb==", "q6rpnb==", "d+PSuVTw", "XGM/", "iCR1UC1SSc==",
  "lSNztEoPVMRVbaiv", "KUS/IEHRH8==", "WG+CZ8==", "rCR39KxViPXWcMWA", "hxYQerEYkc==",
  "QJAoca/=", "bkCsDcKQFkf2", "+soN", "BIRlh8==", "MTSPWZA7XUwRUxc8M8==",
  "4fI2cEL8kFGg+RgIjuKgxq==", "11sJknBO7tbB", "gS5NVbUM", "AiZPn8a0",
  "4GpYnoSVkHvGs8OLfPDLXYec5C+rXq==", "b2TZos1O27fvdmo4", "EnZQnxa5Pb==", "OIHwV4NmHN6=",
  "H37wZm6dTQh3/zO/Kp6=", "ImyjC4fRJo7KtGyR", "mUvbJ2rObnUc", "DyD1B6bA",
  "ypoC4NRMhZvlkuD00a+JfPAPa3c=", "osxfsbRORV+iI4CpYoYi", "s/sfa83kOpWS/czCMYse",
  "siyjl3kqfRMFz8CA+VERzUjq7/Zeaq==", "CUe/", "p7AXbI6bO3K=", "aJzWNVDBcE+vlbF=",
  "FzZC7uHPOR7EmYGOKqgt2kncRV/M0/9G9q==", "lPvp7HvouHppNLCjhtv4Tq==",
  "vz5EFzjvrwcV5leYxXwvkJs9UQWZSbfFt8==", "5vkXYq==", "28khTbR=", "mpGsJ9K=",
  "Oi9DID7soCZIoLFdUAI9Egb=", "oeKW7j2Gwch7wsUqtBeTjwRB5mwcS8==", "HswQDHbx", "Kz1OtNR=",
  "Htaj3D8gg5Xv1fk71q==", "kKo1ldKnTyBDiX5bR/F=", "ZOXQ", "/FDt2c==", "7CbykrB=", "Ah2rmRB=",
  "IuOkhIrKBXde0UUA", "AR20DjlHKMIzqZqDk6T=", "iPhv7yoCfPhl5V+j7V5=", "5TBWIL16LkZ=",
  "49ZK0tY7jaRbkVNG", "+WqlAlB=", "VgHBJyH91c==", "w5ms0V/=", "/AypOHqXpwCAWq==", "p01WXc==",
  "QuWWSeTDvEFK26twDD7fhAfnM0ZNWM+A+lT=", "eTK33phUhC5=", "7Bp8i5ZDR5Fy8/vlhc==", "Py0anc==",
  "zGpKevWom9dd", "iJC+fpgfvBo2uXiG7b==", "t3OA7mnKp9pL", "4rQUO9+GbRNPM+3iOIW1Vw6=",
  "VqIucDD=", "rJyriMU2r5MRCA5E", "5Gw5htlm", "9Xt2ZYIJViuqtCyNa8==", "jonBg8==", "TXgo7H8=",
  "NSBgZX/BDaQ4F3kfNBrrBcw3ARVMpKyG2qqfzq==", "PvZiVasgG0rHlj7ErXNOYduMk4zBDjDzET/EUgk=",
  "uNJ/aoB=", "c0Ln", "siZu5U8=", "MkiTXxk=", "fHDqqJWEQPeRDAoY1ips3GZ=",
  "uApEu5hyl5iFRtgHu8==", "xZwn", "yoX2s6F=", "aSSIsOE0dcTxReR=", "332NUfZ=",
  "lvLEOW1GnlDi/DNJjPYmSsOZY4Xtoq==", "qY3x2KtgaGc=", "L9kopqb=",
  "Q/xwNJ0pG9rk7W6tLmg+2WdXeBDCs9+1sq==", "vLpORJzS7ACjhc==", "QHouY4ga8GM0uUKmExF=",
  "lB0pMCGI", "IgtQZb==", "wr2Pkq==", "VUc1", "Ac==", "ODGlw6G/", "CJ8+s+Z=",
  "hXge8Pi/ltuUhLCshtv/7JD=", "Ks4Zb/RKKUkvgAZ=", "9eBMoFc=", "WHAE",
  "tJnUTVv8hPejlBypTViUuJC5lPyp", "N/FhVm1O3HTr", "1PNyAq==", "UDf1I8==", "nnG1NJdvjq==",
  "eFwp8BixBbBe", "5PZj65yO", "5LnUN8==", "0uXb7Geri0a2WCZcQRT=", "ize9qdKgZx+6", "pLXte8==",
  "r4rFt3Z=", "xZYlske+Jq==", "cH5/3mxVik2bWG8wf8NW", "L1StRyc=", "uJJS1Jz7szGAvjD=",
  "uPjZBaeblFb=", "OnJ+2KIjEb==", "nI/e", "vApSuBuoTHi/8JUo7LvtlLpjlBpO88==",
  "7ARVR5yrfHMruPva", "VOsT", "J/1xcD1Y6q==",
  "VH3gnIEFEF9+3m9rl3RY1og9FsDrEFhI0JF/aGZqp2oEKKmA26EIvBuYXLhbI0CnEDXyio+3BVK/ELaQObkHKW2q",
  "hr6yrLhorKndfViL", "A92dmbU9", "l5MBNLegPtqerAhy", "4zeazOogJzq5sJWng8==",
  "evMa4DMs6Gvbic==", "cw5TvON1xNx46XZZ", "Pnxnnvaptrv/oVtH", "3pdc60BH", "Q0c0",
  "XG7q9xDzRKbVdu98cWxjiFq=", "x751qvNRJN9Za8==", "8CvshBubiJ2sl5ou", "KV9xE6VETUELkfq=",
  "juD5", "kD9C68==", "dIdIIIKpk4xDUSNDcOD7z/2mHq==", "Ajn72aC5IxcX0k3mDq==", "fPebht8=",
  "hM5EiKoJPLyjNp+1", "Vdo8vG7wJ3+I", "uAMWuPnUuVk=", "YpzYgksqySmoO85IzQdujTb=",
  "vJC/5JCEhApju8==", "tZsj7zma", "Zi4vjssGtd3R5VXo49BemTb=", "azlu", "PKgFiyC8C5pfi5hk",
  "ag2ENaT8/x332gQUGQhEHJWFGrb=", "K5Vv7nUN7JyOVb==",
  "xVAcjrablIyKmNCjnrcCg7Yg1KsNpNxwSYC61y9=", "8VCLupuVGB9Ei/iv", "ivcOueL3", "8JzZ7V6O",
  "RZmV6Hq=", "5JC/CLp/7L5=", "PpUbTXvoiBUliAy6Gc==", "6hY13HUGBhEIN4bvguJarFB=", "PtPsTCNl",
  "c/x6J8qnwb==", "Eo7sxjjk", "BXjG", "fai936Z=", "hJzElVibRPip", "Tc==",
  "TJzy7Avs7LzjlJCKCPe/lPb=", "+j9ZBLbb", "zMfdo/4QyHLJfRK=", "vpuE5Pzo5PZyRPgfrb==",
  "wy2vBTc=", "Eb==", "iO6nk/oZvKRE5PCCPc==", "bqBwy/2CCg3j", "sOwa2drxmrR80w+gDc==",
  "B6GnBObg", "e+z3ab==", "GcWqsZK=", "7JTyk/o8vCUaRpiaRrc=", "aYcxvb==", "EQPxq8quPb==",
  "O/CYpKmA", "3W7Y", "6Bd+el6=", "Nou133Ru8n0DStOHJKoH", "j89iwGm+",
  "lLp/RAzDvXgUuJho7Ah5uPiF", "RfgUpyKeuH8RdvS8WMGzWgkn7q==", "wW0pjyvVkZupp279hfFbIpcT",
  "DkAs", "h36Eaq==", "B7J1cc==", "fBp58KzRt/vf85hQvMCf8Cvgr/D=", "Qw7uJYCNqaKpDiytu+XN",
  "XJszQz3djoZ=", "ueMAX8==", "tJ9Fk5OC", "TVpOhLC27Lz4lJpSu/iL5q==", "kW7ioBqpMAk=",
  "MItDEd/0RPdCkb==", "TjboFnmrEPZQaaLnTQYBXb==", "PtNr", "vM8cjB51MHq=",
  "8P64pD5r4Qwd3PWseth+SJivl34QRAnaar0GimxJli4BpJCHUxTbvCfbj7lXrUzXTHIY5M44+MUcNrgQPhe9fsKVtLtL1dsQOADqLFl/t/ldvIgaVErmcXOLDQlPZWB5AwYi+e1hXvV84l1v3a0Ox5kW6Y7c4/1Mcv4MtPIL60Ko",
  "l5oB7XpAuJoyi5zBrq==", "ZAy30uZlsY1cqkiVvM5H", "hypZCrYQ", "hP0rb7c=", "V8e/dBFolgdBJ8==",
  "GoZZrBVaGc==", "o82xIvGNv8==", "UF0TghTyXL9=", "3T4EeWy8HFvB5YKR", "AQ+YT0nmK/t7ez8XlMq=",
  "lXucuWUhBTdZjSYw8KU/145=", "W0i6ETq=", "YQrKJc==", "uoRUjdK=", "7WQOnDEM",
  "3ybOMlBaJfb3DQN5f7g0UF0RGDDT1TG3oq==", "1eiTES8qL1B3vpPfQ49r8SWb0jEwj4RGsPF=",
  "Ndk/TOpDNMufkLpD", "EBks+3Oy3hTpW7T=", "/oKBjjyODXK=", "ikx4Mjy7AM7juhlOLQ4a6n53PGjBi8==",
  "cdl3zFX9LskTEkrpsOJBfDHW", "BXYKFAF1eAb=", "bEjhkt48ac==", "H0VyWYja0c==", "xqKeoq==",
  "75vvhM6eNKyjuKgtCb==", "lti87JpShBpSTJpKuC+UTH8=", "PZCJ1X+AEq==", "p7LSgr54U5ohP2UjX0Z=",
  "kHvMlKoVu5ntvXUf", "Of9jlTLUSkp8/Uoh", "/aUS", "DzHZ5wb=", "8JzSuApHrAM2u5pSTXC/",
  "duOG3oCbIgaQyb==", "ZZN0CrvAJ8==", "ZF0HYu7m1jWm", "lLe/iCB/8VhnPLMR8yc=", "KYMtcf9=",
  "fXv/TMipTHuoRJ5=", "GPpK85uAvdCp7Kqy", "BNl9mq==", "RNeOEB9h", "Lc6uSQbP", "PqLmNSGhwcvl",
  "NzqW", "Ppadzp2s6yVf/B0E", "hqXHMlJc3+0Vrc==", "fJzDGXMVNPiJvjvkf8==", "IJePkCIV",
  "fAek7dgS7LbVvtCmfc==", "I247XKmSGthcgbK=", "i37wO+2Gl9b=", "H4Br", "N/VH",
  "EdnvpoikwU7Nnc==", "/Sp/EXB=", "1XFHvh1Nhfn5", "TPmY4H3Y86lb", "LwR74639gt2q", "hLMOlb==",
  "oIIhKVJuQP5=", "01/3hcK=", "Rr5ycVTjKJIGtc==", "upRiHb==", "zA1Yk1GRKq==",
  "tJuoTACfuPy4hLC8hPejlc==", "be+uRZk=", "QhqXD2b=", "TLzOCCCX5XuklVMCvMk=", "fRdk6Cq=",
  "DLu/uaWSORUxmvn+BBq=", "hE3HVaDOBkuvYLgq", "TL8VRKz2rCpJ55Co5Xq=", "8JUU7Ahp5VvUhL5=",
  "UFO5wO79FKZ+Zc==", "hwjvQCOROonO+z1qbmajDY1iA8==", "6Q5mOV/o", "CyC8iBT/R/e0TLiJ",
  "e1kP9iF=", "GvfRBw60i78T", "5JCSuBMONPej", "juFXr852", "4zhGEMol/g5zMpKWDg7n7ExXcWcAtc==",
  "V18XFPyZxBq=", "t3Tdz3jezvHWY7F=", "8TfeSq==", "2FNHUhkcdRk=", "lJpZ7LCETJpO", "m1Jv",
  "Na9x", "N5gslrMJlAzokLzL", "KrcT14riUA+mc/VGIV5=", "jvY0Fq==", "vApSuBuoTHi/8JUo7L8=",
  "fbie5+1aokpjILhk", "fqVFCWYd4Nir0h7K8Ik=", "FtECYgJB", "K88R", "75eXNjC0Cy+rhA20",
  "CNd+DB6=", "FeD2sP4vCtLyRONUBuT=", "63NVl8==", "EIoW0eYok6r+OggDNq==", "7AzZl8==",
  "OiplMeT=", "bOv1S/QOfKm4hkpxT554", "Mfc3mJogAqT=", "+a1+", "ZFuqBb==", "wt9PqFKu",
  "ecpvIqII+hFF07hqd9R7Vb==", "phqGfhxnJ8kr4PmOG+nuvlQE", "sf7M",
  "mbVsqLbTS/FhBQ1fisVz0QXUad6j/Hx1cU/=", "7JTO7VoUPARERC+m", "UzVe6c==", "xUeOZMqTaFuV",
  "5XlVtbuLdtjRHHQcR5NSK8==", "COgANHUUTyu+lyo4vC6=",
  "qevj32wEcOTzMLQ/tIh5yYoc7QdjVXEiNn3sKq==", "wuGrei5gn8==", "RtC/7JgZ7JiWhXpbu8==",
  "j8uWcAZQ89B=", "J3URv16=", "rM7zKu/u28==", "RtpsiPbVrBguNPiK5MK=", "4cq158nRU4b=", "EukN",
  "Q6aDje8=", "48XW8+D=", "RiDdcyYrqIV8ESR=",
  "md0Eai5t1Yr5heRrLsI4gQXllCvEhB/qBkRdE1h1bfZsoyO5OftvWyPu+TFABUBTgqeVOxUET6i4", "wetrpJwB",
  "oCds7q6=", "jKVYP2/Y", "ZxupQRhzSkHUUTUJS2O9Gb==", "+9gczpMD", "XtqtW6k=", "5XiXKVsu",
  "IInyGIapGZajkZikTBtD0yiL2l2mSFAXrhLSZX2g9d6mhP5tTjXF7z/TIV4moeLurFy8NjDTDnGMqcbTuwlHCgJxuyDk08==",
  "85qbhL2+iBothjMgl8==", "+9ArU0T=", "Qu47+TjjleY2YVNiqaR=", "MBXgBb==", "skPuM35=", "i8==",
  "aT09zsYveq==", "PBCpkjv+8Kn+kpovGXF=", "Bj7GQb==", "Fb==", "X0RqkUtMfCnZoOj8w66e",
  "ZetgREh/F6/=", "UhL6", "y7cbr8REk8j6pZClac==", "irUmwc==", "4rMsxKaRVq==", "Z0K6tSc=",
  "TJCZuPi/TLnUNPCE", "QgqUkrDG/xc=", "hp8JTBU+NLzlTAn5", "HkgDDJgiXJICEHOP9O6=", "xadAn4k2",
  "xEi/qXEDF8==", "2rTxyc==", "AyFZoq==", "NxcedLs8", "tJpOvAMjlPeH", "Q3YmpY9=",
  "hA//qdR9Sc==", "O+2B", "GQLOgne12owMpn9kZMAJb6F=", "SfT+", "5JMJu8==", "11yB", "0cOHacT=",
  "KNegH3g0hI1CY5ea4gqK4QPcr+9iF8==", "5xDUH2w7uxgSLpgJawyCsq6=", "v0ZoDvdW9c==", "rRW18c==",
  "ZaMsyfsjSRF=", "NdgnCAiokApGT5yr5c==", "WZIKfc==", "A/o1RflZE2dzcBigK/h0", "6XJmxLrTFc==",
  "CCBmtRwl5c5=", "njCV2b==", "C5yjPCMP8HMVhApLfb==", "SI0TKGVLQQgmjb==", "IPP3c7KrW4T=",
  "Fsyg95Mr", "8pCtVKEcf2arjq==", "IhZHrBpU", "9vEcoh7U04a369c7l8==", "dNgYt0Qg280+nTD=",
  "NWnXFu7cDdq2mQZ=", "wn4pUXUjpnjF", "3UtKe8XBCgV00b==", "qig0H3R=", "lyLI4od7Pc==",
  "Ih5d+ZMlPttJvPVrib==", "RtpU7Ph4TACSuViO", "/nvG", "b9KYVHTdpk/=", "tE8+oiA4ZBc=",
  "GrqykOuKG5oKTKUj", "JDV1ExcH/8T=", "9PCjEt1/fB6=", "I0/kPm8pnox7fIFch0E3", "BEWHYb==",
  "p1Q9o66M", "089POaOyiyc=", "/vwMIlaVfS9J", "wfZroET=", "CACiRPia7KCpktgm", "pT+h",
  "opDSQSTiAfU3", "1O8pYq6=", "KxqSX78r9LZ=", "h5DDlKU1kJuRNMqEurq=",
  "VDfwWPhGDb/5ksi7XQZsEq==", "/fZ61q==", "YpplleR=", "NndzcpYXba8=", "Qct1", "hZRBI8c=",
  "ltknNdMDktqn", "OQIFJq==", "J1V/wKT=", "nPKQg31D0JmX20R=", "MCzM", "q46hOsjC",
  "CCC4C/C5htpdfJzk8pc=", "lKybR52aiJFJhCcJib==", "bLiuglB=", "CtMkiLuXTyhKfdiy", "XT0EgNG/",
  "lAMSutk=", "Ny9he15yQtEX1CSDyQHSaIS9", "kojbSQq=", "IG2uyxXzpk8TJOEfkshXlc==",
  "ycGhwVC0EwMaB8==", "8Jzgvtp6CHC4v5oFu8==", "DDSd", "+dvxHpGwq5Mj", "kNIhsk1Fbq/iybyH12k=",
  "ipguTXCRfPhtu/6Jfj5=", "vUNoRMevzsF3Xq==", "pcSkAb==", "P3lOt2iKWz5=",
  "TpuJfXpiRrhnhATEP8==", "xOYXEM6OTfojRSS8j9Zo+diVdvWHTs9=", "RhU79dMmSwF=", "FP6h7TYz",
  "MqOBDEhUC7y74qej8QarGEmPDELVsd2LIGXg", "Sl4wcKMfrq==", "Z1C+FiR=", "XOQt6zLqRCAu",
  "0Tk1B8D=", "5klc", "ejUDhlGX70D=", "+0zkpkOgk+RORejfmb==", "rtVbLc==",
  "T5M6kO+gCMhm8rBbiAq=", "3YQ2Pl2B+MJXtQ7HAZeyGOuSL+OvEaoc6j0YW7B=", "ZdfNIq==", "V8==",
  "1Fzl", "o5t5Eq==", "6n/8", "bBCD0c4O3b==", "L6btKnqvHUEk", "8jpr7K8yh5h4vJbyf/b=",
  "y7H/78jVq9R=", "J7d/k9WXIJx45/KBC1LN0N8=", "s0k8HmD=", "hHiPrLnXrPp6fMoFf5D=", "E3Xp",
  "vJC/5LnUNPpSu/MSlPyUhLp47pvERPiWTb==", "nezV", "CQMcL0hPvER=", "YYKYZqrIjh/U1tLM0mVkkq==",
  "KZeUq0R=", "sOCF", "z9sZKRdYUNu7EUh0IbngGq==", "9/LKqhq=", "UDKm", "ZlkR/10wPPP+eyR=",
  "Tyiuh5u1R4rixDQdoxk=", "MAU3E5dmL54e", "xXSeyoYRuq==", "Gq2kBHVfbCH3T7CTWA6=",
  "HNtSULiyOr0SzBL80q==", "32Lclu9=", "RDkVvOrnMhkx5mQj5LOPCXqcMAIVcGsZPJvZMRTDt0vs",
  "CLyDrKhjkyi0vC8nTJ8=", "nwaPy/OcX1RJu90Pj8==", "rFUDGWR=", "UVptsD9=", "p6zG5b==",
  "3AuqDlFgcwOn", "VLoeHYP7ln7gLlhZidHItpCaFQ0sesZ=", "7pMCuX+wrOkbr/CW", "fPVDfXLxRnR=",
  "el/rPq==", "9LHd2xT5Bc==", "gBl4g2NA9b==", "9NdQ4PUDaOs2jpPnEq==", "7SedoQ/=",
  "jHxWY5ncAk5e/ElWkJLBuq==", "28vVD+D=", "jfRgDVR=", "j1gzmmGjKL5=", "ukusLIn2",
  "C3lXAzEm7LWf", "7AzOuACERtvy", "D9T4m8==", "2LzXArA2tsUldeZbrb==", "c06eTc==",
  "8ewJ5HtaqiB=", "5c40svigGtgFdiMzxH9=", "CbZvryqdzwiiN3wzV3Lm9LlEu24tTWBU", "yQV7zdBKkeZ=",
  "ecDc", "NjihhQS8z7g+LJ2UZc==", "9htQpIxJaezK1thjoMvZQq==", "nr7DLx5=", "k25jticg",
  "ipulvLeWlyg+7jvD", "/EC99c==", "DMxIa/N7xv+8cNOv", "7LMOhMgpTLnURJC5lPyp",
  "mOcYnCd3iTZCNLrjz6+/ru1U", "vow8", "qHJVNnb=", "8nr2w8==", "rLnPCLvYCMoakyMR5c==",
  "xfrTaDxzXbtKdk6=", "RTBLQbCTFdprpBWFZMfgic==", "8MSkJx5=", "JaV+5KJoBw4IEyXOqLT6",
  "9lOXKPx7ob/=", "f1+cczST6G8Mhc==", "5JC/8Pe47Hp27VCO", "D5m7Vc==", "/O1Z2xU4",
  "AMIS1+J+JdvIIm8=", "RHCAuACE", "G0hcpq==", "8Vhn", "Vb==", "TYII4xcwYpk=", "oSro",
  "Ic0rihOCeWlRJ+H4X3Z=", "xmOINRWKmhH4b2GsbJzf", "7dCRkKByCJ6JCdUL8q==", "mk14Q2sF2Bm0V8==",
  "pvBk", "l+wTg1el2b==", "nchgwGT405R+yuGptziKGb==", "LO1Ofmc=", "6XPHYDBcNBnHGZnjCuS6bq==",
  "ivvvXRR=", "6AFIIPWB", "Rqg59yF=", "AJMB", "PZnPBv/PqhllWzlq34y6lJCC", "fcREqJWKYFk=",
  "PniRr88hAIfSLXkzgO2w", "WJxnDlvNQ+/n+r8=", "8A6WTfXWNu8=", "+mG30s/=", "TAC27Vup",
  "oRJoSq==", "VcdzxhP2Rd2W68==", "KfmWXzzM51st", "2BQ3bl+USmAG", "X//WWsXuWIMr",
  "JuxMqwUkWsE53M8=", "c4piUP0b6vkm/i/fsnGQ", "YKFh", "hCJP/FgH0HgkgnpQpXCu6y2iH8==",
  "0RCmzp0i/JI3zq==", "uKgE7dqONC+kkKvSkdk=", "qTd+OIabmBmUI008", "dg+fyoq=", "d6oxJ3b9+8==",
  "J3iiZik=", "XuR0FzKWOuT17qBvrs8Kje5QkArpNRLCQXCmJXMuST4npPQoucU/T7F=",
  "/pDg/7ankVTNNVt1Wb==", "bebNVNSSlTC8X3q=", "BkcKvWj5qCtL", "GC9i", "5JC/", "/q==",
  "z6L5Xq==", "fNAuFyuEQ8M9Ypk=", "o3zranq=", "2Xk6tj3f3H6G+UmvOjd/rc==", "8FpWEkR=",
  "nv28IYqaY7npMcKTaSc=", "jZfS2hCk74wRVioJKqY6OaRGRyH1", "vJpGTH+BTLeFkdhriq==",
  "vae5b6OkbyjLxmcW", "ec+QO8==", "6YiS", "R4rOkb==", "u9CWLhhrV78=",
  "9cXtpxOR8oGEDoLiERHiy8==", "iwuSj49VkrwNMBAb", "ecby", "GE0J", "nGn071H6Ne5mav8hZSHXXc==",
  "3eCvoGONuiVUMMz7Ub==", "/kw9", "3E+wkX96L3/=", "rLLmS8==", "GwfyK8+PFv8m",
  "5jVZNgq0bLSeExb=", "QrqPxVsq5BD=", "rO9MhF3K", "AXbI4gql", "F2rReUN4dqY9AnvbMq==",
  "HdfMZf16", "XFi8BoD=", "vLFyPPeX8VCw8H+WT8==", "n87DA5b=", "iHqJuAoMhdCy7po8Nc==",
  "F3TSeID=", "s5S6N4+iJ5b5Oku/A8==", "6wiijSY7", "OaH0+C1QNc==", "FPkK3b5=",
  "2JCC3zwZZ0PEwiGx1AwaV5ab", "NWZ8bL/=", "BBR944u7", "r67ZvHQk7ZJ9jNEfOO55pc==",
  "wWmyfQrg1pT89jhzkpqe", "BJcjh/D=", "RApSlVUEvCuF7/hJPXB=", "JYNOqniLXuNhpmF=",
  "JQGuqs507In2xwzpfpeuC8==", "Hqgg", "j0iwfoR=", "tygMvpgM5/UQC5pQf5uQrKpk", "PkLQFHOKyq==",
  "lO7bKwc=", "7rCGlLo0fLCyfXgM", "PiNF2K5x1W74", "LSeN", "acKdLxk=", "DySrWR/=", "vuage6K=",
  "kEtJjaOZ", "TXgpuLpjhLp47puU7XCp", "DLOEm75=", "X4yK2b==", "0Nx3IoTHVaB=", "CM/TMRD=",
  "vJC/5Xg4TLCEhXpdlLMSuJCK5JpH7AMZ", "xj91H5ku2elvGp/=", "vzxV3uIjg2+9mqqVeb==",
  "nUr4hdlF4MXCSOvgEl/=", "b6PyE7D=", "VghenWk=", "7C/yiS7QboqL", "7XoRfHhV8jumkCU/",
  "kNEaEbT=", "PAy4R/pnCdur5Aelhq==", "Fl0pkQX3tR5=", "BzFI", "mVuuU6EM8+aNTfrsVq==",
  "0pIbkQ5=", "cgBJC8Hk", "RHp/u8==", "qIkpxjpEiXb+FCYqRMye33EJ+8==", "Gz0p0XK=",
  "EGAXNleyW4jGyYvMmEcmG1wsBYAQkvT1MMsBmWZmwrWNuc==", "2184", "yQgLw+pmkb==", "J8C5i4T=",
  "lzAvWEEANA9=", "8IuOXAhxnv6=", "HNohTobkbabe", "orgdspk=", "yS0dem9=", "d2m6",
  "3fdaS9HqBtlYoLmlP5NmSuq=", "0NYGSq==", "tk2pwL5=", "izd3ng5dUNMVa9+VmU/ZZz/=",
  "VhrvwQFrNVaXKIJo3jm/tc==", "1A2xpIdVp8==", "C8M898==", "hHPt+c==", "48LMGWeU",
  "6LRLW0F7arsdKpbbZs28ub==", "wA/amCieMPPe", "iJiifH+Ll5hMPCiKGc==", "EEFHF5cETOl/mMT7",
  "12JmGm6GVSK=", "LpVsReC/7Sbv", "p2Ptpc==", "k/kM+IgioB4JwGWf2bsPj2xAsFOttLPmb8Q3X8==",
  "8HC+rtuPPARe7Ogn", "nKuPiDl5T0zhKtc6jvR=", "nOLiweBHrUwfObJDEhlsPb==",
  "B1EH/Z8fR7RlnBC0sZhm", "QhGFYtT4", "ZRn6A4dcabHOOb2YfVxyFtNp", "UfZ0T78=", "WpyBx38=",
  "MwtIw3z9", "MsxnFskiZrH4mGh6sgD0PTSAbTzrZPKJ0Zroxc==", "Bt42OGAKGID=",
  "xOBX1rzYZnIVMCfrIVMLnb==", "XywGyv/=", "1X4Br5B=", "eOo4Tz7zc1Reh8==", "NAD=", "gvrP",
  "sKdTpVlrIlNIvrT9q3TQHlk=", "i0sn9GZObc==", "fk9B8u6=", "ARKh9vB=", "CLCjlMvURq==",
  "ViyZLulURYq=", "c3SlpYlq", "w2wC/NOcRO5=", "DIcEqMMSMW9=", "0vsvVCmr",
  "MoanrIvm8Am1P+y+Xj1Hu5+i85s9L8==", "oIaYDmU3pOPDIxewi7QZRq==", "8jRtYWT=", "3qHLvc==",
  "DOK5/tVely8=", "27K+t67DJkSznHDiK1ouQc==", "Kw+AyDf4awlj", "CLMH", "RIa2DxJWFyZ=",
  "i5oSCOvgfyhvfVB/G5T=", "9nfHRm5/B0feyBv6lt0Czbtf", "rd4B", "Grs8TMLTlKFg",
  "hyMn5/glk/ewPPyMNq==", "HSg1N2Jh6c==", "nq593/1NucsxVxGQ1+Y5qvGm", "kIaLA+RWKsa6fq==",
  "p708", "/SBMV2hn0ICV8G6Z73YY", "O1SX", "DOUJozVt/rb=", "3yZ=", "uBugwNh2RA5Owc==",
  "L7x0iLK=", "xAbVtS7L", "LmQcPc6=", "o0OTwl8mYZk=", "Sg4zHL6=", "Rtvg3idaZtZ=", "uIXAcq==",
  "uxI088==", "ofvBVIQqFoZXimElM62uPLlUvb==", "RYJwngfg",
  "0ikaKxCrzD6hVeMfgs+3Ip/KS4+MW96rmci7Z81segc=", "l00y9YXBEZ0v", "zNCy1jN7T4SPxf8=",
  "8AMDOZiQmuc=", "j1LQL8==", "hnI1HYPU2w0f6cdBvBvhbnC8QPLWbb==", "uFUaDtV7C4ohnH1WRF8OZq==",
  "ImnkwRK=", "Fddx4Cul", "UwTkgdPrVgbT7pK=", "PcYNzuMJ53oO", "xlktAc==", "slJw", "ZxlXi8==",
  "8/uERPyp", "8Ue1Qc==", "2GOp", "Q4xm", "3NfAHphT9JexSE5=", "vdvGr/vvfJeA8tiY8q==",
  "CSIL7cTKoDuQc8==", "ZBCCUaa0", "Cj51yJSf9vBW", "HzxNJM8M", "EfrwP3O1pcUze7YdPq==", "7LCS",
  "mhvY28==", "+GfInKpcSx1Jwaac3q==", "C7ERHCGI", "TdUdhKptTd+Drtonry5=", "xqZUJAuV",
  "iHpF5JnZkJvdlppa7q==", "97cwzCNm", "RJzZ7VgOhtgJltu4Tq==", "0PoS3vD9BK9V", "rjT4SfTiBaTD",
  "QDQC8hje+gjZcATOsVb=", "JxgMWJtbuZ5+", "2kis9WKMCfzSFHgH8E9IRIecd6PSu2lo+SM4qpA+cAdIYb==",
  "vfiqLvq=", "snveNL/=", "3KOe/EZ=", "CXDXBhbd9wQl", "D5e0fGt+37lefUJlsUTJHpi31fF=",
  "7+Sx2YmFoD3Rrr2p", "l3qszb==", "9GqtTc==", "C3iyh6c=", "+fe15z/C+q==", "VSo9CWgD9OB=",
  "Cyorf/nMiX+2CAoS", "iSSRI69=", "wucyxc==", "QDdhWc==", "r0sgQb==", "WCIxfVT=",
  "g6jN2gAJrq==", "K5nWOI5=", "SsEh4q==", "HI6vIY5=", "1fUk", "UbQTYct0cc==",
  "PqtVt3vYwGYhRFF1", "un8ju05=", "xQwzNvAGm3lox3uGRq==",
  "9kBwCPxlFko5Pv9YYeZEL20llWewnKbuPdIrWnE/Ow4dx8qwLEF=", "vz71poZTIEAt6YJSOrzq0c==",
  "SyhajEyG6+Ne", "+sbo67D=", "SGx+", "RJUUTAhp8Pp2CLUEuPMK", "XV0DdGl+We8c",
  "Man4H4Jjn4VtWvBMpS3J", "5pREvOgoPAyBTLuj58==", "1yZqqq/=", "YbzJt2hYhj338dF=", "D2HH9fnn",
  "Jk6YsRaKUYT=", "+vtQNxvW", "TVvUTHv87Vk=", "aAEa8J3rgJF=",
  "tJhphMi4hPeKCJzE7Lv87ViohLp47q==", "M9N/s2NlXJEcGwLS7OE4+eo4v2Ed", "2jFxZh9=",
  "cpx8Ea2q/akg", "tfk7EbF=", "eXQ/g0I6", "4TxHzcrLthk/RmhZCsJ+p5Ul+bzIhq==",
  "QSJIcQ2pO/f9W65=", "TuhN1ZD=", "Jsy1CkiXhoYp", "HzynMlHqlCAjy8==", "r/Eqgq==", "JcMQYlD=",
  "Ljiv", "ftiButijuPeKRPe/rJR=", "lbtgQoNAhVQOfHy5Zq==", "I4oW5HD=", "pjSCQpl5RtdfJKF+",
  "4f2uCzDRaeZ=", "xXpXAYugpGWW", "iRXDVU2J7uT/1X9=", "iIcUfkk=", "kACBhC+YR5MsTPC8fb==",
  "kB//u5qnk5ymiOg4Cc==", "el2J/B/=", "4HBgZB8=", "Vm7tjdD=", "umwK1spV3f5=",
  "kSRu6toIbhNOWwf27/0dHbDjMSpCkz2Q3Co+DMnE", "kpTOhOv27AzshAz4Nc==", "vd2gt6K3bk9iP131LAsN",
  "OmlZb4o254Qy", "zPARhs8=", "0Q8M", "ze9lKGxRsH8qQA/=", "h9CA4fet426wiXR8Hq==",
  "j2V24C1PObYtxtW01u0D1mmMeBYqAooIc6Zi", "2CNzvJbJjy0uUhCmhdCiA8==", "IZoCP8z+Kc==",
  "oiczyiZD", "koQQ9xv0", "oawS", "ijk53xwWynNa1UqK88==", "nDL6vcKvm5nk7lPgGu96k4rGv4JK",
  "Q3ZX", "RirjkDToob==", "DGQE69gImNb=", "OTmeRFR=", "MIa6jjv91h/8Rb==", "ZRUDw4IAkhb=",
  "Z5wCM1ZNEy8=", "95E0", "8R5ZeG6=", "rLMV75KefpgelLeVPKk=", "N40Mgd6jFKQ/",
  "kLv1lACr8PMMiPz8lCF=", "WQZVoSuyeksgTuBSIprMLc==", "gBZw5rF=", "vtvM5MiwurgriyM6",
  "E1G4wU7xg09=", "93R6i9LQ1L/lrppfFb==", "ADnh", "NBOMUB6=", "DHmMShK=",
  "PrhvlLB/fdhf8KeFTH5=", "H25YF5oyec==", "CT848c==", "hXTyijh+l/FbvHM8Tb==",
  "v/vlNAi6PHMB5PgCNLT=", "YQLL2NWF", "jq97hb==", "sM5yfv5=",
  "r3N4eSY9pcAuUvsGuQAO3B7nn04DdT2RK9PI", "ch4sDQM8OQMiBpK=", "pM1Fcb==", "exiHXd0o1pK=",
  "Nc==", "7XMiiCMXftiYCtMa", "uJC/rACUTACOhB2o7LnpTpg47V8=", "pJuE0th7Dz3UbhnN5Q/w6Nb=",
  "MvoR31cZDF6=", "meK6+8==", "Rtv/uPybhBgB5LMEhXk=", "xYnkGb==", "YewbXC4QRxjk",
  "21ccphYty1w/SelOsP9gfCzY1Gl4L8==", "vfIq", "sxYaUb==", "H8==", "VhoHo8==", "yz/pDgpY",
  "iveao8==", "/GEhh62Fx4Z=", "zoaaJUr/N8==", "HJECuF9vV16=", "dLjKqb==", "0/42pwlRNU/=",
  "p/V8i9eMcq==", "v5CnHG0xKa8=", "T9z2hf5=", "TI2YWzyHy6cRCn/VyTGMkyh7ep8exb==",
  "7ncqWN1OtIK=", "s3tjyHia22VhRSWinBow", "OeiBl70KXNTY", "UnOZwp8=", "EgBGqWIiR7BjAov+Ub==",
  "R9Xf04T=", "VSnB", "d1Nr", "tc==", "SCbUgrXpfLk=", "6hEYArK=", "/x2cfsk=",
  "SM55XE3ZaPYTGlJ9hlEqORkC7JZcR0D=", "NpukCyoFkOMHi52f7c==",
  "uH6hbLy2oxQTwp6b4lRa6myYPTdcENVJHr0Loi1V", "dBHrwyX/8qW7RA8YY4TYenBu2VT=", "ERannf5=",
  "RuJBEl+n1fLj+aZ=", "GrAfn8==", "R5Lv", "D9mFYq==", "06hIB+OSztQNaCQsjc==", "FSgylc==",
  "8VZfYIG2Rb==", "nJpEtq==", "b96U4q==", "QwXf8gPKgh1XicHz", "7PkT362R+N8HNoog",
  "7ruirrCsvCi5fjC2", "RfDC", "utgE7V6=", "ojEBn4oMA/tGm4ahu6gK4nc=", "j7p2", "5gu496R=",
  "KMLjdq==", "i/neCKBeCdC5uPp0", "Z3nl4b==", "o1/UeFFfC3bx", "HFE1rt8=", "hVpf68==",
  "uhbs6RT+maepNM/=", "9H6tAj5r/c==", "h/MLfAUaipuOhXhDkq==", "5JC/5VvUhLCM7AMa7LCK",
  "R/g+kAg4hPze5BCkRq==", "JrMi", "9sWLm10/vpABaV945Ar3", "EFr9", "55dHl31EwRhYUq==",
  "52PVVq==", "LCHR", "uAMWuPnUub==", "vHky0nJ+d/E4E7lTsh6dAc==", "TJnUTJUpTq==", "2G9F",
  "CACpTAzSlPiU", "KUL2", "CHuj", "9GYBmzDLF+oP7e9GEkAqul7rzCecib==", "jMLovb==", "ejgQa99r",
  "NA5bkrpErJoeTKeylLF=", "+YZiapq5hq==", "8F5gwbkzW9qlRC4tvqMcp8==", "Pv2chc==",
  "ggC9Zse9sFmVwZl6OMd0zu/=", "hdBLKM2x", "4lSkfROVzYBn8ylKgJYv", "Zv+OaZMfcM6=",
  "3fRFPV8GTAWUKZ2Yrns/Y9+Md8==", "ujhGvCqVryu2vVoe",
  "t4OETwfqK/ga1o6LpPJc5jhJylBiKWvXOND6O8vgEOkTDY3Q3q==", "JAY0", "CMovuATJ7ACwud5ETb==",
  "MXbaCm8=", "9EdS95Fi6/9I", "CjgKuJ2v7PnmPKUJfX5=", "zlzz7c==", "SKHCSyg5TsJJFntk6BxHX3Z=",
  "Lz0cAo5yqeXa3LVGPW3OCA+PGbJfdhflhnYh", "l5gtCrgXrVgnupCYhq==", "lLM85Jy/kPhr7BkJ",
  "fpi1rKvpRJzKu8==", "XiC1Regqisx0jGva5P/=", "oFWRh+fgTiOA/amjvePHWBG0n8c=",
  "vJC/CLzyRJUo7Ah8Rtg/Tb==", "/D8fnTB2rlZM0qG5fs9Bhb==", "+x38pNNVJDMuspmZJ9D=", "Y+q+nq==",
  "7Ej8pc==", "2slofb==", "8Cf863DQy3YdCN150bQs", "oYU7Bq==", "9o5Z8pJOxPTNmb==",
  "P15OoGGLUIwJuuk=", "rCAx+7b=", "EwjkHQU+7VQd", "5iqSBZc=", "SMkF",
  "HsHoAy7TtA3L7gfpcqNK88==", "TJCSuBiFRtviutiORPhp", "tvMogTT=", "i6C9s8==", "9vwomc==",
  "J665eF8=", "nB5vTGP/", "iAZ/8AMXTygbrX+Ric==", "iZWw", "yXUYBkKjG5/xziJDHq==", "nSY525D=",
  "1eQl", "hVgGvMUulLB/vyqnTc==", "W/G0a9k=", "NNxtfuF=", "u+3AlXUARb==", "ZhpJ7nN1V2K9",
  "zMEyyD+qKBdWyNYORVAsom5iRuhCb0R6YcXI3VKYZq==", "HdHq/mBSh8==", "6/Rn", "8m7OWb8Vc5AG",
  "tJUohLg4NBvERPhHlPeHvLCa7VCSRJ5=", "k5ywuXiS8ruOk/oW", "rXCjiKZbRCMdlPvblc==",
  "HEkFh3jXN86=", "eBcw", "9lB19/VOUc==", "LWrc", "4Z1FbuHmVHvCQVo2j8==", "7lPExZZ=",
  "ERPQ7pq=", "xl0lRb==", "k8zlFPtfzhla0HZ=", "/H67Qv5=", "HbIuNYXfwYZ8m1Jl", "4ZgVUq==",
  "Nk3n", "P3COkWm/7DXqBJJ6k+J+WW/DiB03uxPr2tKF+beivMFVCLicoRtV",
  "dpRKIsW8sRKmPzQi8Cx8O6g31DZxH47Y6e8/GZM5rEXNCb4x", "yXrtLM61ZItPlHcDi4T=",
  "TVvUTHvdlLMEuJC+lPyC7Hvo7BiFRtgHu5CSuXk=", "maoH", "r/50+S3Q8Qb=",
  "jd5PuP/9GqYY8O29iX9YS/NfyHmrWb==", "rxj3dq==", "Gw5FrvLrfSgO",
  "BytdY027scvYILLhRsCYZPilZ16=", "17er1CPe5tD/Y5Xy", "y9sP",
  "iG0iFczl+2SLdZQnPZRH+ELInL2geuoV0sD=", "Zuucrl6=", "Gnha", "0Cu7",
  "5JCSuBy4htip8HC/hLzSvtup7H8=", "5AU+Hjj7/QaY", "NEWABAXmvXT6lz9=", "OkEx", "F1PFi8rZ6Zc=",
  "Nbj7Wq==", "rJusHq==", "TBzVl5y1CKM1utTe", "7y7LJb==", "NtmeCc==",
  "QpfhZb1cLtxiISHrNXGb0OT=", "xWJRCKZ=", "aDoE7JK=", "/AT2FG0F/TAtd5lgZWizspA7fl6gdAsKfhWB",
  "RtM1TriYkyi5CJyHTVT=", "DMLhnCxr6Yjd4Hucx6DYxM9=", "grYaNCdBMmwZ", "kjxU45f1", "1Udxq8==",
  "hPeOiVh27/nVfMClRP/=", "5aySUy6=",
  "B8LA32rxOafrnY1tdlybHwySn3flQns5M1RU3Nu1Hc3/mhDd5xq2f99=", "GqIcAqIsjr7fsNyoVbF=",
  "vOfy20b4", "TVpOhLC27Lz4lJpSuJMo7Pg4hc==", "xx/9NJwmbWhs",
  "cFKcf/WnA4WSp0XV3dKNKcxB6y674rwnq0iYGsuM1VQV08aI/c0MDnzW6xLJy+XeeD+YJ3wPD5NZHUsrwN7kF1fIpSq=",
  "TuNPw9tSvw89IAxRK4PI", "+Ksy241RDNXRhYYn", "yL+Xozk=", "sFSxduv+KBjY", "BexNXS8=",
  "JFU+WlJAQBrGub==", "/Ys49Mq=", "McSPzdfQV6i5", "Qg1XyYDU", "fAqDiCothC+RPrg6rV5=",
  "nvGtGJtOMlqnvLOHca4pURSd", "iREra83S5q==", "BDXwKlqSOc==", "MJT4dnVxoIq=",
  "KH+Tr7BkZd+RJA57drOKYj69x5Ok1CfvNw1d/lqo3EyZovDC+Eu4YSJ+GSmJ", "CJMohc==", "Gt6vFq==",
  "LMxd", "AEVLfHHYXN0pO5PFN1Fi+8==", "dcGI", "kx4t4/qbFIHmIc==", "NzcT",
  "DwjUGlIuKKWR9Lgl6VCebFlwyb==", "5fBeEpRa", "lAMSuPv4u8==",
  "A3PzUWYPiX9YB6aBqnq69y03SD+KZq==", "T0NP2pTerbYfTpteMOI0", "Swcb1YD=", "Ce3bFAdo",
  "JHUGNJlmiI7yyZ+UYm61N/dYJUosbA7Nluv84Bu2", "qqIVvq==", "JlBzc2A/1npQ3Hp9YACErb==",
  "hn+xHoNzttS6", "npCUzb==", "8JzSuApH", "m+amcb+Am9rY", "6ghrJxWG", "t+9UATlMRuYmWh/KiYdK",
  "1T4e98==", "Rj5DhPu08OUD7Agmiq==", "gyzd5wdqZMD=", "uzjpP6LT18F=", "OQoiZLMjlMWp1q==",
  "vJhauLuEfLn0hXoprrT=", "QXYmeBq=", "4b/iYjRVIkZ=", "L7ebj7D3OepNFX1/8qEd6P6=",
  "HbgzFJHCYhSqm8O/MOLr", "PAip85py7PoikXCglq==", "Q45v/N4n06ZEWf/rELwCE8==", "tu3EMR5=",
  "w4ico/NkRY/jroDl1tD5", "ahVnk8==", "CfPF5AptDmYh8gAJBTNoW0grODYSIBgykoQn8JXs",
  "5MUJijCoiXgnTMCb", "RxEX", "yOY6Rc==", "a6/v", "V3OsrMJP", "pG/WA+F=", "5VtPRMYQ",
  "6vZbZnF=", "mVKMqfYO", "oBt3zX6=", "em+3ic==", "PKRO7/UWiVUrkKup", "p0FzSK7C8Rc7", "uZ9N",
  "gqxer/IWPhEjwDxL2MR=", "X3UJkec=", "2bDEDwWIYSvS", "fTj+5nTl", "pKPjp9mCZb==", "kVbJFb==",
  "vVMbQ6OksCo8qc==",
  "vONR3AD0IW5n9Ux0hAYy6MHoGGQyB6b4uJG+HZd5OvQfSHbz+Ku5bs8FoL6RqkhWPJRVK5AINQMkA8Y+qAXrWLuy0/YimQOPzszenJiO48Ktxf0hPyCWZFr5/zHm33iRfZS+ixLqb1nfKR2+YMTibUWcP6TD",
  "J4AwtkK=", "Yp6Elc==", "U2VD2Xkvh/XrdYfGiamf", "tV7L0F9=", "+T1pGouV5vdlyc==",
  "NdUdltRyCMM5vpkJ", "pOYAGq==", "SFb4V2UUMHjG4DL24q==", "P5pZvXuV7HgAuPvJ", "luDmUWBIPE8q",
  "NXceGPbJlXCpiK8DP5k=", "TVvUuJhpTq==", "l8HwsdUFf0WfjDZSJib=", "dW1g0RG1Tq==",
  "L2bkUd7q4wg+", "gKVi8uOUI8==", "zejhn4q9B8==", "bPL1hc==", "gMV3WoEIT8dmJc/WEs78Pq==",
  "CMi/i/qbutglvLDOft8=", "xeKUkyZ=", "pdEk3vR=", "jkyJkxMOxb==", "bI9yHb==", "2mJcJcR=",
  "9QhN", "JuVH", "1mNV", "6MVpMObZOZfNO9R=", "y/xLy8==",
  "Zf7mgcehowB2GRguvGaHMnZsaaJy83xVGWoFKo7IMRBY5d/=", "GXpH5tUFr/vlCBvaP8==", "IyeN",
  "tAvcYh6EdKeI7nrXH7ks78==", "sMDODAL8o9Q6dd8YefxXeq==", "VS4crb==", "IUZ4Xzhof1Q3URxvrq==",
  "1sK66FkYdW8uFgx5yMWHjm3ICGK3uc==", "l3om51a1Hb==", "NLCWlKnCRCCLhBp2",
  "V4NtXZsvhS4RveeGBq==", "rn2oxbmxXkXsTH1eKH9lT+Kq", "uZjSlmuBCCK=", "vLz/",
  "c3lxl9btRZCxNo5KuFSD1b==", "f4P+56k=", "EeUrHq==", "xb==", "VU+mp17IipF=", "HOOT",
  "F4y8Vna5k2JWHWZ=", "SLZ9Wq==", "LRfssHpSKhR=", "VVB3ptq=", "j0tghGv9c+rNDq==",
  "fMS0PMcueSD=", "e9PbiqZ1yhD=", "7VUMRPysCPCmlM+Xlc==", "7JiavXg4f/eDf/Ud", "qR6z",
  "vAelPLpAhdUWhJpdP56=", "7LBxQEc=", "3XEF", "3iDid9u2UCZ=", "vgEJhLXU",
  "fdsd7g4q/GrgfCcIVvF=", "NBywPK/Juyumf/psu8==", "Ekbd7ZZ=", "qvF5vq==", "dc==",
  "g+P4kMhfD67osImjCE632g5z", "o8zMrc==", "lxMd", "FZdQ68==", "XHkb10B6", "/VHS98==",
  "cqbldFQn", "KFJ6Svyz", "4QST", "gzCjLb==", "hXgyuti/Rtvp", "xsh45jWFT8==", "l5pZcIlU",
  "fVU/5VibTJy+hjik5b==", "03FmQlnG", "ZNeD0OqhSSMZJANpisr1xJZ=", "5fYh3b==",
  "Ct+lTBR/NPg5hLCDh/6=", "pJAKfWF3nO7HJ1gsdvvq5b==", "swEOSkz2rjPQ", "wXKARlT=",
  "iOpWC5hRTPot5CgL", "beKM9r7ZDtD6O0Gj", "aaiVd8==",
  "sopTrNT5MZwTrZgAC4b8EEkw6A7P452p3XFqjvWgCc==", "nhww5q==", "nrel/oPU",
  "Ckxy9XAQnEUihhdMYSugiDWPDBSjbFQOeb==", "icWFst1ND2Qx5wgoR8==", "FBgz7vDZ", "ff9m3b5=",
  "2/9=", "MoRlGGz6", "XC/s", "SWITV56jbA6AHkF2B3gi7kBnibm17AsTRr8=", "uqDm0uR=",
  "ndiJcAv0N8==", "7e1W", "m2qqPeOhDxqWsjUNgb==", "c6f8l+/AzmzgYq+VNoDgb8==",
  "rtvMCOiulO+SiAU5f8==", "hLzShPyaut6=", "Mva1hGBt", "l5vWfCTDNCi1NBij",
  "cdVcQvEPawDDUVz9aWeLVuPAtnKVApLprGtO", "vrEPNc==", "TMpZPAUXfLMPrJuP", "VW39zalmH8==",
  "doGG", "hXpbu8==", "FvNHZTdMuPb=", "qJeyziShjD+UZpb=", "u/vFRApYfy+5CJpd8r8=",
  "WnN0zuHhuzSWj+1gTVMILK9=", "JxgxhTD=", "Ki4ihaYh79Z=", "bKzkj9oHFj5=",
  "vOujCBvWR/idiPM1P8==", "H9/qCfWG+YBM", "UJRMcc==", "Qc/D", "LDuVyL3M", "hAMZ",
  "r4fdHSMGSc==", "zQYcZWnbCxGbINB=", "RJzZ7Vgjkd+ZlJpKuX+oNHoU",
  "c59HeK2PkhVsJyYe3cjmhV2MvUjp", "3oVOGIT=", "Eiwu9VUCk8==", "HTi9oApHkeD=", "XZY6", "RrR+",
  "DJkB6gFD/e2al2iMdGyyFToA", "lZPo7gC+", "i1MZ2gZ0xgrtOaT=", "jc9s4UgoHv6=",
  "rXvDfdgOTKykPpcn", "axnTQq==", "1YkXbl0js9VQohMRQldoBqpQ9nZ=",
  "fBpP5EVmE8F7ZvnfZx0XSBy3cshTmmS3PTB+BPS/",
  "IoR69n41aelA+22+ViQT11UOWlpcfkS4TZjwjlTikr0K5FOf9q1Qr6+0coz+AT1sgQkFWQOnUgZX1sSQv5hESGKkVBE9h3hcI083Xl2lpG4yhiBalhAOoDGNPWa2/4T=",
  "XDkhb2iS", "fA8mKb==", "rLjkh26xGVT=", "jvZl8JiTDR7f7yFHCDvXwCC3", "jVIh+iq=",
  "bEsq9oVIJ8==", "N1jwg8==", "Gq==", "t/9B", "QnLOpAF0P6b=", "cS/PkBO/ebQf",
  "P54vCvY73AEgck7nTYvxHvCQkOeFEc==", "ivi5udyW1cbj5TQiWsDTepJmytUepq==", "cTtI+uDLra9=",
  "84F8lGS8uoFWKb==", "uJC/RJzS7ACjhLp47Hk=", "gHm9", "1TIwDdVz6XT=", "5tU2uB9=", "krM+",
  "6v/I1k68DZoxKUD42qONpV9=", "fQi4u8==", "yPEqb8R=", "NnfReB8=", "UcMlHh5mkTZ=", "pqDJ",
  "uLpOhMin", "rluusjnX9oe20nY3ZyAKkS8=", "DYswyeb=", "klD7Lq==", "KBP0", "NtRq",
  "L2I96m+htn9=", "rt+jhXoRCyuWrPiKRP9=", "UkXoDGbjTSLhKirw", "QgGw", "6iSAR6q9iD8QKc==",
  "i1AG4BT=", "zgmZTWgu0oZ=", "DYdan8==", "keTuyDboLZSt9cTkcA35bq==", "HWHL7LB=",
  "h5n1fyMnTAMRfrCp", "bwFEDmer", "vd7FK9R0oPWagdXFhYzyR90DA5hfjPu5gYrR",
  "C/g5fC+6vCuyktuRkVK=", "gsmssdc=", "oY99INb=", "dVYbU2dx", "3AtXQQ5=", "zNHpIq==",
  "MUWH0UUL", "O8e/L7FG9vXms66RG1R0PI5=", "ewBO", "qRYde8==", "Anvsa65lC45=", "0YJY0XD=",
  "jTyHlaILjgc=", "qCnEioi3bG8=", "fMLqdcc=", "l0MzwKT=", "7qxNNbQJt+/=", "oCUkfMB=",
  "kNhPUe47Jitn", "5KXPTSC3fc==", "/zABR8==", "ZnSG8ni01kXbVh4AT2yAub==", "HnCt7rvtvMvrK8==",
  "PMT=", "zocwrvnw", "GJp36KZJ9a5=", "WpVdOdfb60i6g8==", "cs5T", "Sfokvq==", "8Hjg82cVaq==",
  "GPMvltvJrpvB5HorR/F=", "Lso2RNg9ZgT=", "wGGPx6JzQc==", "aXc2",
  "fBp58KzRt/vMCBCdCMzf85vgCCk=", "XVOJlq==", "vwcTo6X7Nmmd",
  "z5INMJBPlWjks2HcDBD9neTQdGNKB/AInGtp5BhBm2NXYvW8/BOa9UwxTnelcA0WGLD=", "7521r5eV5/UshCof",
  "J1j4Bgco8m5G", "Hm6ANalY6AmNcb==", "SRIZvbyhvc==", "tGypOTR78LK=", "J5l90w6=",
  "6K7gt9hzQzLb", "oMtHjQ7t", "FFO1s8==", "EQQhnI2QlUNVqw9Ma8==", "OZpjy9F=", "lt+UltgO",
  "Unl7Gc==", "hYeiN8==", "mZPWqc==", "75prNdvU5/ojvyolu//=",
  "Ztqy316MLxaJKy+Uvl/XbTjfJM/95RxJ", "Pc/ZXsK=", "1n6kNovj", "fsJMoxD=", "pdH5Mb==",
  "8JzZ7VgblPiWut6=", "m9W4jc==", "dLTMgAF=", "PrgHrj+Af5yWRJythb==", "lo9r4OvMX2T=", "YOeX",
  "k5MVk/CLrjiZ7BUnNM6=", "2lYwSTbZX+6sFOol87LlBlCO+8==", "32cBuwiw5agWdTmCbMa/Q5R=",
  "afVQR12pqtJ6p8R=", "CHgYlPUBvdhpuJnirAB=", "RAzJfCpvkAujN5ufrPB=", "nfzKis17",
  "rJkkXXL+85IF54+HKhE8MEc=", "hr2HaPXUZA/=", "RHCo7LvpTAyU7q==", "5JC/vLCORb==", "7dYg4qq=",
  "ltkbkdhSib==", "RJzZ7Vg2uPvWlt8=", "l5OJllA4eGyIM7r8QPb0A5sJ", "N4z6ErQS6b==",
  "efI8SItOJ1/+8EpdQqzgfi1ff2o4ckg/rhE3", "ehFGFexUTSJaWMLwCeh6+9m5kl2q8n5=", "ulPP",
  "5W+80x8tvWcG4vpubTNkksD=", "+qMcmfqn6gHh", "oYld36WQB4/F", "5uTYlR/=",
  "f/RDRJ2H7rhelHqniOc=", "vApSuBuoTHi/8Pejuti/7Vg1uKiZRtiO", "8lRXMBF=", "2vMvX8==",
  "l8Id98==", "Wccj3pUarh9=", "+NynRXQBq0R=", "8eyYV+hhaaU0/b==",
  "JQR/8l4cWFFcZUSmxioQqMHQksL2k1qiHHSgg0l5r0ttQx/5xYz5Acwdaiey8W+fW/KI1cWYy436jM8ZRaT/ZyXtElfZJvGcxqVVJbGVRui83DMOb6AH0MShaDh5g3J+YO+H+T9HWbI3+XF7qVggkLFKvLx/xk4lAArrWzJt4FTPkBQY6lkNxpqZSgRo8MumIHcK0ZpDnfk=",
  "IecTz4SahrUMjN0hrF+a0dXW/eu0lrEA/vMY8XpV", "8hnGfLfw3gR=", "Ozl3QWt9", "KB1N",
  "rBr0t1MR4vNsqQT=", "vLpJlPvpTq==", "vatr", "BWkVI3R=", "8VgpRtvp", "YZXU",
  "GlqAxr9ie9eF3YWvXH6=", "Ez+J0M6=", "2hHC3mI83LgRq2ukZwc=", "YBZXIEd4+8==", "cq==",
  "PXhlPPKbNA2WNL6e", "lHo5RAUkvCCZ5dCXCc==", "rLCETc==", "nz7S2H23zq==", "vBS7",
  "oOEwAPjxAc==", "mgA3", "B4tbq6EllLDRpQ64joiyBSzKm8==", "z/H5Lqo9PCFJ9e6Adyew",
  "IXmwuuWzF8==", "CdpO8JiaGrMUhAhE", "V0qxGsitE46kIwy2BpfVO3Z=", "mVq3b6UGac==",
  "KYxGiMBDQKy4XQg7j8cd", "UQv74b==", "vBn/", "V8tOzvGRO5T=", "mOUA9jD=", "oPng2RYr",
  "3klgIfnyYPzWbzEPMRAejlNK+M66rYSAXTnhcLNONMpTXc==", "4Q2y", "PMo5PAnp8HMXhyonuc==",
  "7LyOhLMaTJCU", "DidV+nnEqQD=", "bM15O1b=", "Kdw7ks9lNoRZtApMaoXX5IB=",
  "EAyI6d23wa0qOFD/HZ9CLcnwSFwy+WrWgEub", "bjmj", "tJuoTACfuPy4hLCs7Lzjlb==", "o02e9kAanc4n",
  "e1GDROc=", "bb==", "bSCVFlPsoLm8bJGo", "tV+y7AiF5Xgphp+ZRtpo7AT=", "s/o2NP5=",
  "SKTQO6h6P/1sSV6SqDsrTc==", "XjvANUqRsmOVt8==", "5cGv", "oh4guLHJr6K=", "sr689BN5Q8==",
  "uAMjlPeHhLMa", "k/Mtv/yRhpgjuyvK", "aDso9o5=", "EkFS9neMqnsKFQvXDyfM54F8J4fOhZ6=",
  "zVQLxAT7i2SJ4Nv57/VdV6nl2QR3jqV3gbK=", "vJC/8JUo7LvEuPD=", "w3v1LE5mqc==", "Xw2hzE8=",
  "oRpXvAF=", "PMjTYG2KXiisKMkg5/Z=", "ztOABtAFs5JX", "7zOKTwk=", "hNwE0Vgzc43u",
  "uoewSSbreU2Z", "lAMSutipu8==", "qMRL78==", "8jiyRjpK5rBD7dCV", "F0ht",
  "vYHMNzXG7SFOc4WSlXOc", "x+LMlI9=", "prjLz9Mm2o7B", "mIFUmqBZKSsSuTR=", "9DIY",
  "0bjRi8jfXN49uc==", "veq6Q0b/", "EWgXzAK=", "lU15zzhooAk=", "Oi45Rc==", "PKMGoSt9l86=",
  "D5UNzDR=", "VbKWR4/dwhq=", "p/NcS06ttPk9J+xHk+7iFwk=", "TGh+FFQbkeR=",
  "vLuF8VUnrHvw5ykD7Jb=", "0mU2Rb==", "NYqs9jq=", "oeOIgqD=", "FlCzQVb=",
  "i1iyKgnAmhMksdg3RqFYpcmHC/MxpLaxdqBROBB8027tNuJ7fA2h6fCxNa2Kl9N4wlB9Wbc+L4IvrU4fGoiIHzqzB24WANw9XiYwmrQsQPgWo8uO",
  "caOv", "5Ba4tL6lUG6p5HSYRqgE", "aMAzj/v5HvCMdBPtvbAf26wn2aoZZXq0TUX1T8==", "4z3Xe4X5",
  "jFulrGKEeBfs4m3L7NRQ8jkb", "7rkVpGJhWWhHec==", "7LbDCjgSGBp6PL9e", "ASyNDjiF", "+IytnLBK",
  "CAYukOqt47Zh", "C3gZNGZv8do/w6YNCQZM", "4QPrTQT=", "RjuovLnp7Cgo556euq==",
  "hPUiuWphRkJ67QGGBVPUTb==", "NybF6IM1V0Z=", "GFP3nPjBAq7s", "c9Hm", "TtDUTtSq",
  "znJDET35kZ5=", "S8==", "+I51uUqe1E99aw94", "O8Pe", "5KnV7/h0uVhkTtMv",
  "s50ukFA4A7XML6aK1Wyy71Rxqc==", "/zWJ08R=",
  "47L1Fj6bum4FzMeNcBEkE9CwEAxGRdJf4Sp/1EyC2DTLwuf7Eykwuq8MVW0+Xc==", "NpiCN5iUiPvv7p+XhyF=",
  "zQVFSa8=", "wyelG8==", "CKimlLhWupRn5/kD", "UFCQ/85=", "qnsA0F+FkY4OPdOlUHKqX8==", "5x5c",
  "QJCgS5qtjaxz", "DgYk1xYVBpy+WkwfN6lt", "g/P2NhEMiJq=", "6/sjnJ4IwjQFd8klRb==",
  "Nw+FFkzhl3PLZc==", "wplMytBwrC1tgq==", "qkvIGPh7",
  "ZepJXjFRX28Ph90P7uStLyU4qC3zfjzpDUuund+luUcxNnT=", "sb==", "DUGmg3iwr+BhbWc=", "STqD3q==",
  "y06O0Lbzjq==", "WSUr1RvhJ19=", "TACnhPpEu8==", "YJA832Umlhq=", "qujl6yk=", "233xMo8=",
  "v5WN", "46Ni", "CBeOlARyiVu6vL2+TjT=", "8WT/iXiAAb==", "PIAfp8==", "llu3omRi0EdFsnUmC8KQ",
  "RIAbsjc=", "ZAy+iguK28RZ", "mrS0d/OFipjn", "Xmc=", "zl3XlwTYKgDuBjumeIHfrxMLwbTs6ZZ=",
  "6jP2MdU0tnZ=", "b63N4gA5lsznB0+E", "rvI04tbnUAotJDmW", "hAvKPCuSRjvR8/uU", "aqbppc==",
  "gED1Sgeh3fKw72w6PWHXVu4OeNp0jJVbQ+82LHT5pQlCjk0qX+fJ8B8v/O9dFOfldEt8JlgVt+rk", "62CHDb==",
  "8fJPeIlZFUP/4buNACrd", "ObGH", "Ljcag8==", "/X0rlKXDMReBlO5+5xJLnCS+O8==",
  "gkJvlQtOpwFIFfT3NL3MPraEiLS7CqIbXFc=", "AbQeeE7Om4AyLvR=", "DPILfq==", "QHp4Cl9=",
  "YsK3Pq==", "Ti0bGTdRMKKUpc==", "u/yCCyCDPp+fiJDDvc==", "TJUpuLnphXiWN8==",
  "5yv+5pvQC/pGvBzt", "St5LXiMA", "cbzzmFwt0QQ2", "AoJXPc==", "oPocr1B2S6aAs+7EVb==",
  "ppkGpxbw", "1vFFaYVT", "NVkcmbiQpptKK8Oo", "gs+aL3c=", "2wVrBr53S3EEAkEeJgCFV2mnFesJf9Z=",
  "ym1z2oJ7PgNcB0qZyo10Nz1zmDTtKw9=", "/o1dQzTeMhrbrc4u8Q1+XNb=", "TVv4TBiFRtgHu5Mo78==",
  "5e2sIc==", "LrngDw8=", "BBis0JDQEGRm", "UH0FZ9jU/b==", "pqmuSUT=", "vKeg5/2UC5ovTtMM",
  "6pXaa8==", "Zk+pkc==", "2IZDmd4eX8==", "Z4RahWTQHpLLY36+XS5mab==", "GNGdgVz2XAB2EG00+bju",
  "S4EU8pAeWgPJ2c==", "DElcd4Z6ohOyvbJH", "MDP1hnR=", "8jg8rj+SRKkeiKen", "/LcsfFoA0r6=",
  "4XFGgjTiukBOuTSG", "nLoRgBpPGcMb8c==", "pfMq66rtVYd88mUIl3Xj8Judm6T6Uc==",
  "CLeGCMiGvH+JCHkn", "XRYdNbIWe/5=", "GFQsq8==", "/db+Zb==", "02P8sjNnvpQ1",
  "CP9efVcerP2Ffrig", "U0/tCq==", "+XiO1Yq=", "Tcm4Xice/b==", "Fzqw5q==", "HP/UJ05=",
  "fMolqvHuQNt7vnL0atYRaMBFYD5+m8==", "wrcssr/mtCtdmtGxeZkHem1R", "kCpoNj6ylV+oP5vH",
  "nj6DOc==", "ba+HlrzIbHkX", "5fpfozfcJsIE", "+i0aGb==", "uAMjlPeHlti/lLpO",
  "q5DYOtL9UQYE0LtkGgy1Ys1pgrg6", "7+ZljQSl15YD", "RtR9On5D", "TagmfqUAEp2FjD8=", "NJnWII8S",
  "jc2b", "Lb8aKdlQXq==", "USqEE/XUJsKrTg6=", "R6lz3egGGO0Uaoe/eW8=", "TQoxBS5d", "WNACMT/=",
  "/ct6LcB=", "L0dlgiFh", "RyWnmctQ", "4q/C1KrnN3jWMGUu", "evfICb==", "OzqmIgBjpedk",
  "n8ySY8==", "hv8a/cURJ0bzpQo5owBxKc==", "TMTyf5nvlpCdG5yG", "YKuV/9y/b7k=",
  "3EZESwA0y5tJQXyVuJebcq==", "qonNhPxxO65hUFs/", "dSmOyjNb", "AIak2fpWmgK5W+T=", "ZimHK8==",
  "Q+1MSjubibRt", "dNax5Ek=", "RyNM0SmOdXZ=", "iCsRFq==", "xPrfJTeH", "Pgdgr9sXp4B541B=",
  "qRuHx4RRzE1SKeK=", "lAMSu8==", "wFRG4Y0x/HWhekPjT8==", "4NhIbjgO5sR=", "1dGSpwk=",
  "yityKXmwnnD=", "e6xhXQex", "Fbytg47R+S3g4668Pajj8DzgXLlAfbeEgazgNq==", "XSIdFWK=", "muiL",
  "vJC/8tC/7/n4RPvd7JeAlPhO", "7/6/fdqeROgkrjhi5CB=", "Y8CJaq==", "WHcpSc==",
  "iANGjLfZqLMrww5sNLksghDTrfkrUZXoHyjPLrYd8GuL3U3f7ac=", "CrWWLwNmwU0b",
  "wOj+tdKHc8N45HgEI9f/yHehQeOg4c==", "krVeuq==", "qKv8ANOlgILiiOdY", "X5s+1qpdHM//E2BVzrZb",
  "Ku2r6bmV1bxmssXi", "TJC/7PC/RtvURAnp", "j3hb48==", "HE2WXnT=", "vCFwiQaxTLZ=",
  "8HxnS3enbc==", "415DsxL+Jb==", "7LzUuXi/TApSub==", "0dOOmUXF3XqHcsAQ5mGBVb==", "HCeAk8==",
  "LZevPVD=", "2ChIaS7j6JZ=", "DqiOguzFF8==", "E/JocLk=", "IC/JpFJrbLi9Kc==",
  "Cm3JPVgzsRqbEQlxLkhlleseJxyc+QsZhvKhK8==", "P5lJJPjt", "akbDZUSeX07rAB5=", "+D9mNIB=",
  "iQFU2E/=", "72QTP0k=", "7YUy6gVbZ86=", "gvY7sKalodRb", "OLpdTV0seOB=",
  "whCWJdJ5PnUvO3wvX8==", "NcyC4kcAm5vwAqnxF3eSzb==", "cKbdI8==",
  "eywonnIjVvpWyWAg+EwFKtMTCLVB/OK0U4IL8c==", "v19ds3dutJthGSIwB9fVlqpG+JxDql7CN1T=",
  "5XgpuLpjhLpJuCvURq==", "Qxb7jtF=", "hPebRPiW", "Gp3wDSXAaHB5", "X+EhNzZr", "ynql/c==",
  "k++Y1r5=", "5BMKuykOCdUvlJCO78==", "ZNlP19bXWv2c", "J0KZ6YMAxq==", "C1Wf8EX3LluZoq==",
  "q6J68Mi2", "wbedU+1ean6=", "Pera8clFI9xB07Uu5A42H6jLOSKx+99o", "/pdpc/lh", "7NcejpJJcGxQ",
  "SyffZb==", "2dawX+qJAOOEpPoC6cOq", "mQbE7qP0yr+D", "8AuX0q==", "BqqdKr/=", "ynz+GhK=",
  "qwNpsRNP3SuT9wD1zyfTYb==", "uLqJlM+vuL/=", "S1h3W4GI48==", "XGbM", "uApEu5hylC+y7AiF",
  "2b==", "RxWgyTHy0C8d18hoi5G7rY4pSyVJKFEZHdqp4b8lCb/=", "gs6pCBb=", "u9FK1vCf", "k2PQcOR=",
  "LNJ/Z+Z=", "Zzlzre+UAq==", "Ggv/", "QF+AzYkEi8==", "16L48q==", "cH15jT8ubORUe8==",
  "CsQcKpzzUc==", "WI8+LxvxBMYSuKMTBqk=", "DgzwxdwiWq==", "TXuevj+akBibidum7PF=", "acNpK8==",
  "tr0gSq==", "TJNCjz+z1ybHLYF=", "lC/LIFdq", "eeYPhCza", "vPeURAnp", "sG6O08te", "RLNNc8==",
  "FGW95kEPBfbmLgZ=", "BtME", "Z4cWOb==", "UxqI", "C4cb4YrrAFIk", "vBvbith2G5e/lX+d8J6=",
  "G2cZXi/JLDKyNczC97oBDhn1S4/ot8==", "iTo/rZxo0AF=", "k7+iNlR50dCHAc==", "Dso8B/2ojqbA",
  "x9Br+L0I6JLorlQe", "ADfe", "2DlyCtgS", "JQEREWB=", "60AtRgq=", "8Ctr", "igKjSVT=",
  "CATOfJpsitpfhPz4vPk=", "QNd1WcUxd5/hVTpm", "4mztrb==", "KMjYmJD7nt5=",
}

for index, value in ipairs({ { 1, 4621 }, { 1, 2839 }, { 2840, 4621 } }) do
  while value[1] < value[2] do
    v1[value[1]], v1[value[2]], value[1], value[2] = v1[value[2]], v1[value[1]], value[1] + 1, value[2] - 1
  end
end

do
  local insert = table.insert
  local floor = math.floor
  local len = string.len
  local char = string.char
  local concat = table.concat

  local v2 = {
    h = 29,
    T = 28,
    ["+"] = 1,
    v = 17,
    ["3"] = 63,
    M = 5,
    c = 0,
    B = 4,
    Y = 10,
    I = 59,
    X = 7,
    l = 26,
    L = 6,
    n = 49,
    C = 21,
    ["6"] = 8,
    P = 22,
    ["/"] = 52,
    t = 23,
    K = 36,
    y = 53,
    ["5"] = 20,
    F = 40,
    A = 38,
    S = 46,
    U = 33,
    g = 9,
    i = 13,
    e = 57,
    u = 25,
    s = 2,
    k = 12,
    m = 11,
    r = 19,
    ["8"] = 16,
    V = 55,
    H = 39,
    Z = 44,
    W = 43,
    E = 50,
    ["9"] = 60,
    Q = 31,
    b = 48,
    w = 42,
    z = 61,
    O = 51,
    p = 37,
    ["4"] = 47,
    j = 35,
    o = 41,
    d = 3,
    ["1"] = 15,
    ["0"] = 58,
    f = 18,
    G = 14,
    J = 54,
    ["2"] = 45,
    ["7"] = 27,
    R = 24,
    a = 34,
    N = 30,
    q = 32,
    D = 56,
    x = 62,
  }

  local sub = string.sub
  local v3 = type

  for i = 1, #v1 do
    local v4 = v1[i]

    if v3(v4) == "string" then
      local v5 = len(v4)
      local v6 = {}
      local v7 = 1
      local v8 = 0
      local v9 = 0

      while v7 <= v5 do
        local v10 = sub(v4, v7, v7)
        local v11 = v2[v10]

        if v11 then
          v8 = v8 + v11 * 64 ^ (3 - v9)
          v9 = v9 + 1

          if v9 == 4 then
            v9 = 0
            insert(v6, char(floor(v8 / 65536), floor(v8 % 65536 / 256), v8 % 256))
            v8 = 0
          end
        elseif v10 == "=" then
          insert(v6, char(floor(v8 / 65536)))

          if v7 >= v5 or sub(v4, v7 + 1, v7 + 1) ~= "=" then
            insert(v6, char(floor(v8 % 65536 / 256)))
          end

          break
        end

        v7 = v7 + 1
      end

      v1[i] = concat(v6)
    end
  end
end

local dist = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()
local localPlayer = players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")
local defaultChatSystemChatEvents = replicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")

if defaultChatSystemChatEvents then
  defaultChatSystemChatEvents:FindFirstChild("SayMessageRequest")
end

local remoteEvent = replicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent")
local localPlayer2 = game.Players.LocalPlayer

local v12 = {
  ["102228729296384"] = true,
  ["140242176732868"] = true,
  ["112809109188560"] = true,
  ["136323728355613"] = true,
  ["115026634746636"] = true,
  ["84116622032112"] = true,
  ["108907358619313"] = true,
  ["127793641088496"] = true,
  ["86174610237192"] = true,
  ["95079963655241"] = true,
  ["101199185291628"] = true,
  ["119942598489800"] = true,
  ["84307400688050"] = true,
  ["113037804008732"] = true,
  ["105200830849301"] = true,
  ["75330693422988"] = true,
  ["82221759983649"] = true,
  ["81702359653578"] = true,
  ["108610718831698"] = true,
  ["112395455254818"] = true,
  ["109431876587852"] = true,
  ["109348678063422"] = true,
  ["85853080745515"] = true,
  ["12222216"] = true,
  ["105840448036441"] = true,
  ["114742322778642"] = true,
  ["119583605486352"] = true,
  ["79980897195554"] = true,
  ["71805956520207"] = true,
  ["79391273191671"] = true,
  ["89004992452376"] = true,
  ["101553872555606"] = true,
  ["101698569375359"] = true,
  ["106300477136129"] = true,
  ["116581754553533"] = true,
  ["117231507259853"] = true,
  ["119089145505438"] = true,
  ["121954639447247"] = true,
  ["125213046326879"] = true,
  ["131406927389838"] = true,
}

local v13 = {}
local punchPrevPlaying = _punchPrevPlaying or {}
local blockPrevPlaying = _blockPrevPlaying or {}

local v14 = {
  "126830014841198", "126355327951215", "121086746534252", "18885909645", "98456918873918",
  "105458270463374", "83829782357897", "125403313786645", "118298475669935", "82113744478546",
  "70371667919898", "99135633258223", "97167027849946", "109230267448394", "139835501033932",
  "126896426760253", "109667959938617", "126681776859538", "129976080405072", "121293883585738",
  "81639435858902", "137314737492715", "92173139187970",
}

local v15 = false
local v16 = false
local v17 = false
local delayBlock = 0
local v18 = 18
local v19 = {}
local v20 = false
local edgeKiller = 3
local v21 = 0
local hdtSpeed = 5.6
local hdtDelay = 0
local v22 = { "c00lkidd", "Jason", "JohnDoe", "1x1x1x1", "Noli", "Slasher", "Sixer" }
local autoPunch = false
local flingPunch = false
local flingPower = 10000
local v23 = false
local punchAimbot = false
local killers = workspace:WaitForChild("Players"):WaitForChild("Killers")
local v24 = 0
local v25 = 0
local v26 = { "72722244508749", "96959123077498", "95802026624883" }

local v27 = {
  "87259391926321", "140703210927645", "136007065400978", "136007065400978", "129843313690921",
  "129843313690921", "86709774283672", "87259391926321", "129843313690921", "129843313690921",
  "108807732150251", "138040001965654", "86096387000557", "86096387000557",
}

local animator = nil

local function f1()
  local character = localPlayer.Character

  if not character then
    animator = nil
    return
  else
    local humanoid = character:FindFirstChildOfClass("Humanoid")

    if humanoid then
      animator = humanoid:FindFirstChildOfClass("Animator") or nil
    else
      animator = nil
    end

    return
  end
end

local v28 = { "106014898528300" }

localPlayer.CharacterAdded:Connect(function(character2)
  task.wait(0.5)
  f1()
end)

local playerGui2 = playerGui
local punch, block, charges, cooldownTime, charge, clone

local function f2()
  playerGui2 = localPlayer:FindFirstChild("PlayerGui") or playerGui
  local mainUI = playerGui2 and playerGui2:FindFirstChild("MainUI")

  if mainUI then
    local abilityContainer = mainUI:FindFirstChild("AbilityContainer")
    punch = abilityContainer and abilityContainer:FindFirstChild("Punch")
    block = abilityContainer and abilityContainer:FindFirstChild("Block")
    charge = abilityContainer and abilityContainer:FindFirstChild("Charge")
    clone = abilityContainer and abilityContainer:FindFirstChild("Clone")
    charges = punch and punch:FindFirstChild("Charges")
    cooldownTime = block and block:FindFirstChild("CooldownTime")
  else
    punch = nil
    block = nil
    charges = nil
    cooldownTime = nil
    charge = nil
    clone = nil
  end
end

local detectionRange = v18 * v18
f2()

if playerGui2 then
  playerGui2.ChildAdded:Connect(function(child)
    if child.Name == "MainUI" then
      task.delay(0.02, f2)
    end
  end)
end

localPlayer.CharacterAdded:Connect(function() task.delay(0.5, f2) end)

local forsakenScriptWindow = dist:CreateWindow({
  Title = "Forsaken Script",
  Author = "By MBHubRoblox_official ",
  Folder = "Yameme Hub",
  Icon = "rbxassetid://82048629403123",
  Theme = "Midnight",
  IconSize = 22,
  Size = UDim2.fromOffset(550, 400),
})

forsakenScriptWindow:Tag({
  Title = "version 1.4.0",
  Icon = "upload",
  Color = Color3.fromRGB(145, 345, 786),
})

forsakenScriptWindow:Tag({ Title = "Free", Icon = "check", Color = Color3.fromRGB(124, 231, 46) })
forsakenScriptWindow:Section({ Title = " || Info ||" })

local homeTab = forsakenScriptWindow:Tab({ Title = " || Home || ", Icon = "house" })
local helperTab = forsakenScriptWindow:Tab({ Title = " || Helper || ", Icon = "scroll" })
forsakenScriptWindow:Section({ Title = " || Main ||" })
local effectsTab = forsakenScriptWindow:Tab({ Title = " || Effects || ", Icon = "star" })
local itemTab = forsakenScriptWindow:Tab({ Title = " || Item || ", Icon = "box" })
local miscTab = forsakenScriptWindow:Tab({ Title = " || Misc || ", Icon = "menu" })
local randomTab = forsakenScriptWindow:Tab({ Title = " || Random || ", Icon = "plug-zap" })

local generatorTab = forsakenScriptWindow:Tab({
  Title = " || Generator || ",
  Icon = "battery-charging",
})

local achievementsTab = forsakenScriptWindow:Tab({
  Title = " || Achievements || ",
  Icon = "ribbon",
})

local emoteTab = forsakenScriptWindow:Tab({ Title = " || Emote || ", Icon = "meh" })
local musicTab = forsakenScriptWindow:Tab({ Title = " || Music || ", Icon = "axe" })
local funTab = forsakenScriptWindow:Tab({ Title = " || Fun || ", Icon = "smile" })
local aiModeTab = forsakenScriptWindow:Tab({ Title = " || AI Mode || ", Icon = "bot" })
local visualsTab = forsakenScriptWindow:Tab({ Title = " || Visuals || ", Icon = "eye" })

local forsakenInfoTab = forsakenScriptWindow:Tab({
  Title = " || Forsaken Info || ",
  Icon = "user",
})

local autoBlockTab = forsakenScriptWindow:Tab({ Title = " || Auto Block || ", Icon = "shield-x" })
local survivorTab = forsakenScriptWindow:Tab({ Title = " || Survivor || ", Icon = "axe" })
local killerTab = forsakenScriptWindow:Tab({ Title = " || Killer || ", Icon = "skull" })
local aimbotTab = forsakenScriptWindow:Tab({ Title = " || Aimbot || ", Icon = "sword" })
local staminaTab = forsakenScriptWindow:Tab({ Title = " || Stamina || ", Icon = "user" })
local combatTab = forsakenScriptWindow:Tab({ Title = " || Combat || ", Icon = "bug" })
forsakenScriptWindow:Section({ Title = " || MBHub Channels ||" })
local tab = forsakenScriptWindow:Tab({ Title = " || MBHub Info || ", Icon = "video" })
forsakenScriptWindow:Section({ Title = " || Data ||" })
local systemTab = forsakenScriptWindow:Tab({ Title = " || System || ", Icon = "cog" })
local settingsTab = forsakenScriptWindow:Tab({ Title = " || Settings || ", Icon = "settings" })

local uncheckedExecutorParagraph = staminaTab:Paragraph({
  Title = "Unchecked Executor",
  Desc = "please checked for you executor, and stamina will unlocked!",
  Image = "x",
})

local unlockedStaminaParagraph = staminaTab:Paragraph({
  Title = "Unlocked Stamina",
  Desc = "go to home tab and checking you executor its really you executor has supported.",
  Image = "layers",
})

local executorSection = homeTab:Section({
  Title = "Executor",
  Opened = true,
  Box = true,
  Desc = "checked then you executor.",
  Icon = "code",
})

local systemExecutorParagraph = executorSection:Paragraph({
  Title = "System Executor",
  Desc = "scan you executor, if you not, stamina are locked.",
  Image = "x",
})

local checkedExecutorButton

checkedExecutorButton = executorSection:Button({
  Title = "Checked Executor",
  Desc = "Checked the executor, yameme hub has protect without that executor unsupported.",
  Color = "Blue",
  Callback = function()
    dist:Notify({ Title = "Wait for Check you executor..", Time = 3 })
    wait(3)
    game:IsLoaded()
    local v29

    repeat
      task.wait()
      v29 = game
    until v29:IsLoaded()

    local v30 = "Unknown"

    if getexecutorname then
      v30 = getexecutorname()
    elseif identifyexecutor then
      v30 = identifyexecutor()
    end

    for key, value2 in pairs({ "Xeno", "jjsploit", "Solara", "Zorara", "Ronix", "Luna" }) do
      if not v30:lower():find(value2) then
        uncheckedExecutorParagraph:Destroy()
        unlockedStaminaParagraph:Destroy()

        systemExecutorParagraph:SetTitle("Thank You :3")
        systemExecutorParagraph:SetImage("check")
        systemExecutorParagraph:SetDesc("Thank You so much to checked now you executor has supported!")

        dist:Notify({ Title = "You executor is " .. v30 .. " its supported!", Time = 3 })
      else
        uncheckedExecutorParagraph:SetTitle("Not Allowed Stamina")
        uncheckedExecutorParagraph:SetDesc("You do not Permission to allowed stamina!")

        systemExecutorParagraph:SetTitle("Unsupported Executor")
        systemExecutorParagraph:SetImage("x")
        systemExecutorParagraph:SetDesc("You executor has not supported not one anymore to allowed stamina!")

        dist:Notify({ Title = "You Executor has not support.", Time = 3 })
        return
      end
    end

    wait(2.5)
    checkedExecutorButton:Destroy()

    executorSection:Button({ Title = "Executor: " .. v30, Icon = "check" })
    executorSection:Button({ Title = "Support: ERR-EXECUTOR5931", Icon = "check" })

    local systemStaminaSection = staminaTab:Section({
      Title = "System Stamina",
      Desc = "there also system stamina are then.",
      Opened = true,
      Box = true,
    })

    local staminaGain = 50
    local staminaLoss = 10
    local minStamina = 0
    local maxStamina = 100
    local sprintSpeed = 27

    systemStaminaSection:Slider({
      Title = "Repair Gain Stamina",
      Desc = "input to gain with stamina.",
      Value = { Min = 0, Max = 100, Default = 50 },
      Callback = function(value3) staminaGain = value3 end,
    })

    systemStaminaSection:Button({
      Title = "Enter Stamina Gain",
      Desc = "enter to been stamina gain.",
      Callback = function()
        local v31 = game
        require(v31:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting).StaminaGain = staminaGain
      end,
    })

    systemStaminaSection:Divider()

    systemStaminaSection:Slider({
      Title = "Repair Loss Stamina",
      Desc = "input to loss with stamina.",
      Value = { Min = 0, Max = 100, Default = 10 },
      Callback = function(value4) staminaLoss = value4 end,
    })

    systemStaminaSection:Button({
      Title = "Enter Stamina Loss",
      Desc = "enter to been stamina loss.",
      Callback = function()
        local v32 = game
        require(v32:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting).StaminaLoss = staminaLoss
      end,
    })

    systemStaminaSection:Divider()

    systemStaminaSection:Slider({
      Title = "Repair Min Stamina",
      Desc = "input to max with stamina.",
      Value = { Min = 0, Max = 100, Default = 100 },
      Callback = function(value5) minStamina = value5 end,
    })

    systemStaminaSection:Button({
      Title = "Enter Stamina Min",
      Desc = "enter to been stamina min.",
      Callback = function()
        local v33 = game
        require(v33:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting).MinStamina = minStamina
      end,
    })

    systemStaminaSection:Divider()

    systemStaminaSection:Slider({
      Title = "Repair Max Stamina",
      Desc = "input to max with stamina.",
      Value = { Min = 0, Max = 100, Default = 100 },
      Callback = function(value6) maxStamina = value6 end,
    })

    systemStaminaSection:Button({
      Title = "Enter Stamina Max",
      Desc = "enter to been stamina max.",
      Callback = function()
        local v34 = game
        require(v34:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting).MaxStamina = maxStamina
      end,
    })

    systemStaminaSection:Divider()

    systemStaminaSection:Slider({
      Title = "Repair Sprint Speed",
      Desc = "input to sprint with speed.",
      Value = { Min = 0, Max = 100, Default = 27 },
      Callback = function(value7) sprintSpeed = value7 end,
    })

    systemStaminaSection:Button({
      Title = "Enter Sprint Speed",
      Desc = "enter to been stamina speed.",
      Callback = function()
        local v35 = game
        require(v35:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting).SprintSpeed = sprintSpeed
      end,
    })

    local connectStaminaSection = staminaTab:Section({
      Title = "Connect Stamina",
      Desc = "make then connected for stamina to good.",
      Opened = true,
      Box = true,
    })

    connectStaminaSection:Toggle({
      Title = "Alawys on Sprint",
      Desc = "make for inf sprint now.",
    })

    connectStaminaSection:Toggle({
      Title = "Infinite Stamina",
      Desc = "If you use the executor not support, i will kick for you.",
      Callback = function(value8)
        local v36 = require(game.ReplicatedStorage.Systems.Character.Game.Sprinting)
        local heartbeat = runService.Heartbeat

        local connect

        connect = heartbeat:Connect(function()
          if not value8 then
            connect:Disconnect()
            v36.StaminaLossDisabled = nil
            return
          end

          function v36.StaminaLossDisabled()
          end
        end)
      end,
    })
  end,
})

local playerInfoSection = homeTab:Section({
  Title = "Player Info",
  Opened = true,
  Desc = "you username player info.",
  Icon = "user",
  Box = true,
})

playerInfoSection:Button({ Title = "Username: " .. localPlayer.Name, Icon = "check" })
playerInfoSection:Button({ Title = "Age: " .. localPlayer.AccountAge, Icon = "check" })

helperTab:Paragraph({
  Title = "Need Checking Executor?",
  Desc = [[
if you need checked executor here i help you. 
 step 1: go to home tab 
 step 2: go to checked executor (you are unchecked executor likes say roblox unchecked age) 
 step 3: if executor support, everything is unlocked. 
 if you like help us to checked executor :)]],
})

helperTab:Divider()

helperTab:Paragraph({
  Title = "Need to kill Survivor?",
  Desc = [[
if you kill survivor, player has left cannot kill?, show this one. 
 step 1: go to leave yameme hub 
 step 2: reset and loaded again 
 step 3: go to forsaken-info tab and then player has here the name 
 so you can auto kill survivor/player :)]],
})

tab:Paragraph({
  Title = "YamemeHub | Discord",
  Desc = "Join Server for get script.",
  Image = "rbxassetid://82048629403123",
  ImageSize = 48,
  Color = Color3.fromRGB(125, 124, 123),
  Buttons = {
    {
      Title = "Copy link",
      Icon = "link",
      Callback = function() setclipboard("https://discord.gg/x6UjHmbh3V") end,
    },
  },
})

tab:Paragraph({
  Title = "MbhubRoblox | Tiktok",
  Desc = "Follower for get script.",
  Image = "rbxassetid://111696910286644",
  ImageSize = 48,
  Color = Color3.fromRGB(56, 0, 123),
  Buttons = {
    {
      Title = "Copy link",
      Icon = "link",
      Callback = function()
        setclipboard("https://www.tiktok.com/@mbhubroblox_script?_r=1&_t=ZS-98SWhkqoIs8")
      end,
    },
  },
})

tab:Paragraph({
  Title = "MbhubRoblox | Youtube",
  Desc = "Subscribe for get script.",
  Image = "rbxassetid://111696910286644",
  ImageSize = 48,
  Color = Color3.fromRGB(255, 0, 0),
  Buttons = {
    {
      Title = "Copy link",
      Icon = "link",
      Callback = function() setclipboard("https://youtube.com/@mbhubroblox_official") end,
    },
  },
})

forsakenScriptWindow.User:Enable(true)

local othersSection = effectsTab:Section({
  Title = "others",
  Icon = "menu",
  Box = true,
  Opened = true,
  Desc = "effects are him other what ever.",
})

othersSection:Button({ Title = "Anti Stunned" })
othersSection:Button({ Title = "Anti Night" })
othersSection:Button({ Title = "Anti Fog" })
othersSection:Button({ Title = "Anti kick" })
othersSection:Button({ Title = "Anti ban" })
othersSection:Button({ Title = "Anti lag" })
othersSection:Button({ Title = "Anti stuck" })

local soundSection = effectsTab:Section({
  Title = "Sound",
  Desc = "effects are him sound what ever.",
  Icon = "menu",
  Box = true,
  Opened = true,
})

soundSection:Button({ Title = "Anti noli laugh" })
soundSection:Button({ Title = "Anti secram sixer" })
soundSection:Button({ Title = "Anti john doe talk" })
soundSection:Button({ Title = "Anti ouch (Retro)" })
soundSection:Button({ Title = "Anti c00lkidd laugh" })
soundSection:Button({ Title = "Anti c00lkidd talk pizza" })
soundSection:Button({ Title = "Anti 2vs2 sound" })

local forsakenOtherSection = effectsTab:Section({
  Title = "Forsaken Other",
  Desc = "effects are him other what ever.",
  Icon = "menu",
  Box = true,
  Opened = true,
})

forsakenOtherSection:Button({ Title = "Anti 1x1x1x1 giltch" })
forsakenOtherSection:Button({ Title = "Anti john doe sptiker" })
forsakenOtherSection:Button({ Title = "Anti shedletsky sword" })
forsakenOtherSection:Button({ Title = "Anti text generator" })
forsakenOtherSection:Button({ Title = "Anti c00lkidd pizza" })
forsakenOtherSection:Button({ Title = "Anti 1x1x1x1 zombie" })
forsakenOtherSection:Button({ Title = "Anti sixer giltch" })

local section = itemTab:Section({
  Title = "Pick Up Item",
  Desc = "pick the item in bloxy or medkit.",
  Icon = "menu",
  Box = true,
  Opened = true,
})

local bringItemSection = itemTab:Section({
  Title = "Bring Item",
  Desc = "bring the item in bloxy or medkit.",
  Icon = "menu",
  Box = true,
  Opened = true,
})

local teleportItemSection = itemTab:Section({
  Title = "Teleport Item",
  Desc = "teleport the item in bloxy or medkit.",
  Icon = "menu",
  Box = true,
  Opened = true,
})

section:Button({
  Title = "Pick up Bloxy Cola",
  Desc = "pick then yourself bloxy cola.",
  Callback = function()
    for key2, value9 in pairs(game.Workspace.Map.Ingame.Map["Bloxy Cola"].ItemRoot:GetDescendants()) do
      if value9:FindFirstChild("ProximityPrompt") then
        fireproximityprompt(value9)
      end
    end
  end,
})

section:Button({
  Title = "Pick up Medkit",
  Desc = "pick then yourself medkit.",
  Callback = function()
    for key3, value10 in pairs(game.Workspace.Map.Ingame.Map["Bloxy Cola"].ItemRoot:GetDescendants()) do
      if value10:FindFirstChild("ProximityPrompt") then
        fireproximityprompt(value10)
      end
    end
  end,
})

bringItemSection:Button({
  Title = "Bring Bloxy Cola",
  Desc = "bring then yourself bloxy cola.",
  Callback = function()
    workspace.Map.Ingame.Map["Bloxy Cola"].ItemRoot.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
  end,
})

bringItemSection:Button({
  Title = "Bring Medkit",
  Desc = "bring then yourself medkit.",
  Callback = function()
    workspace.Map.Ingame.Map.Medkit.ItemRoot.CFrame = localPlayer.Character.HumanoidRootPart.CFrame
  end,
})

teleportItemSection:Button({
  Title = "Teleport Bloxy Cola",
  Desc = "teleport then yourself bloxy cola.",
  Callback = function()
    localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Ingame.Map["Bloxy Cola"].ItemRoot.CFrame
  end,
})

teleportItemSection:Button({
  Title = "Teleport Medkit",
  Desc = "teleport then yourself medkit.",
  Callback = function()
    localPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Ingame.Map.Medkit.ItemRoot.CFrame
  end,
})

local npcMESSAGESection = miscTab:Section({
  Title = "NPC / MESSAGE",
  Desc = "Make sure that use the required bro XD.",
  Icon = "menu",
  Opened = true,
  Box = true,
})

npcMESSAGESection:Input({
  Title = "Input to Message",
  Callback = function(value11) boom = value11 end,
})

npcMESSAGESection:Button({
  Title = "Execute from npc (Dosen't Work)",
  Callback = function()
    require(workspace.Map.Lobby.NPCs["Pizza Guy"].Dialog).t:CreateDialog({ Text = boom })
  end,
})

local filpSection = miscTab:Section({
  Title = "Filp",
  Desc = "please slow down with flip!",
  Icon = "menu",
  Opened = true,
  Box = true,
})

filpSection:Button({
  Title = "Script Frontfilp",
  Desc = "script in filp.",
  Callback = function()
    local screenGui = Instance.new("ScreenGui")
    local textButton = Instance.new("TextButton")

    screenGui.Parent = game.CoreGui
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    textButton.Parent = screenGui
    textButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textButton.BorderSizePixel = 0
    textButton.Position = UDim2.new(0.168367356, 0, 0.473272473, 0)
    textButton.Size = UDim2.new(0, 128, 0, 50)
    textButton.Font = Enum.Font.SourceSans
    textButton.Text = "FrontFilp"
    textButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton.TextScaled = true
    textButton.TextSize = 14
    textButton.TextWrapped = true

    coroutine.wrap(function()
      local instance = Instance.new("LocalScript", textButton)

      function dragify(p1)
        dragToggle = nil
        dragInput = nil
        dragStart = nil

        function updateInput(p2)
          local v37 = p2.Position - dragStart

          local udim = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + v37.X, startPos.Y.Scale,
            startPos.Y.Offset + v37.Y
          )

          tweenService:Create(p1, TweenInfo.new(0.25), { Position = udim }):Play()
        end

        p1.InputBegan:Connect(function(input)
          if (input.UserInputType == Enum.UserInputType.MouseButton1
              or input.UserInputType == Enum.UserInputType.Touch)
            and userInputService:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = p1.Position

            input.Changed:Connect(function()
              if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
              end
            end)
          end
        end)

        p1.InputChanged:Connect(function(input2)
          if input2.UserInputType == Enum.UserInputType.MouseMovement
            or input2.UserInputType == Enum.UserInputType.Touch then
            dragInput = input2
          end
        end)

        userInputService.InputChanged:Connect(function(input3)
          if input3 == dragInput and dragToggle then
            updateInput(input3)
          end
        end)
      end

      dragify(instance.Parent)
    end)()

    coroutine.wrap(function()
      Instance.new("LocalScript", textButton).Parent.MouseButton1Down:Connect(function()
        local character3 = localPlayer2.Character
        local humanoid2 = character3.Humanoid
        local animator2 = humanoid2.Animator
        local humanoidRootPart = character3.HumanoidRootPart

        if animator2 then
          for key4, value12 in pairs(animator2:GetPlayingAnimationTracks()) do
            value12:Stop()
          end
        end

        humanoid2:ChangeState(Enum.HumanoidStateType.Physics)
        humanoid2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        humanoid2:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
        humanoid2:SetStateEnabled(Enum.HumanoidStateType.Running, false)
        humanoid2:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        humanoid2:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

        local cframe = humanoidRootPart.CFrame
        local lookVector = cframe.LookVector
        local vector = Vector3.new(0, 1, 0)

        task.spawn(function()
          local v38 = tick()

          for j = 1, 120 do
            local v39 = j / 120
            local v40 = math.rad(j * 3)
            local cframe2 = CFrame.Angles(-v40, 0, 0)

            humanoidRootPart.CFrame = CFrame.new(cframe.Position + lookVector * (35 * v39)
                + vector * (4 * (v39 - v39 ^ 2) * 10))
              * (cframe.Rotation * cframe2)

            local v41 = 0.0037500000000000003 * j - (tick() - v38)

            if v41 > 0 then
              task.wait(v41)
            end
          end

          humanoidRootPart.CFrame = CFrame.new(cframe.Position + lookVector * 35)
            * cframe.Rotation

          humanoid2:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
          humanoid2:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
          humanoid2:SetStateEnabled(Enum.HumanoidStateType.Running, true)
          humanoid2:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
          humanoid2:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
          humanoid2:ChangeState(Enum.HumanoidStateType.Running)
        end)
      end)
    end)()
  end,
})

filpSection:Button({
  Title = "Script Backfilp",
  Desc = "script in filp.",
  Callback = function()
    local screenGui2 = Instance.new("ScreenGui")
    local textButton2 = Instance.new("TextButton")

    screenGui2.Parent = game.CoreGui
    screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    textButton2.Parent = screenGui2
    textButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textButton2.BorderSizePixel = 0
    textButton2.Position = UDim2.new(0.168367356, 0, 0.473272473, 0)
    textButton2.Size = UDim2.new(0, 128, 0, 50)
    textButton2.Font = Enum.Font.SourceSans
    textButton2.Text = "Backfilp"
    textButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
    textButton2.TextScaled = true
    textButton2.TextSize = 14
    textButton2.TextWrapped = true

    coroutine.wrap(function()
      local instance2 = Instance.new("LocalScript", textButton2)

      function dragify(p3)
        dragToggle = nil
        dragInput = nil
        dragStart = nil

        function updateInput(p4)
          local v42 = p4.Position - dragStart

          local udim2 = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + v42.X, startPos.Y.Scale,
            startPos.Y.Offset + v42.Y
          )

          tweenService:Create(p3, TweenInfo.new(0.25), { Position = udim2 }):Play()
        end

        p3.InputBegan:Connect(function(input4)
          if (input4.UserInputType == Enum.UserInputType.MouseButton1
              or input4.UserInputType == Enum.UserInputType.Touch)
            and userInputService:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input4.Position
            startPos = p3.Position

            input4.Changed:Connect(function()
              if input4.UserInputState == Enum.UserInputState.End then
                dragToggle = false
              end
            end)
          end
        end)

        p3.InputChanged:Connect(function(input5)
          if input5.UserInputType == Enum.UserInputType.MouseMovement
            or input5.UserInputType == Enum.UserInputType.Touch then
            dragInput = input5
          end
        end)

        userInputService.InputChanged:Connect(function(input6)
          if input6 == dragInput and dragToggle then
            updateInput(input6)
          end
        end)
      end

      dragify(instance2.Parent)
    end)()

    coroutine.wrap(function()
      Instance.new("LocalScript", textButton2).Parent.MouseButton1Down:Connect(function()
        local character4 = localPlayer2.Character
        local humanoid3 = character4.Humanoid
        local animator3 = humanoid3.Animator
        local humanoidRootPart2 = character4.HumanoidRootPart

        if animator3 then
          for key5, value13 in pairs(animator3:GetPlayingAnimationTracks()) do
            value13:Stop()
          end
        end

        humanoid3:ChangeState(Enum.HumanoidStateType.Physics)
        humanoid3:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        humanoid3:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
        humanoid3:SetStateEnabled(Enum.HumanoidStateType.Running, false)
        humanoid3:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        humanoid3:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

        local cframe3 = humanoidRootPart2.CFrame
        local lookVector2 = cframe3.LookVector
        local vector2 = Vector3.new(0, 1, 0)

        task.spawn(function()
          local v43 = tick()

          for k = 1, 120 do
            local v44 = k / 120
            local v45 = math.rad(k * 3)
            local cframe4 = CFrame.Angles(-v45, 0, 0)

            humanoidRootPart2.CFrame = CFrame.new(cframe3.Position + lookVector2 * (35 * v44)
                + vector2 * (4 * (v44 - v44 ^ 2) * 10))
              * (cframe3.Rotation * cframe4)

            local v46 = 0.0037500000000000003 * k - (tick() - v43)

            if v46 > 0 then
              task.wait(v46)
            end
          end

          humanoidRootPart2.CFrame = CFrame.new(cframe3.Position + lookVector2 * 35)
            * cframe3.Rotation

          humanoid3:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
          humanoid3:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
          humanoid3:SetStateEnabled(Enum.HumanoidStateType.Running, true)
          humanoid3:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
          humanoid3:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
          humanoid3:ChangeState(Enum.HumanoidStateType.Running)
        end)
      end)
    end)()
  end,
})

filpSection:Divider()

local v47 = {}

for key6, value14 in pairs(game.Players:GetPlayers()) do
  table.insert(v47, value14.Name)
end

table.sort(v47)

filpSection:Keybind({
  Title = "Frontfilp",
  Value = "F",
  Callback = function()
    local character5 = localPlayer2.Character
    local humanoid4 = character5.Humanoid
    local animator4 = humanoid4.Animator
    local humanoidRootPart3 = character5.HumanoidRootPart

    if animator4 then
      for key7, value15 in pairs(animator4:GetPlayingAnimationTracks()) do
        value15:Stop()
      end
    end

    humanoid4:ChangeState(Enum.HumanoidStateType.Physics)
    humanoid4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid4:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid4:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid4:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid4:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

    local cframe5 = humanoidRootPart3.CFrame
    local lookVector3 = cframe5.LookVector
    local vector3 = Vector3.new(0, 1, 0)

    task.spawn(function()
      local v48 = tick()

      for m = 1, 120 do
        local v49 = m / 120
        local v50 = math.rad(m * 3)
        local cframe6 = CFrame.Angles(-v50, 0, 0)

        humanoidRootPart3.CFrame = CFrame.new(cframe5.Position + lookVector3 * (35 * v49)
            + vector3 * (4 * (v49 - v49 ^ 2) * 10))
          * (cframe5.Rotation * cframe6)

        local v51 = 0.0037500000000000003 * m - (tick() - v48)

        if v51 > 0 then
          task.wait(v51)
        end
      end

      humanoidRootPart3.CFrame = CFrame.new(cframe5.Position + lookVector3 * 35)
        * cframe5.Rotation

      humanoid4:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
      humanoid4:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
      humanoid4:SetStateEnabled(Enum.HumanoidStateType.Running, true)
      humanoid4:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
      humanoid4:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
      humanoid4:ChangeState(Enum.HumanoidStateType.Running)
    end)
  end,
})

local v52 = true
local v53 = -0.3

local function f3(p5, p6)
  if not v52 then
    return true
  else
    local v54 = p5.Position.X - p6.Position.X
    local v55 = p5.Position.Y - p6.Position.Y
    local v56 = p5.Position.Z - p6.Position.Z
    local v57 = math.sqrt(v54 * v54 + v55 * v55 + v56 * v56)

    if v57 == 0 then
      return true
    else
      local v58 = 1 / v57
      local lookVector4 = p6.CFrame.LookVector

      return lookVector4.X * (v54 * v58) + lookVector4.Y * (v55 * v58)
          + lookVector4.Z * (v56 * v58)
        > (v53 or -0.3)
    end
  end
end

local v59 = false

local function f4(p7, p8)
  if not (p7 and p8 and p8.Parent) then
    return
  else
    local humanoidRootPart4 = p7:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart4 then
      return
    else
      local v60 = math.clamp(v53 or -0.3, -1, 1)
      local v61 = math.acos(v60) / math.pi

      p8.Radius = math.max(1, v18 * (0.2 + 0.8 * v61))
      p8.Height = 0.12

      p8.CFrame = CFrame.new(
        0, -(humanoidRootPart4.Size.Y / 2 + 0.05), -(v18 * (0.35 + 0.15 * v61))
      ) * CFrame.Angles(math.rad(90), 0, 0)

      local humanoidRootPart5 = localPlayer.Character
        and localPlayer.Character:FindFirstChild("HumanoidRootPart")

      local v62 = false
      local v63 = false

      if humanoidRootPart5 and humanoidRootPart4 then
        v62 = (humanoidRootPart4.Position - humanoidRootPart5.Position).Magnitude <= v18
        v63 = not v52 or type(f3) == "function" and f3(humanoidRootPart5, humanoidRootPart4)
      end

      if v62 and v63 then
        p8.Color3 = Color3.fromRGB(0, 255, 0)
        p8.Transparency = 0.4
      else
        p8.Color3 = Color3.fromRGB(255, 255, 0)
        p8.Transparency = 0.85
      end

      return
    end
  end
end

local v64 = {}

local function f5(p9)
  if not p9 or not p9:IsA("Model") then
    return
  elseif v64[p9] then
    return
  else
    local humanoidRootPart6 = p9:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart6 then
      return
    else
      local facingCheckVisual = Instance.new("CylinderHandleAdornment")
      facingCheckVisual.Name = "FacingCheckVisual"
      facingCheckVisual.Adornee = humanoidRootPart6
      facingCheckVisual.AlwaysOnTop = true
      facingCheckVisual.ZIndex = 2
      facingCheckVisual.Transparency = 0.55
      facingCheckVisual.Color3 = Color3.fromRGB(0, 255, 0)
      facingCheckVisual.Parent = humanoidRootPart6

      v64[p9] = facingCheckVisual
      f4(p9, facingCheckVisual)
      return
    end
  end
end

local f6

local function f7()
  for index2, value16 in ipairs(killers:GetChildren()) do
    if v59 then
      if value16:FindFirstChild("HumanoidRootPart")
        or value16:WaitForChild("HumanoidRootPart", 5) then
        f5(value16)
      end
    else
      f6(value16)
    end
  end
end

function f6(p10)
  local v65 = v64[p10]

  if v65 then
    v65:Destroy()
    v64[p10] = nil
  end
end

runService.RenderStepped:Connect(function()
  for key8, value17 in pairs(v64) do
    if not key8.Parent or not key8:FindFirstChild("HumanoidRootPart") then
      f6(key8)
    else
      f4(key8, value17)
    end
  end
end)

killers.ChildAdded:Connect(function(child2)
  if v59 then
    task.spawn(function()
      if child2:WaitForChild("HumanoidRootPart", 5) then
        f5(child2)
      end
    end)
  end
end)

killers.ChildRemoved:Connect(function(child3) f6(child3) end)

filpSection:Keybind({
  Title = "Backfilp",
  Value = "B",
  Callback = function()
    local character6 = localPlayer2.Character
    local humanoid5 = character6.Humanoid
    local animator5 = humanoid5.Animator
    local humanoidRootPart7 = character6.HumanoidRootPart

    if animator5 then
      for key9, value18 in pairs(animator5:GetPlayingAnimationTracks()) do
        value18:Stop()
      end
    end

    humanoid5:ChangeState(Enum.HumanoidStateType.Physics)
    humanoid5:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    humanoid5:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
    humanoid5:SetStateEnabled(Enum.HumanoidStateType.Running, false)
    humanoid5:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    humanoid5:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)

    local cframe7 = humanoidRootPart7.CFrame
    local lookVector5 = cframe7.LookVector
    local vector4 = Vector3.new(0, 1, 0)

    task.spawn(function()
      local v66 = tick()

      for n = 1, 120 do
        local v67 = n / 120
        local v68 = math.rad(n * 3)
        local cframe8 = CFrame.Angles(-v68, 0, 0)

        humanoidRootPart7.CFrame = CFrame.new(cframe7.Position + lookVector5 * (35 * v67)
            + vector4 * (4 * (v67 - v67 ^ 2) * 10))
          * (cframe7.Rotation * cframe8)

        local v69 = 0.0037500000000000003 * n - (tick() - v66)

        if v69 > 0 then
          task.wait(v69)
        end
      end

      humanoidRootPart7.CFrame = CFrame.new(cframe7.Position + lookVector5 * 35)
        * cframe7.Rotation

      humanoid5:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
      humanoid5:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
      humanoid5:SetStateEnabled(Enum.HumanoidStateType.Running, true)
      humanoid5:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
      humanoid5:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
      humanoid5:ChangeState(Enum.HumanoidStateType.Running)
    end)
  end,
})

local fetientsPlayerSection = miscTab:Section({
  Title = "Fetients Player",
  Desc = "when you using to player other.",
  Icon = "menu",
  Opened = true,
  Box = true,
})

fetientsPlayerSection:Paragraph({
  Title = "Warning",
  Desc = "do not speed like faster, you we're kicked, just slower.",
})

fetientsPlayerSection:Slider({
  Title = "Delay Walkspeed",
  Value = { Min = 0, Max = 100, Default = 1 },
  Callback = function(value19) ayamgoreng = value19 end,
})

fetientsPlayerSection:Toggle({
  Title = "Enable/Disable Walkspeed",
  Callback = function(value20)
    if value20 then
      game.Players.LocalPlayer.Character.SpeedMultipliers.Sprinting.Value = ayamgoreng
    else
      game.Players.LocalPlayer.Character.SpeedMultipliers.Sprinting.Value = 1
    end
  end,
})

fetientsPlayerSection:Divider()

fetientsPlayerSection:Slider({
  Title = "Delay Jumppower",
  Value = { Min = 0, Max = 50, Default = 0 },
  Callback = function(value21) ayamgorengs = value21 end,
})

fetientsPlayerSection:Toggle({
  Title = "Enable/Disable Jumppower",
  Callback = function(value22)
    if value22 then
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = ayamgorengs
    else
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
    end
  end,
})

fetientsPlayerSection:Divider()

fetientsPlayerSection:Slider({
  Title = "Delay FOV Multipliers",
  Value = { Min = 0, Max = 2, Default = 1 },
  Callback = function(value23) ayamgorengss = value23 end,
})

fetientsPlayerSection:Toggle({
  Title = "Enable/Disable FOV Multipliers",
  Callback = function(value24)
    if value24 then
      game.Players.LocalPlayer.Character.FOVMultipliers.FOVSetting.Value = ayamgorengss
    else
      game.Players.LocalPlayer.Character.FOVMultipliers.FOVSetting.Value = 1
    end
  end,
})

fetientsPlayerSection:Divider()

fetientsPlayerSection:Button({
  Title = "Rejoin",
  Callback = function() teleportService:Teleport(game.PlaceId) end,
})

local executorSection2 = randomTab:Section({
  Title = "Executor",
  Desc = "executor to been code lua",
  Icon = "code",
  Opened = true,
  Box = true,
})

executorSection2:Input({ Title = "Code Lua", Callback = function(value25) macan = value25 end })

executorSection2:Button({
  Title = "Execute",
  Callback = function(value26) loadstring(macan)() end,
})

local statsInfoSection = randomTab:Section({
  Title = "Stats Info",
  Desc = "use the stats and become like everyone use stamina it.",
  Icon = "check",
  Opened = true,
  Box = true,
})

statsInfoSection:Toggle({
  Title = "Show Stats Stamina",
  Desc = "show that the stats stamina if hit 0 become elliot yet!.",
  Callback = function(value27) end,
})

statsInfoSection:Toggle({
  Title = "Show Stats Heart",
  Desc = "show that the stats heart if hit 0 become elliot yet!.",
  Callback = function(value28)
    if value28 then
      for key10, value29 in pairs(game.Players:GetPlayers()) do
        if value29.PlayerGui.TemporaryUI.Title2.Text == value29.Name then
          local corruptNatureHighlight = value29:FindFirstChild("CorruptNatureHighlight")

          if value28 then
            if not corruptNatureHighlight then
              local billboard = Instance.new("BillboardGui")
              billboard.Name = "billboard"
              billboard.Size = UDim2.new(0, 100, 0, 50)
              billboard.StudsOffset = Vector3.new(0, 2, 0)
              billboard.AlwaysOnTop = true
              billboard.Parent = value29

              local instance3 = Instance.new("TextLabel", billboard)
              instance3.Size = UDim2.new(1, 0, 1, 0)
              instance3.Text = value29.Name
              instance3.TextColor3 = Color3.new(1, 1, 1)
              instance3.TextStrokeTransparency = 0
              instance3.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance3.BackgroundTransparency = 1
            end
          elseif corruptNatureHighlight then
            corruptNatureHighlight:Destroy()
          end
        end
      end
    end
  end,
})

local blatantSection = randomTab:Section({
  Title = "Blatant",
  Desc = "invoke for blatant then system.",
  Icon = "box",
  Opened = true,
  Box = true,
})

blatantSection:Button({
  Title = "Anti Blatant Toxic",
  Desc = "when i use this blatant toxic, i not get kick yet, then this worked bro, i saw this is the best anti toxic like this!",
})

blatantSection:Button({
  Title = "Anti Blatant roundsaken",
  Desc = "i dont know what is roundsaken?, roundsaken make to time end or cannot, if killer got died survivor time can up, use roundsaken and cannot up again yet!",
})

blatantSection:Button({
  Title = "Anti Blatant Phone/Pc",
  Desc = "i do it for anti phone and pc, but for what dose mean like anti blatant phone and pc, this anti blatant pc and phone getting make you crash, becuase i dont need it, i got crash for 4x i dont know it.",
})

local playerInfoSection2 = randomTab:Section({
  Title = "Player Info",
  Desc = "put the you name here for player info.",
  Icon = "user",
  Opened = true,
  Box = true,
})

playerInfoSection2:Toggle({
  Title = "Show Hidden Stats",
  Desc = "show that the hidden stats then.",
})

playerInfoSection2:Toggle({
  Title = "Hidden Name",
  Desc = "bro this hidden name getting connect my name.",
  Callback = function(value30) end,
})

randomTab:Section({
  Title = "Generator Info",
  Desc = "put the you name here for generator then.",
  Icon = "box",
  Opened = true,
  Box = true,
}):Toggle({
  Title = "Hidden Name",
  Desc = "bro this hidden name getting connect my name.",
  Callback = function(value31) end,
})

local autoGeneratorSection = generatorTab:Section({
  Title = "Auto Generator",
  Desc = "auto the generator there also unknown repaired.",
  Icon = "battery",
  Opened = true,
  Box = true,
})

autoGeneratorSection:Slider({
  Title = "Repair Speed (Seconds)",
  Value = { Min = 1.5, Max = 10, Default = 1 },
  Callback = function(value32) kvision = value32 end,
})

autoGeneratorSection:Slider({
  Title = "Repair Speed (Max)",
  Value = { Min = 1.5, Max = 10, Default = 10 },
})

autoGeneratorSection:Slider({
  Title = "Repair Speed (Min)",
  Value = { Min = 1.5, Max = 10, Default = 4 },
})

local autoGenerator = false

autoGeneratorSection:Toggle({
  Title = "Auto Generator",
  Callback = function(value33)
    local v70 = {}
    autoGenerator = value33

    while autoGenerator do
      task.wait(kvision)

      for key11, value34 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
        local v71 = value34

        if v71.Name == "Generator" then
          if not v70[v71] then
            v70[v71] = true
            v71:WaitForChild("Remotes"):WaitForChild("RE"):FireServer()
            task.delay(nil, function() v70[v71] = nil end)
          end
        end
      end
    end
  end,
})

local solverGeneratorSection = generatorTab:Section({
  Title = "Solver Generator",
  Desc = "fixed that generator ever solver generator.",
  Icon = "cog",
  Opened = true,
  Box = true,
})

solverGeneratorSection:Slider({
  Title = "Solver Speed Generator",
  Value = { Min = 1.5, Max = 10, Default = 2 },
  Callback = function(value35) genser = value35 end,
})

local v72

solverGeneratorSection:Toggle({
  Title = "Generator Solver",
  Callback = function(value36)
    local v73 = {}
    v72 = value36

    while v72 do
      task.wait(genser)

      for key12, value37 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
        local v74 = value37

        if v74.Name == "Generator" then
          if not v73[v74] then
            v73[v74] = true
            v74:WaitForChild("Remotes"):WaitForChild("RE"):FireServer()
            task.delay(nil, function() v73[v74] = nil end)
          end
        end
      end
    end
  end,
})

local interactGeneratorSection = generatorTab:Section({
  Title = "Interact Generator",
  Desc = "make unknownc that interact generator ui.",
  Icon = "box",
  Opened = true,
  Box = true,
})

interactGeneratorSection:Toggle({
  Title = "Auto Exit (hear the killer)",
  Desc = "get exit from generator, when killer is hear, switch there misc ever generator no even hear that killer again.",
})

interactGeneratorSection:Toggle({ Title = "Auto Enter Generator" })

local achievementsSection = achievementsTab:Section({
  Title = "Achievements",
  Desc = "You will Have there fake infinite you stats.",
  Icon = "settings",
  Box = true,
  Opened = true,
})

achievementsSection:Paragraph({
  Title = "Unlock Achievements.",
  Desc = "if you want to clicker unlock Achievements all.",
})

achievementsSection:Button({
  Title = "Unlocked Achievements all",
  Desc = "unlocked everything.",
  Callback = function()
    localPlayer2.PlayerData.Achievements.General.SurvivorWins1.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins2.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins3.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins4.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins5.Value = "9999"

    print("inf level")

    localPlayer2.PlayerData.Achievements.General.KillerWins1.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins2.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins3.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins4.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins5.Value = "9999"

    print("inf level")

    for key13, value38 in pairs(localPlayer2.PlayerData.Achievements.Challenges:GetDescendants()) do
      if value38.Name then
        value38.Value = true
      end
    end

    print("unknowj")

    for key14, value39 in pairs(localPlayer2.PlayerData.Achievements.Fun:GetDescendants()) do
      if value39.Name then
        value39.Value = true
      end
    end

    print("unknowj")

    for key15, value40 in pairs(localPlayer2.PlayerData.Achievements.KillerSpecific:GetDescendants()) do
      if value40.Name then
        value40.Value = true
      end
    end

    print("unknowj")

    for key16, value41 in pairs(localPlayer2.PlayerData.Achievements.SurvivorSpecific:GetDescendants()) do
      if value41.Name then
        value41.Value = true
      end
    end

    print("unknowj")

    for key17, value42 in pairs(localPlayer2.PlayerData.Achievements.Completionist:GetDescendants()) do
      if value42.Name then
        value42.Value = 99999
      end
    end

    print("unknowj")

    for key18, value43 in pairs(localPlayer2.PlayerData.Achievements.SurvivorMilestones:GetDescendants()) do
      if value43.Name then
        value43.Value = 99999
      end
    end

    print("unknowj")

    for key19, value44 in pairs(localPlayer2.PlayerData.Achievements.KillerMilestones:GetDescendants()) do
      if value44.Name then
        value44.Value = 99999
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Infinite Win Survivor all",
  Desc = "Make Level Win Survivor to been infinite.",
  Callback = function()
    localPlayer2.PlayerData.Achievements.General.SurvivorWins1.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins2.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins3.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins4.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.SurvivorWins5.Value = "9999"

    print("inf level")
  end,
})

achievementsSection:Button({
  Title = "Infinite Win Killers all",
  Desc = "Make Level Win Killers to been infinite.",
  Callback = function()
    localPlayer2.PlayerData.Achievements.General.KillerWins1.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins2.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins3.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins4.Value = "9999"
    localPlayer2.PlayerData.Achievements.General.KillerWins5.Value = "9999"

    print("inf level")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Unlocked Challenges Survivor all",
  Desc = "Make Unlock Challenges.",
  Callback = function()
    for key20, value45 in pairs(localPlayer2.PlayerData.Achievements.Challenges:GetDescendants()) do
      if value45.Name then
        value45.Value = true
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Unlocked Survivor Specifie all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key21, value46 in pairs(localPlayer2.PlayerData.Achievements.SurvivorSpecific:GetDescendants()) do
      if value46.Name then
        value46.Value = true
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Button({
  Title = "Unlocked Killer Specifie all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key22, value47 in pairs(localPlayer2.PlayerData.Achievements.KillerSpecific:GetDescendants()) do
      if value47.Name then
        value47.Value = true
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Unlocked Fun all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key23, value48 in pairs(localPlayer2.PlayerData.Achievements.Fun:GetDescendants()) do
      if value48.Name then
        value48.Value = true
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Unlocked Completionist all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key24, value49 in pairs(localPlayer2.PlayerData.Achievements.Completionist:GetDescendants()) do
      if value49.Name then
        value49.Value = 9999
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Divider()

achievementsSection:Button({
  Title = "Infinite Level Survivor Milestones all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key25, value50 in pairs(localPlayer2.PlayerData.Achievements.SurvivorsMilestones:GetDescendants()) do
      if value50.Name then
        value50.Value = 9999
      end
    end

    print("unknowj")
  end,
})

achievementsSection:Button({
  Title = "Infinite Level Killer Milestones all",
  Desc = "Make Unlock all.",
  Callback = function()
    for key26, value51 in pairs(localPlayer2.PlayerData.Achievements.KillersMilestones:GetDescendants()) do
      if value51.Name then
        value51.Value = 9999
      end
    end

    print("unknowj")
  end,
})

local othersSection2 = achievementsTab:Section({
  Title = "Others",
  Desc = "think are other will do it.",
  Icon = "settings",
  Box = true,
  Opened = true,
})

othersSection2:Button({
  Title = "Infinite Level Survivor",
  Desc = "make infinite Level survivor.",
  Callback = function()
    for key27, value52 in pairs(localPlayer2.PlayerData.Stats.SurvivorStats:GetDescendants()) do
      if value52.Name then
        value52.Value = 9999
      end
    end

    print("unknowj")
  end,
})

othersSection2:Button({
  Title = "Infinite Level Killer",
  Desc = "make infinite Level killer.",
  Callback = function()
    for key28, value53 in pairs(localPlayer2.PlayerData.Stats.KillerStats:GetDescendants()) do
      if value53.Name then
        value53.Value = 9999
      end
    end

    print("unknowj")
  end,
})

othersSection2:Button({
  Title = "Infinite Level Currency",
  Desc = "make infinite Level currency.",
  Callback = function()
    for key29, value54 in pairs(localPlayer2.PlayerData.Stats.Currency:GetDescendants()) do
      if value54.Name then
        value54.Value = 9999999
      end
    end

    print("unknowj")
  end,
})

othersSection2:Button({
  Title = "Infinite Level General",
  Desc = "make infinite Level general.",
  Callback = function()
    while wait() do
      for key30, value55 in pairs(localPlayer2.PlayerData.Stats.General:GetDescendants()) do
        if value55.Name then
          value55.Value = 9999999999999
        end
      end
    end

    print("unknowj")
  end,
})

local v75 = {}

for key31, value56 in pairs(replicatedStorage.Assets.Emotes:GetChildren()) do
  table.insert(v75, value56.Name)
end

table.sort(v75)

local emoteSection = emoteTab:Section({
  Title = "Emote",
  Desc = "make sure that dance with emote.",
  Icon = "smile",
  Box = true,
  Opened = true,
})

local selectionEmote

emoteSection:Dropdown({
  Title = "Selection Emote",
  Values = v75,
  Value = 1,
  SearchBarEnabled = true,
  Callback = function(value57) selectionEmote = value57 end,
})

emoteSection:Toggle({
  Title = "Play/Stop Animation",
  Callback = function(value58)
    local character7 = localPlayer2.Character or localPlayer2.CharacterAdded:Wait()
    local humanoid6 = character7:WaitForChild("Humanoid")
    local humanoidRootPart8 = character7:WaitForChild("HumanoidRootPart")
    local bodyVelocity

    if value58 then
      bodyVelocity = Instance.new("BodyVelocity")
      bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
      bodyVelocity.Velocity = Vector3.zero
      bodyVelocity.Parent = humanoidRootPart8

      local animation = Instance.new("Animation")
      animation.AnimationId = require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).AssetID

      local loadAnimation = humanoid6:LoadAnimation(animation)
      loadAnimation:Play()

      local sound = Instance.new("Sound")
      sound.SoundId = require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).SFX
      sound.Parent = humanoidRootPart8
      sound.Volume = 0.5
      sound.Looped = true
      sound:Play()

      loadAnimation.Stopped:Connect(function()
        humanoid6.PlatformStand = false

        if bodyVelocity and bodyVelocity.Parent then
          bodyVelocity:Destroy()
        end
      end)
    else
      local bodyVelocity2 = humanoidRootPart8:FindFirstChildOfClass("BodyVelocity")

      if bodyVelocity2 then
        bodyVelocity2:Destroy()
      end

      local sound2 = humanoidRootPart8:FindFirstChildOfClass("Sound")

      if sound2 then
        sound2:Stop()
        sound2:Destroy()
      end

      for index3, value59 in ipairs(humanoid6:GetPlayingAnimationTracks()) do
        if value59.Animation.AnimationId
          == require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).AssetID then
          value59:Stop()
        end
      end
    end
  end,
})

emoteSection:Toggle({
  Title = "Mobile with Play Animation",
  Desc = "make sure you use animation mobile.",
  Callback = function(value60)
    local yamemeHubAnimMobile = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local playAnim = Instance.new("TextButton")
    local localPlayer3

    if value60 then
      yamemeHubAnimMobile.Name = "YamemeHub_Anim_Mobile"
      yamemeHubAnimMobile.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
      yamemeHubAnimMobile.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

      frame.Parent = yamemeHubAnimMobile
      frame.BackgroundColor3 = Color3.fromRGB(255, 170, 127)
      frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
      frame.BorderSizePixel = 2
      frame.Position = UDim2.new(0.135614708, 0, 0.224532232, 0)
      frame.Size = UDim2.new(0, 113, 0, 56)

      playAnim.Name = "play_anim"
      playAnim.Parent = frame
      playAnim.BackgroundColor3 = Color3.fromRGB(13, 255, 0)
      playAnim.BorderColor3 = Color3.fromRGB(0, 0, 0)
      playAnim.BorderSizePixel = 2
      playAnim.Position = UDim2.new(0.0786028802, 0, 0.228578836, 0)
      playAnim.Size = UDim2.new(0, 94, 0, 29)
      playAnim.Font = Enum.Font.FredokaOne
      playAnim.Text = "Play Anim"
      playAnim.TextColor3 = Color3.fromRGB(0, 0, 0)
      playAnim.TextSize = 14

      localPlayer3 = game.Players.LocalPlayer

      playAnim.MouseButton1Click:Connect(function(p11)
        local character8 = localPlayer3.Character or localPlayer3.CharacterAdded:Wait()
        local humanoid7 = character8:WaitForChild("Humanoid")
        local humanoidRootPart9 = character8:WaitForChild("HumanoidRootPart")
        local bodyVelocity3

        if p11 then
          humanoid7.PlatformStand = true
          humanoid7.JumpPower = 0

          bodyVelocity3 = Instance.new("BodyVelocity")
          bodyVelocity3.MaxForce = Vector3.new(100000, 100000, 100000)
          bodyVelocity3.Velocity = Vector3.zero
          bodyVelocity3.Parent = humanoidRootPart9

          local animation2 = Instance.new("Animation")
          animation2.AnimationId = require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).AssetID

          local loadAnimation2 = humanoid7:LoadAnimation(animation2)
          loadAnimation2:Play()

          local sound3 = Instance.new("Sound")
          sound3.SoundId = require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).SFX
          sound3.Parent = humanoidRootPart9
          sound3.Volume = 0.5
          sound3.Looped = true
          sound3:Play()

          loadAnimation2.Stopped:Connect(function()
            humanoid7.PlatformStand = false

            if bodyVelocity3 and bodyVelocity3.Parent then
              bodyVelocity3:Destroy()
            end
          end)
        else
          humanoid7.PlatformStand = false
          humanoid7.JumpPower = 0

          local bodyVelocity4 = humanoidRootPart9:FindFirstChildOfClass("BodyVelocity")

          if bodyVelocity4 then
            bodyVelocity4:Destroy()
          end

          local sound4 = humanoidRootPart9:FindFirstChildOfClass("Sound")

          if sound4 then
            sound4:Stop()
            sound4:Destroy()
          end

          for index4, value61 in ipairs(humanoid7:GetPlayingAnimationTracks()) do
            if value61.Animation.AnimationId
              == require(game.ReplicatedStorage.Assets.Emotes[selectionEmote]).AssetID then
              value61:Stop()
            end
          end
        end
      end)

      coroutine.wrap(function()
        local instance4 = Instance.new("Script", frame)

        function dragify(p12)
          dragToggle = nil
          dragInput = nil
          dragStart = nil

          function updateInput(p13)
            local v76 = p13.Position - dragStart

            local udim3 = UDim2.new(
              startPos.X.Scale, startPos.X.Offset + v76.X, startPos.Y.Scale,
              startPos.Y.Offset + v76.Y
            )

            tweenService:Create(p12, TweenInfo.new(0.25), { Position = udim3 }):Play()
          end

          p12.InputBegan:Connect(function(input7)
            if (input7.UserInputType == Enum.UserInputType.MouseButton1
                or input7.UserInputType == Enum.UserInputType.Touch)
              and userInputService:GetFocusedTextBox() == nil then
              dragToggle = true
              dragStart = input7.Position
              startPos = p12.Position

              input7.Changed:Connect(function()
                if input7.UserInputState == Enum.UserInputState.End then
                  dragToggle = false
                end
              end)
            end
          end)

          p12.InputChanged:Connect(function(input8)
            if input8.UserInputType == Enum.UserInputType.MouseMovement
              or input8.UserInputType == Enum.UserInputType.Touch then
              dragInput = input8
            end
          end)

          userInputService.InputChanged:Connect(function(input9)
            if input9 == dragInput and dragToggle then
              updateInput(input9)
            end
          end)
        end

        dragify(instance4.Parent)
      end)()
    else
      localPlayer.PlayerGui.YamemeHub_Anim_Mobile:Destroy()
    end
  end,
})

musicTab:Slider({ Title = "Global Custom Volume", Value = { Min = 1.5, Max = 10, Default = 1 } })

local lmsSection = musicTab:Section({ Title = "LMS", Box = true, Opened = true })
lmsSection:Toggle({ Title = "Enable LMS Replacement" })
lmsSection:Input({ Title = "Defualt LMS" })
lmsSection:Toggle({ Title = "LMS - Custom Track" })
lmsSection:Input({ Title = "LMS", Desc = "flie or URL" })

local mapSection = musicTab:Section({ Title = "Map", Box = true, Opened = true })
mapSection:Toggle({ Title = "Enable Map Replacement" })
mapSection:Input({ Title = "Defualt Map" })
mapSection:Toggle({ Title = "Map - Custom Track" })
mapSection:Input({ Title = "Map", Desc = "flie or URL" })

local chaseSection = musicTab:Section({ Title = "Chase", Box = true, Opened = true })
chaseSection:Toggle({ Title = "Enable Chase Replacement" })
chaseSection:Input({ Title = "Defualt Chase" })
chaseSection:Toggle({ Title = "Chase - Custom Track" })
chaseSection:Input({ Title = "Chase", Desc = "flie or URL" })

lmstabsea = musicTab:Section({ Title = "Lobby", Box = true, Opened = true })
lmstabsea:Toggle({ Title = "Enable Lobby Replacement" })
lmstabsea:Input({ Title = "Defualt Lobby" })
lmstabsea:Toggle({ Title = "Lobby - Custom Track" })
lmstabsea:Input({ Title = "Lobby", Desc = "flie or URL" })

fakelag = funTab:Section({ Title = "Fake Lags", Box = true, Opened = true })
fakelag:Toggle({ Title = "Fake Lag (Rage)" })
fakelag:Slider({ Title = "Fake Lags Interval (S)", Value = { Min = 0, Max = 10, Default = 0 } })

fakelags = funTab:Section({ Title = "Tollbox", Box = true, Opened = true })
fakelags:Toggle({ Title = "Infinite Bloxy Cola" })
fakelags:Toggle({ Title = "Ragdoll (REAL)" })

fakelags:Toggle({
  Title = "Enable Frontflip",
  Desc = "this frontflip are already added from tab in misc.",
  Locked = true,
})

discord = "discord.gg/invite/"

dist:Popup({
  Title = "Discord Server",
  Icon = "sparkles",
  Content = "Don't Forgot to join Discord Server.",
  Buttons = {
    {
      Title = "Ok",
      Icon = "check",
      Variant = "Primary",
      Callback = function() setclipboard(discord .. "Eq2FG6yqc") end,
    },
  },
})

dist:Notify({
  Title = "Yameme Hub Forsaken Script",
  Content = "forsaken helper script for worked.",
  Duration = 3,
})

fakelagse = funTab:Section({ Title = "Toxic Mode", Box = true, Opened = true })

fakelagse:Toggle({
  Title = "Toxic Mode",
  Desc = "dargerous toxic mode has detected from yameme hub forsaken script sorry cannot use it, this game anti mode toxic, did not use it.",
})

facingisthis = aiModeTab:Section({ Title = "Facing AI", Box = true, Opened = true })

facingisthis:Toggle({
  Title = "Enable Facing",
  Callback = function(value62) facingtoggle = value62 end,
})

killersis = aiModeTab:Section({
  Title = "Killer AI",
  Desc = "stupid the ai fucker dont know.",
  Box = true,
  Opened = true,
})

killersis:Slider({ Title = "Killer AI Repair", Value = { Default = 2, Min = 0, Max = 10 } })

killersis:Slider({
  Title = "Killer AI Repair (Seconds)",
  Value = { Default = 5, Min = 0, Max = 10 },
})

survivortable = {
  "Shedletsky", "Noob", "Elliot", "Guest1337", "Chance", "TwoTime", "Builderman", "007n7",
  "Taph", "Dusekkar", "Veeronica", "JaneDoe",
}

killersis:Toggle({
  Title = "Kill All (enable facing)",
  Desc = "enable for facing to kill all.",
  Callback = function(value63)
    truestate = value63

    if facingtoggle == true then
      while truestate do
        task.wait()

        for key32 in pairs(game.Workspace.Players.Survivors:GetChildren()) do
          if key32.Name == {
            "Shedletsky", "Noob", "Elliot", "Guest1337", "Chance", "TwoTime", "Builderman",
            "007n7", "Taph", "Dusekkar", "Veeronica", "JaneDoe",
          } then
          elseif key32.Name ~= {
            "Shedletsky", "Noob", "Elliot", "Guest1337", "Chance", "TwoTime", "Builderman",
            "007n7", "Taph", "Dusekkar", "Veeronica", "JaneDoe",
          } then
            warn("Survivor Was Not Found?")

            dist:Notify({
              Title = "Error",
              Content = "there not found for survivor yet!",
              Icon = "x",
              Duration = 3,
            })
          end
        end
      end
    end
  end,
})

tagunknown = visualsTab:Section({
  Title = "Visual Tag",
  Desc = "enable to random for tag ever.",
  Box = true,
  Opened = true,
})

tagunknown:Toggle({
  Title = "Survivor Tag",
  Callback = function(value64)
    local function f8(p14)
      if p14:IsA("Model") and p14:FindFirstChild("Head") then
        local billboard2 = p14.Head:FindFirstChild("billboard")

        if value64 then
          if not billboard2 then
            local billboard3 = Instance.new("BillboardGui")
            billboard3.Name = "billboard"
            billboard3.Size = UDim2.new(0, 100, 0, 50)
            billboard3.StudsOffset = Vector3.new(0, 2, 0)
            billboard3.AlwaysOnTop = true
            billboard3.Parent = p14.Head

            local instance5 = Instance.new("TextLabel", billboard3)
            instance5.Size = UDim2.new(1, 0, 1, 0)
            instance5.Text = p14.Name
            instance5.TextColor3 = Color3.new(1, 0, 67)
            instance5.TextStrokeTransparency = 0
            instance5.TextStrokeColor3 = Color3.new(0, 0, 0)
            instance5.BackgroundTransparency = 1
          end
        elseif billboard2 then
          billboard2:Destroy()
        end
      end
    end

    for key33, value65 in pairs(game.Workspace.Players.Survivors:GetChildren()) do
      f8(value65)
    end

    game.Workspace.Players.Survivors.ChildAdded:Connect(function(child4) f8(child4) end)
  end,
})

tagunknown:Toggle({
  Title = "Killer Tag",
  Callback = function(value66)
    local function f9(p15)
      if p15:IsA("Model") and p15:FindFirstChild("Head") then
        local billboard4 = p15.Head:FindFirstChild("billboard")

        if value66 then
          if not billboard4 then
            local billboard5 = Instance.new("BillboardGui")
            billboard5.Name = "billboard"
            billboard5.Size = UDim2.new(0, 100, 0, 50)
            billboard5.StudsOffset = Vector3.new(0, 2, 0)
            billboard5.AlwaysOnTop = true
            billboard5.Parent = p15.Head

            local instance6 = Instance.new("TextLabel", billboard5)
            instance6.Size = UDim2.new(1, 0, 1, 0)
            instance6.Text = p15.Name
            instance6.TextColor3 = Color3.new(1, 0, 0)
            instance6.TextStrokeTransparency = 0
            instance6.TextStrokeColor3 = Color3.new(0, 0, 0)
            instance6.BackgroundTransparency = 1
          end
        elseif billboard4 then
          billboard4:Destroy()
        end
      end
    end

    for key34, value67 in pairs(game.Workspace.Players.Killers:GetChildren()) do
      f9(value67)
    end

    game.Workspace.Players.Killers.ChildAdded:Connect(function(child5) f9(child5) end)
  end,
})

tagunknown:Toggle({
  Title = "Item Tag",
  Callback = function(value68)
    local function f10(p16)
      if p16:IsA("Model") then
        local billboard6 = p16:FindFirstChild("billboard")

        if value68 then
          if not billboard6 then
            local billboard7 = Instance.new("BillboardGui")
            billboard7.Name = "billboard"
            billboard7.Size = UDim2.new(0, 100, 0, 50)
            billboard7.StudsOffset = Vector3.new(0, 2, 0)
            billboard7.AlwaysOnTop = true
            billboard7.Parent = p16

            if p16.Name == "Medkit" then
              local instance7 = Instance.new("TextLabel", billboard7)
              instance7.Size = UDim2.new(1, 0, 1, 0)
              instance7.Text = "Medkit"
              instance7.TextColor3 = Color3.new(1, 1, 0)
              instance7.TextStrokeTransparency = 0
              instance7.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance7.BackgroundTransparency = 1
            elseif p16.Name == "BloxyCola" then
              local instance8 = Instance.new("TextLabel", billboard7)
              instance8.Size = UDim2.new(1, 0, 1, 0)
              instance8.Text = "Bloxy Cola"
              instance8.TextColor3 = Color3.new(1, 0, 1)
              instance8.TextStrokeTransparency = 0
              instance8.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance8.BackgroundTransparency = 1
            end
          end
        elseif billboard6 then
          billboard6:Destroy()
        end
      end
    end

    for key35, value69 in pairs(game.Workspace.Map.Ingame:GetChildren()) do
      if value69:IsA("Tool") then
        f10(value69)
      end
    end

    game.Workspace.Map.Ingame.ChildAdded:Connect(function(child6)
      if child6:IsA("Tool") then
        f10(child6)
      end
    end)
  end,
})

tagunknown:Toggle({
  Title = "Fake/Original Generator Tag",
  Callback = function(value70)
    local function f11(p17)
      if p17:IsA("Model") then
        local billboard8 = p17:FindFirstChild("billboard")

        if value70 then
          if not billboard8 then
            local billboard9 = Instance.new("BillboardGui")
            billboard9.Name = "billboard"
            billboard9.Size = UDim2.new(0, 100, 0, 50)
            billboard9.StudsOffset = Vector3.new(0, 2, 0)
            billboard9.AlwaysOnTop = true
            billboard9.Parent = p17

            if p17.Name == "Generator" then
              local instance9 = Instance.new("TextLabel", billboard9)
              instance9.Size = UDim2.new(1, 0, 1, 0)
              instance9.Text = "Generator"
              instance9.TextColor3 = Color3.new(1, 1, 0)
              instance9.TextStrokeTransparency = 0
              instance9.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance9.BackgroundTransparency = 1
            elseif p17.Name == "FakeGenerator" then
              local instance10 = Instance.new("TextLabel", billboard9)
              instance10.Size = UDim2.new(1, 0, 1, 0)
              instance10.Text = "FakeGenerator"
              instance10.TextColor3 = Color3.new(1, 0, 1)
              instance10.TextStrokeTransparency = 0
              instance10.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance10.BackgroundTransparency = 1
            end
          end
        elseif billboard8 then
          billboard8:Destroy()
        end
      end
    end

    for key36, value71 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
      f11(value71)
    end

    game.Workspace.Map.Ingame.Map.ChildAdded:Connect(function(child7) f11(child7) end)
  end,
})

tagunknown:Toggle({
  Title = "Progress Generator Tag",
  Callback = function(value72)
    local function f12(p18)
      if p18.Name == "Generator" then
        local billboard10 = p18:FindFirstChild("billboard")
        p18:FindFirstChild("Progress")

        if value72 then
          while task.wait() do
            if not billboard10 then
              local billboard11 = Instance.new("BillboardGui")
              billboard11.Name = "billboard"
              billboard11.Size = UDim2.new(0, 100, 0, 50)
              billboard11.StudsOffset = Vector3.new(0, 2, 0)
              billboard11.AlwaysOnTop = true
              billboard11.Parent = p18

              local instance11 = Instance.new("TextLabel", billboard11)
              instance11.Size = UDim2.new(1, 0, 1, 0)
              instance11.Text = math.floor(p18.Progress.Value) .. "%"
              instance11.TextColor3 = Color3.new(1, 3, 0)
              instance11.TextStrokeTransparency = 0
              instance11.TextStrokeColor3 = Color3.new(0, 0, 0)
              instance11.BackgroundTransparency = 1
            end
          end
        elseif billboard10 then
          billboard10:Destroy()
        end
      end
    end

    for key37, value73 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
      f12(value73)
    end

    game.Workspace.Map.Ingame.Map.ChildAdded:Connect(function(child8) f12(child8) end)
  end,
})

colors = visualsTab:Section({
  Title = "Visual Color",
  Desc = "enable to random for colors ever.",
  Box = true,
  Opened = true,
})

colors:Colorpicker({
  Title = "Color Survivor",
  Desc = "what kind color survivor.",
  Default = Color3.fromRGB(0, 255, 0),
  Callback = function(value74) colorsurvivor = value74 end,
})

colors:Colorpicker({
  Title = "Color Killer",
  Desc = "what kind color killer.",
  Default = Color3.fromRGB(255, 0, 0),
  Callback = function(value75) colorkiller = value75 end,
})

colors:Colorpicker({
  Title = "Color John Doe Spike",
  Desc = "what kind color John Doe Spike.",
  Default = Color3.fromRGB(0, 124, 233),
  Callback = function(value76) colorjohn = value76 end,
})

colors:Colorpicker({
  Title = "Color c00lkidd Pizza",
  Desc = "what kind color c00lkidd Pizza.",
  Default = Color3.fromRGB(64, 124, 12),
  Callback = function(value77) colorc00lkiddpizza = value77 end,
})

jane = visualsTab:Section({
  Title = "Visual Highlight",
  Desc = "enable to random for highlight ever.",
  Box = true,
  Opened = true,
})

jane:Toggle({
  Title = "ESP Folder",
  Desc = "what kind esp folder that quest jane doe for get the folder ever.",
})

jane:Toggle({
  Title = "ESP Survivor",
  Desc = "what kind esp survivor.",
  Callback = function(value78)
    for key38, value79 in pairs(game.Workspace.Players.Survivors:GetChildren()) do
      if value79:IsA("Model") then
        local corruptNatureHighlight2 = value79:FindFirstChild("CorruptNatureHighlight")

        if value78 then
          if not corruptNatureHighlight2 then
            local corruptNatureHighlight3 = Instance.new("Highlight")
            corruptNatureHighlight3.Name = "CorruptNatureHighlight"
            corruptNatureHighlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight3.Parent = value79
            corruptNatureHighlight3.FillColor = colorsurvivor
          end
        elseif corruptNatureHighlight2 then
          corruptNatureHighlight2:Destroy()
        end
      end
    end
  end,
})

jane:Toggle({
  Title = "ESP Killer",
  Desc = "what kind esp killer.",
  Callback = function(value80)
    for key39, value81 in pairs(game.Workspace.Players.Killers:GetChildren()) do
      if value81:IsA("Model") then
        local corruptNatureHighlight4 = value81:FindFirstChild("CorruptNatureHighlight")

        if value80 then
          if not corruptNatureHighlight4 then
            local corruptNatureHighlight5 = Instance.new("Highlight")
            corruptNatureHighlight5.Name = "CorruptNatureHighlight"
            corruptNatureHighlight5.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight5.Parent = value81
            corruptNatureHighlight5.FillColor = colorkiller
          end
        elseif corruptNatureHighlight4 then
          corruptNatureHighlight4:Destroy()
        end
      end
    end
  end,
})

jane:Toggle({
  Title = "ESP John Doe Spike",
  Desc = "what kind esp John Doe Spike.",
  Callback = function(value82)
    for key40, value83 in pairs(game.Workspace.Ingame.Spike:GetChildren()) do
      if value83:IsA("Model") then
        local corruptNatureHighlight6 = value83:FindFirstChild("CorruptNatureHighlight")

        if value82 then
          if not corruptNatureHighlight6 then
            local corruptNatureHighlight7 = Instance.new("Highlight")
            corruptNatureHighlight7.Name = "CorruptNatureHighlight"
            corruptNatureHighlight7.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight7.Parent = value83
            corruptNatureHighlight7.FillColor = colorjohn
          end
        elseif corruptNatureHighlight6 then
          corruptNatureHighlight6:Destroy()
        end
      end
    end
  end,
})

jane:Toggle({
  Title = "ESP C00lkidd Pizza",
  Desc = "what kind esp C00lkidd Pizza.",
  Callback = function(value84)
    for key41, value85 in pairs(game.Workspace.Ingame.Spike:GetChildren()) do
      if value85:IsA("Model") then
        local corruptNatureHighlight8 = value85:FindFirstChild("CorruptNatureHighlight")

        if value84 then
          if not corruptNatureHighlight8 then
            local corruptNatureHighlight9 = Instance.new("Highlight")
            corruptNatureHighlight9.Name = "CorruptNatureHighlight"
            corruptNatureHighlight9.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight9.Parent = value85
            corruptNatureHighlight9.FillColor = colorc00lkiddpizza
          end
        elseif corruptNatureHighlight8 then
          corruptNatureHighlight8:Destroy()
        end
      end
    end
  end,
})

jane:Toggle({
  Title = "ESP 1x1x1x1 Zombie",
  Desc = "what kind esp Zombie.",
  Callback = function(value86)
    for key42, value87 in pairs(game.Workspace.Ingame["1x1x1x1Zombie"]:GetChildren()) do
      if value87:IsA("Model") then
        local corruptNatureHighlight10 = value87:FindFirstChild("CorruptNatureHighlight")

        if value86 then
          if not corruptNatureHighlight10 then
            local corruptNatureHighlight11 = Instance.new("Highlight")
            corruptNatureHighlight11.Name = "CorruptNatureHighlight"
            corruptNatureHighlight11.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight11.Parent = value87
            corruptNatureHighlight11.FillColor = Color3.fromRGB(0, 146, 3)
          end
        elseif corruptNatureHighlight10 then
          corruptNatureHighlight10:Destroy()
        end
      end
    end
  end,
})

janes = visualsTab:Section({
  Title = "Visual Map Color",
  Desc = "enable to random for map color ever.",
  Box = true,
  Opened = true,
})

janes:Colorpicker({
  Title = "Color Bombs",
  Desc = "what kind color Bomb Taph.",
  Default = Color3.fromRGB(56, 124, 23),
  Callback = function(value88) colorbomb = value88 end,
})

janes:Colorpicker({
  Title = "Color Tripwire",
  Desc = "what kind color Tripwire Taph.",
  Default = Color3.fromRGB(56, 0, 0),
})

janes:Divider()

janes:Colorpicker({
  Title = "Color Medkit",
  Desc = "what kind color medkit item.",
  Default = Color3.fromRGB(56, 34, 0),
  Callback = function(value89) colormedkit = value89 end,
})

janes:Colorpicker({
  Title = "Color Bloxy cola",
  Desc = "what kind color bloxy cola item.",
  Default = Color3.fromRGB(56, 34, 86),
  Callback = function(value90) colorbloxy = value90 end,
})

janese = visualsTab:Section({
  Title = "Visual Map Highlight",
  Desc = "enable to random for map highlight ever.",
  Box = true,
  Opened = true,
})

janese:Toggle({
  Title = "ESP Bombs (Taph)",
  Desc = "What Kind a Bombs taph.",
  Callback = function(value91)
    for key43, value92 in pairs(game.Workspace.Map.Ingame.SubspaceTripmine:GetChildren()) do
      if value92:IsA("Model") then
        local corruptNatureHighlight12 = value92:FindFirstChild("CorruptNatureHighlight")

        if value91 then
          if not corruptNatureHighlight12 then
            local corruptNatureHighlight13 = Instance.new("Highlight")
            corruptNatureHighlight13.Name = "CorruptNatureHighlight"
            corruptNatureHighlight13.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            corruptNatureHighlight13.Parent = value92
            corruptNatureHighlight13.FillColor = colorbomb
          end
        elseif corruptNatureHighlight12 then
          corruptNatureHighlight12:Destroy()
        end
      end
    end
  end,
})

janese:Toggle({ Title = "ESP Tripwire (Taph)", Desc = "What Kind a Tripwire taph." })
janese:Divider()

janese:Toggle({
  Title = "ESP Medkit",
  Desc = "What Kind a Medkit.",
  Callback = function(value93)
    local function f13(p19)
      if value93 then
        if not p19:FindFirstChild("ToolHighlight") then
          local toolHighlight = Instance.new("Highlight")
          toolHighlight.Name = "ToolHighlight"
          toolHighlight.Parent = p19
          toolHighlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

          if p19.Name == "Medkit" then
            toolHighlight.FillColor = colormedkit
          end
        end
      else
        local toolHighlight2 = p19:FindFirstChild("ToolHighlight")

        if toolHighlight2 then
          toolHighlight2:Destroy()
        end
      end
    end

    for key44, value94 in pairs(game.Workspace.Map.Ingame:GetChildren()) do
      if value94:IsA("Tool") then
        f13(value94)
      end
    end

    game.Workspace.Map.Ingame.ChildAdded:Connect(function(child9)
      if child9:IsA("Tool") then
        f13(child9)
      end
    end)
  end,
})

janese:Toggle({
  Title = "ESP BloxyCola",
  Desc = "What Kind a BloxyCola.",
  Callback = function(value95)
    local function f14(p20)
      if value95 then
        if not p20:FindFirstChild("ToolHighlight") then
          local toolHighlight3 = Instance.new("Highlight")
          toolHighlight3.Name = "ToolHighlight"
          toolHighlight3.Parent = p20
          toolHighlight3.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

          if p20.Name == "Bloxy Cola" then
            toolHighlight3.FillColor = colorbloxy
          end
        end
      else
        local toolHighlight4 = p20:FindFirstChild("ToolHighlight")

        if toolHighlight4 then
          toolHighlight4:Destroy()
        end
      end
    end

    for key45, value96 in pairs(game.Workspace.Map.Ingame:GetChildren()) do
      if value96:IsA("Tool") then
        f14(value96)
      end
    end

    game.Workspace.Map.Ingame.ChildAdded:Connect(function(child10)
      if child10:IsA("Tool") then
        f14(child10)
      end
    end)
  end,
})

janess = visualsTab:Section({
  Title = "Visual Generator Color",
  Desc = "enable to random for generator color ever.",
  Box = true,
  Opened = true,
})

janess:Colorpicker({
  Title = "Color Generator",
  Desc = "what kind color Generator.",
  Default = Color3.fromRGB(56, 0, 23),
  Callback = function(value97) colorGenerator = value97 end,
})

janess:Colorpicker({
  Title = "Color Fake Generator",
  Desc = "what kind color Fake Generator.",
  Default = Color3.fromRGB(56, 0, 232),
  Callback = function(value98) colorGenerators = value98 end,
})

janesee = visualsTab:Section({
  Title = "Visual Generator Highlight",
  Desc = "enable to random for Generator highlight ever.",
  Box = true,
  Opened = true,
})

janesee:Toggle({
  Title = "ESP Generator",
  Desc = "What Kind a Generator.",
  Callback = function(value99)
    local function f15(p21)
      if p21.Name == "Generator" then
        local generatorHighlight = p21:FindFirstChild("GeneratorHighlight")

        if value99 then
          if not generatorHighlight then
            local generatorHighlight2 = Instance.new("Highlight")
            generatorHighlight2.Parent = p21
            generatorHighlight2.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            generatorHighlight2.Name = "GeneratorHighlight"
            generatorHighlight2.FillColor = colorGenerator
          end

          return
        end

        if generatorHighlight then
          generatorHighlight:Destroy()
        end

        return
      end
    end

    for key46, value100 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
      f15(value100)
    end

    game.Workspace.Map.Ingame.Map.ChildAdded:Connect(function(child11) f15(child11) end)
  end,
})

janesee:Toggle({
  Title = "ESP Fake Generator",
  Desc = "What Kind a Fake Generator.",
  Callback = function(value101)
    local function f16(p22)
      if p22.Name == "FakeGenerator" then
        local generatorHighlight3 = p22:FindFirstChild("GeneratorHighlight")

        if value101 then
          if not generatorHighlight3 then
            local generatorHighlight4 = Instance.new("Highlight")
            generatorHighlight4.Parent = p22
            generatorHighlight4.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            generatorHighlight4.Name = "GeneratorHighlight"
            generatorHighlight4.FillColor = colorGenerators
          end

          return
        end

        if generatorHighlight3 then
          generatorHighlight3:Destroy()
        end

        return
      end
    end

    for key47, value102 in pairs(game.Workspace.Map.Ingame.Map:GetChildren()) do
      f16(value102)
    end

    game.Workspace.Map.Ingame.Map.ChildAdded:Connect(function(child12) f16(child12) end)
  end,
})

forsakenInfoTab:Paragraph({
  Title = "Forsaken Info",
  Desc = "if forsaken info search to checking map, killer and survivor, item then will know it where can.",
})

forsakenInfoTab:Divider()

forsakenInfoTab:Paragraph({
  Title = "Player Info",
  Desc = "there are new player selection for gui to ban/kick and kill, sorry only android and pc not for linux :(.",
})

forsakenInfoTab:Dropdown({
  Title = "Selection Players",
  Values = v47,
  Value = localPlayer.Name,
  Callback = function(value103) selectplayer = value103 end,
})

local divider = forsakenInfoTab.Divider
v72 = false
divider(forsakenInfoTab)

forsakenInfoTab:Paragraph({
  Title = "Player Killer",
  Desc = "if you there player has left and he's joined, leave in yameme hub and load then and there are name player, so you can also auto kill player yet (ONLY PC).",
})

forsakenInfoTab:Toggle({
  Title = "Auto Kill The Players",
  Callback = function(value104)
    v72 = value104

    if localPlayer.Character.Name ~= "Slasher" and localPlayer.Character.Name ~= "c00lkidd"
      and localPlayer.Character.Name ~= "JohnDoe" and localPlayer.Character.Name ~= "Sixer"
      and localPlayer.Character.Name ~= "Noli" and localPlayer.Character.Name ~= "1x1x1x1"
      and localPlayer.Character.Name ~= "Azure" and localPlayer.Character.Name ~= "Nosferatu" then
      warn([[
YOU ARE AIN'T KILLER SORRY WAIT TO ROUND YOU WILL BECOME KILLERS! 
 YamemeHubFunction: 92 
 YamemeHubSafe: 12]])

      return
    end

    while v72 do
      task.wait()
      localPlayer.Character.HumanoidRootPart.CFrame = players[selectplayer].Character.HumanoidRootPart.CFrame
      local remoteEvent2 = replicatedStorage.Modules.Network.Network.RemoteEvent

      local function f17(p23)
        local v77 = #p23
        local v78 = buffer.create(#p23)

        for i6 = 1, v77 do
          buffer.writeu8(v78, i6 - 1, p23[i6])
        end

        return v78
      end

      remoteEvent2:FireServer("UseActorAbility", {
        f17({ 3, 5, 0, 0, 0, 83, 108, 97, 115, 104 }),
      })
    end
  end,
})

forsakenInfoTab:Divider()

forsakenInfoTab:Paragraph({
  Title = "Player Ban/Kick",
  Desc = "No One Talking from yameme Hub :/",
})

forsakenInfoTab:Button({
  Title = "Ban The Players",
  Callback = function(value105)
    players[selectplayer]:Destroy()
    workspace[selectplayer]:Destroy()
  end,
})

forsakenInfoTab:Button({
  Title = "Kick The Players",
  Callback = function(value106)
    players[selectplayer]:Destroy()
    workspace[selectplayer]:Destroy()
  end,
})

facingtab = autoBlockTab:Section({
  Title = "Facing",
  Icon = "rss",
  Box = true,
  Opened = true,
})

facingtab:Toggle({
  Title = "Enable Facing Check",
  Callback = function(value107) v52 = value107 end,
})

facingtab:Toggle({
  Title = "Facing Check Visual",
  Callback = function(value108)
    v59 = value108
    f7()
  end,
})

facingtab:Input({
  Title = "Facing Check angle (DOT)",
  Callback = function(value109) v53 = tonumber(value109) or v53 end,
})

blocktab = autoBlockTab:Section({
  Title = "Auto Block",
  Icon = "shield",
  Box = true,
  Opened = true,
})

blocktab:Toggle({
  Title = "(Animation) Auto Block",
  Callback = function(value110) v15 = value110 end,
})

blocktab:Toggle({
  Title = "(Audio) Auto Block",
  Callback = function(value111) v16 = value111 end,
})

blocktab:Slider({
  Title = "Delay Block",
  Value = { Default = 5, Min = 0, Max = 10 },
  Callback = function(value112) delayBlock = tonumber(value112) or delayBlock end,
})

blocktab:Input({
  Title = "Detection Range",
  Callback = function(value113)
    v18 = tonumber(value113) or v18
    detectionRange = v18 * v18
  end,
})

blocktab:Slider({
  Title = "Block Parts Size Multiplier",
  Value = { Default = 1, Min = 0, Max = 5 },
  Callback = function(value114) end,
})

blocktab:Toggle({
  Title = "Predictive Auto Block",
  Callback = function(value115) v20 = value115 end,
})

blocktab:Button({
  Title = "Fake Block",
  Callback = function()
    pcall(function()
      local fakeBlockGui = playerGui:FindFirstChild("FakeBlockGui")

      if not fakeBlockGui then
        local v79, v80 = pcall(function()
          return loadstring(game:HttpGet("https://raw.githubusercontent.com/skibidi399/Auto-block-script/refs/heads/main/fakeblock"))()
        end)

        if not v79 then
          warn("❌ Failed to load Fake Block GUI:", v80)
        end
      else
        fakeBlockGui.Enabled = true
        print("✅ Fake Block GUI enabled")
      end
    end)
  end,
})

TechTab = autoBlockTab:Section({
  Title = "Tech",
  Icon = "x",
  Box = true,
  Opened = true,
})

TechTab:Toggle({ Title = "Double Punch Tech", Callback = function(value116) v17 = value116 end })

hitboxDraggingTech = false
_hitboxDraggingDebounce = false
HITBOX_DRAG_DURATION = 1.4
HITBOX_DETECT_RADIUS = 6

TechTab:Toggle({
  Title = "Hitbox Dragging tech (HDT)",
  Callback = function(value117) hitboxDraggingTech = value117 end,
})

TechTab:Input({ Title = "HDT speed", Callback = function(value118) hdtSpeed = value118 end })
TechTab:Input({ Title = "HDT delay", Callback = function(value119) hdtDelay = value119 end })

TechTab:Paragraph({
  Title = "Hitbox Dragging tech",
  Desc = "i reccomend using a high detection range (if using normal detection) when using this",
})

TechTab:Button({
  Title = "Fake Lag Tech",
  Callback = function()
    pcall(function()
      local character9 = localPlayer.Character or localPlayer.CharacterAdded:Wait()
      local humanoid8 = character9 and character9:FindFirstChildOfClass("Humanoid")

      if not humanoid8 then
        return
      else
        local animator6 = humanoid8:FindFirstChildOfClass("Animator")
          or Instance.new("Animator", humanoid8)

        for index5, value120 in ipairs(animator6:GetPlayingAnimationTracks()) do
          local v81 = value120

          if tostring(v81.Animation and v81.Animation.AnimationId or ""):match("%d+")
            == "136252471123500" then
            pcall(function() v81:Stop() end)
          end
        end

        local animation3 = Instance.new("Animation")
        animation3.AnimationId = "rbxassetid://136252471123500"

        animator6:LoadAnimation(animation3):Play()
        return
      end
    end)
  end,
})

PredictiveTab = autoBlockTab:Section({
  Title = "Predictive",
  Icon = "layers",
  Box = true,
  Opened = true,
})

PredictiveTab:Input({
  Title = "Detection Range",
  Callback = function(value121)
    local v82 = tonumber(value121)

    if v82 then
      v18 = v82
    end
  end,
})

PredictiveTab:Slider({
  Title = "Edge Killer",
  Value = { Default = 2, Min = 0, Max = 7 },
  Callback = function(value122) edgeKiller = value122 end,
})

PredictiveTab:Paragraph({
  Title = "Edge Killer",
  Desc = "how many secs until it blocks (resets when killer gets out of range)",
})

AutoPunchTab = autoBlockTab:Section({
  Title = "Auto Punch",
  Icon = "menu",
  Box = true,
  Opened = true,
})

AutoPunchTab:Toggle({
  Title = "Auto Punch",
  Callback = function(value123) autoPunch = value123 end,
})

AutoPunchTab:Toggle({
  Title = "Fling Punch",
  Callback = function(value124) flingPunch = value124 end,
})

AutoPunchTab:Toggle({
  Title = "Punch Aimbot",
  Callback = function(value125) punchAimbot = value125 end,
})

predictionValue = 4

AutoPunchTab:Slider({
  Title = "Aim Prediction",
  Value = { Default = 2, Min = 0, Max = 6 },
  Callback = function(value126) predictionValue = value126 end,
})

AutoPunchTab:Slider({
  Title = "Fling Power",
  Value = { Default = 20, Min = 0, Max = 60 },
  Callback = function(value127) flingPower = value127 end,
})

facingsurvivor = survivorTab:Section({
  Title = "Facing Survivor",
  Icon = "cog",
  Box = true,
  Opened = true,
})

facingsurvivor:Toggle({ Title = "Enable Facing" })
facingsurvivor:Input({ Title = "Facing Aimbot" })

facingsurvivor:Dropdown({
  Title = "Selection System (FI)",
  Values = { "Camera Lock", "CFRAME HRP", "CAMERA LOCK + CFRAME HRP" },
  Value = 1,
})

facingsurvivor:Dropdown({
  Title = "Selection Facing (SR)",
  Values = { "Random", "System IPS" },
  Value = 1,
})

elliot = survivorTab:Section({ Title = "Elliot", Box = true, Opened = true })
is007n7 = survivorTab:Section({ Title = "007n7", Box = true, Opened = true })
chance = survivorTab:Section({ Title = "Chance", Box = true, Opened = true })
shedletsky = survivorTab:Section({ Title = "Shedletsky", Box = true, Opened = true })
noob = survivorTab:Section({ Title = "Noob", Box = true, Opened = true })
dusekkar = survivorTab:Section({ Title = "Dusekkar", Box = true, Opened = true })
Veeronica = survivorTab:Section({ Title = "Veeronica", Box = true, Opened = true })
janedoe = survivorTab:Section({ Title = "Jane Doe", Box = true, Opened = true })
taph = survivorTab:Section({ Title = "Taph", Box = true, Opened = true })
builderman = survivorTab:Section({ Title = "Builderman", Box = true, Opened = true })
twotime = survivorTab:Section({ Title = "Two Time", Box = true, Opened = true })

elliot:Slider({ Title = "Pizza Delay", Value = { Default = 1, Min = 0, Max = 11 } })
elliot:Button({ Title = "Throw Pizza" })
elliot:Toggle({ Title = "Auto Throw Pizza", Desc = "When Survivor has low heart" })

is007n7:Slider({ Title = "Clone Delay", Value = { Default = 0, Min = 0, Max = 2 } })
is007n7:Toggle({ Title = "Auto Clone", Desc = "when hear that killers." })

chance:Slider({ Title = "Coins Delay", Value = { Default = 1, Min = 0, Max = 2 } })
chance:Slider({ Title = "Shoot Delay", Value = { Default = 1, Min = 0, Max = 3 } })
chance:Toggle({ Title = "Auto Flip Coin" })
chance:Toggle({ Title = "Auto Shoot Killer", Desc = "when you get front in killer." })

shedletsky:Slider({ Title = "HR Heart Delay", Value = { Default = 0, Min = 0, Max = 9 } })
shedletsky:Slider({ Title = "Slasher Sword Delay", Value = { Default = 6, Min = 0, Max = 12 } })
shedletsky:Slider({ Title = "Eating Chicken Delay", Value = { Default = 2, Min = 0, Max = 7 } })
shedletsky:Toggle({ Title = "HR Heart + Eat Chicken" })
shedletsky:Toggle({ Title = "Auto Slash Shedletsky" })

noob:Toggle({ Title = "Auto Drink Cola" })
noob:Toggle({ Title = "Auto Eating (BURGER GHOST)" })

dusekkar:Slider({ Title = "Cooldown Delay", Value = { Default = 2, Min = 0, Max = 91 } })
dusekkar:Toggle({ Title = "Auto Spawn Protection" })
dusekkar:Toggle({ Title = "Auto Plasma Beam" })

Veeronica:Button({ Title = "Vandalism" })
Veeronica:Toggle({ Title = "Auto SK8" })
Veeronica:Toggle({ Title = "Auto SK8 Trick" })
Veeronica:Toggle({ Title = "Auto Broadcast" })
Veeronica:Toggle({ Title = "Auto Activate Battery" })

janedoe:Slider({ Title = "Slash Delay", Value = { Default = 0, Min = 0, Max = 1 } })
janedoe:Toggle({ Title = "Auto Throw Crystar Killer", Desc = "when killer is front you." })
janedoe:Toggle({ Title = "Auto Slash Killer", Desc = "when killer is front you." })

taph:Button({ Title = "Control Taph" })

builderman:Paragraph({
  Title = "SORRY",
  Desc = "sorry builderman has will make own wait from version 1.5.0.",
})

twotime:Paragraph({
  Title = "SORRY",
  Desc = "sorry Two time has will make own wait from version 1.5.5.",
})

facingsurvivors = killerTab:Section({
  Title = "Facing Killer",
  Icon = "cog",
  Box = true,
  Opened = true,
})

facingsurvivors:Toggle({ Title = "Enable Facing" })
facingsurvivors:Input({ Title = "Facing Aimbot" })

facingsurvivors:Dropdown({
  Title = "Selection System (FI)",
  Values = { "Camera Lock", "CFRAME HRP", "CAMERA LOCK + CFRAME HRP" },
  Value = 1,
})

facingsurvivors:Dropdown({
  Title = "Selection Facing (SR)",
  Values = { "Random", "System IPS" },
  Value = 1,
})

slasher = killerTab:Section({ Title = "Slasher", Box = true, Opened = true })
c00lkidd = killerTab:Section({ Title = "c00lkidd", Box = true, Opened = true })
johndoe = killerTab:Section({ Title = "John Doe", Box = true, Opened = true })
is1x1x1x1 = killerTab:Section({ Title = "1x1x1x1", Box = true, Opened = true })
noli = killerTab:Section({ Title = "Noli", Box = true, Opened = true })
nosferatu = killerTab:Section({ Title = "Nosferatu", Box = true, Opened = true })
sixer = killerTab:Section({ Title = "Sixer", Box = true, Opened = true })
azure = killerTab:Section({ Title = "Azure", Box = true, Opened = true })

slasher:Input({ Title = "Delay Explicetes Slash" })
slasher:Toggle({ Title = "Auto Gashing", Desc = "when survivor has slash killer." })

c00lkidd:Toggle({ Title = "Auto Corrupt nature" })
c00lkidd:Toggle({ Title = "Auto Walkspeed override", Desc = "when survivor has front you." })

johndoe:Slider({ Title = "Spike Delay", Value = { Default = 0, Min = 0, Max = 1 } })
johndoe:Button({ Title = "See Survivor" })
johndoe:Toggle({ Title = "Auto Spike", Desc = "when survivor has fronting you." })

is1x1x1x1:Slider({
  Title = "Popups Delay",
  Value = { Default = 0, Min = 0, Max = 5 },
  Callback = function(value128) val = value128 end,
})

is1x1x1x1:Toggle({
  Title = "Auto Popups 1x1x1x1",
  Callback = function(value129)
    while true do
      if value129 then
        local localPlayer4 = players.LocalPlayer

        for index6, value130 in ipairs((localPlayer4.PlayerGui.TemporaryUI:GetChildren())) do
          if value130.Name == "1x1x1x1Popup" then
            local v83 = value130.AbsolutePosition.X + value130.AbsoluteSize.X / 2
            local v84 = value130.AbsolutePosition.Y + value130.AbsoluteSize.Y / 2

            virtualInputManager:SendMouseButtonEvent(
              v83, v84, Enum.UserInputType.MouseButton1.Value, true, localPlayer4.PlayerGui, 1
            )

            virtualInputManager:SendMouseButtonEvent(
              v83, v84, Enum.UserInputType.MouseButton1.Value, false, localPlayer4.PlayerGui, 1
            )
          end
        end
      end

      task.wait(val)
    end
  end,
})

noli:Slider({ Title = "Stab Delay", Value = { Default = 0, Min = 0, Max = 5 } })
noli:Slider({ Title = "void rush Delay", Value = { Default = 2, Min = 0, Max = 5 } })
noli:Toggle({ Title = "Auto Stab" })
noli:Toggle({ Title = "Auto nova" })
noli:Button({ Title = "Observant" })

nosferatu:Slider({ Title = "Bloodhook Delay", Value = { Default = 1, Min = 0, Max = 12 } })
nosferatu:Slider({ Title = "Hunter feast Delay", Value = { Default = 1, Min = 0, Max = 2 } })
nosferatu:Toggle({ Title = "Auto Lacerate" })
nosferatu:Toggle({ Title = "Auto Lacerate + Bloodhook" })
nosferatu:Toggle({ Title = "Auto Hunter Feast" })
nosferatu:Toggle({ Title = "Auto Ascension" })
nosferatu:Toggle({ Title = "Auto Cataclysm" })

sixer:Slider({ Title = "Demonic pursuit delay", Value = { Default = 1, Min = 0, Max = 2 } })
sixer:Toggle({ Title = "Auto Demonic" })
sixer:Button({ Title = "Infernal Crying", Desc = "this mean say mega cry." })

azure:Toggle({ Title = "Auto Perforating" })
azure:Toggle({ Title = "Auto Seeker Blub" })
azure:Toggle({ Title = "Auto Stigmatize" })
azure:Toggle({ Title = "Auto Enstrangle" })
azure:Toggle({ Title = "Auto inflorescence" })
azure:Toggle({ Title = "Auto Pummeling" })
azure:Toggle({ Title = "Auto Blooming" })
azure:Toggle({ Title = "Auto Unearthing" })
azure:Toggle({ Title = "Auto Burrowing" })
azure:Input({ Title = "Blooming Text" })

systemlookingCFR = aimbotTab:Section({ Title = "System CFR", Box = true, Opened = true })
systemlookingCFR:Slider({ Title = "CFR Delay", Value = { Default = 1, Min = 0, Max = 9 } })

systemlookingCFR:Slider({
  Title = "CFR Pristen Delay",
  Value = { Default = 2, Min = 0, Max = 9 },
})

systemlookingCFR:Slider({
  Title = "CFR Heareti Delay",
  Value = { Default = 4, Min = 0, Max = 9 },
})

systemlookingCFR:Toggle({ Title = "Enable CFR + Looking" })
systemlookingCFR:Toggle({ Title = "Enable CFR Heareti + Pristen" })

systemlookingaimbot = aimbotTab:Section({ Title = "System Aimbot", Box = true, Opened = true })

systemlookingaimbot:Slider({
  Title = "Aimbot Heareti Delay",
  Value = { Default = 4, Min = 0, Max = 9 },
})

systemlookingaimbot:Toggle({ Title = "Enable Aimbot Heareti" })
systemlookingaimbot:Button({ Title = "Aimbot Complete Heareti" })

combatyserast = combatTab:Section({ Title = "System Yserast", Box = true, Opened = true })
combatyserast:Toggle({ Title = "Auto Combat Network" })
combatyserast:Toggle({ Title = "Auto Combat Yield" })
combatyserast:Toggle({ Title = "Auto Combat Pagerwesi" })
combatyserast:Toggle({ Title = "Auto Combat Ui" })
combatyserast:Toggle({ Title = "Auto Combat Peraset" })
combatyserast:Toggle({ Title = "Auto Combat Igerwasi" })
combatyserast:Toggle({ Title = "Auto Combat Game" })
combatyserast:Toggle({ Title = "Auto Combat Network Remotes" })
combatyserast:Toggle({ Title = "Auto Combat Poiler" })
combatyserast:Toggle({ Title = "Auto Combat BN" })
combatyserast:Toggle({ Title = "Auto Combat MBG" })
combatyserast:Toggle({ Title = "Auto Combat Jungket" })
combatyserast:Toggle({ Title = "Auto Combat Foager" })

systemTab:Section({ Title = "YamemeHub System", Desc = "this is yameme hub system do it." })

systemTab:Toggle({
  Title = "Enable Show User",
  Callback = function(value131)
    if value131 then
      forsakenScriptWindow.User:Enable()
    else
      forsakenScriptWindow.User:Disable()
    end
  end,
})

systemTab:Toggle({
  Title = "Enable User",
  Callback = function(value132)
    if value132 then
      forsakenScriptWindow.User:Enable()
    else
      forsakenScriptWindow.User:SetAnonymous()
    end
  end,
})

systemTab:Button({ Title = "Load FireWorker" })

ConfigManager = forsakenScriptWindow.ConfigManager
ConfigName = "default"

ConfigNameInput = settingsTab:Input({
  Title = "Config Name",
  Icon = "file-cog",
  Callback = function(value133) ConfigName = value133 end,
})

settingsTab:Space()
AllConfigs = ConfigManager:AllConfigs()
DefaultValue = table.find(AllConfigs, ConfigName) and ConfigName or nil

AllConfigsDropdown = settingsTab:Dropdown({
  Title = "All Configs",
  Desc = "Select existing configs",
  Values = AllConfigs,
  Value = DefaultValue,
  Callback = function(value134)
    ConfigName = value134
    ConfigNameInput:Set(value134)
  end,
})

settingsTab:Space()

settingsTab:Button({
  Title = "Save Config",
  Icon = "",
  Justify = "Center",
  Callback = function()
    forsakenScriptWindow.CurrentConfig = ConfigManager:Config(ConfigName)

    if forsakenScriptWindow.CurrentConfig:Save() then
      dist:Notify({
        Title = "Config Saved",
        Desc = "Config '" .. ConfigName .. "' saved",
        Icon = "check",
      })
    end

    AllConfigsDropdown:Refresh(ConfigManager:AllConfigs())
  end,
})

settingsTab:Space()

settingsTab:Button({
  Title = "Load Config",
  Icon = "",
  Justify = "Center",
  Callback = function()
    forsakenScriptWindow.CurrentConfig = ConfigManager:CreateConfig(ConfigName)

    if forsakenScriptWindow.CurrentConfig:Load() then
      dist:Notify({
        Title = "Config Loaded",
        Desc = "Config '" .. ConfigName .. "' loaded",
        Icon = "refresh-cw",
      })
    end
  end,
})

settingsTab:Space()

settingsTab:Button({
  Title = "Print AutoLoad Configs",
  Icon = "",
  Justify = "Center",
  Callback = function() print(HttpService:JSONDecode(ConfigManager:GetAutoLoadConfigs())) end,
})

function fireRemoteBlock()
  replicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack({
    "UseActorAbility", "Block",
  }))
end

function fireRemotePunch()
  replicatedStorage:WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack({
    "UseActorAbility", "Punch",
  }))
end

local humanoid9

function playCustomAnim(p24, p25)
  if not humanoid9 then
    warn("Humanoid missing")
    return
  end

  local animation4, v85

  if not p24 or p24 == "" then
    warn("No animation ID provided")
    return
  else
    local v86 = tick()

    if v86 - (p25 and v25 or v24) < 1 then
      return
    else
      for index7, value135 in ipairs(humanoid9:GetPlayingAnimationTracks()) do
        local v87 = value135
        local d = tostring(v87.Animation and v87.Animation.AnimationId):match("%d+")

        if table.find(p25 and v27 or v26, d) then
          pcall(function() v87:Stop() end)
        end
      end

      animation4 = Instance.new("Animation")
      animation4.AnimationId = "rbxassetid://" .. p24

      local v88
      v88, v85 = pcall(function() return humanoid9:LoadAnimation(animation4) end)

      if v88 and v85 then
        print("âœ… Playing custom " .. (p25 and "punch" or "block") .. " animation:", p24)
        v85:Play()

        if p25 then
          v25 = v86
        else
          v24 = v86
        end

        task.delay(p25 and 2.7 or 2, function()
          pcall(function()
            if v85 and v85.IsPlaying then
              v85:Stop()
            end
          end)
        end)
      else
        warn("â\194\157Œ Failed to load or play custom animation: " .. tostring(p24))
      end

      return
    end
  end
end

coroutine.wrap(function()
  local v89 = 0.1
  local character10, humanoidRootPart10

  while true do
    runService.Heartbeat:Wait()

    if v23 then
      while v23
        and not (character10 and character10.Parent and humanoidRootPart10
          and humanoidRootPart10.Parent) do
        runService.Heartbeat:Wait()
        character10 = localPlayer.Character
        humanoidRootPart10 = character10 and character10:FindFirstChild("HumanoidRootPart")
      end

      if v23 then
        local velocity = humanoidRootPart10.Velocity
        humanoidRootPart10.Velocity = velocity * flingPower + Vector3.new(0, flingPower, 0)
        runService.RenderStepped:Wait()
        humanoidRootPart10.Velocity = velocity
        runService.Stepped:Wait()
        humanoidRootPart10.Velocity = velocity + Vector3.new(0, v89, 0)
        v89 = v89 * -1
      end
    end
  end
end)()

function sendChatMessage(p26)
  if not p26 or p26:match("^%s*$") then
    return
  end

  textChatService.TextChannels.RBXGeneral:SendAsync(p26)
end

soundHooks = {}
soundBlockedUntil = {}

function getNearestKillerRoot(p27)
  local killers2 = workspace:FindFirstChild("Players")
    and workspace.Players:FindFirstChild("Killers")

  if not killers2 then
    return nil
  else
    local humanoidRootPart11 = localPlayer.Character
      and localPlayer.Character:FindFirstChild("HumanoidRootPart")

    if not humanoidRootPart11 then
      return nil
    else
      local huge = p27 or math.huge
      local v90 = nil

      for index8, value136 in ipairs(killers2:GetChildren()) do
        local humanoidRootPart12 = value136:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart12 then
          local magnitude = (humanoidRootPart12.Position - humanoidRootPart11.Position).Magnitude

          if magnitude < huge then
            huge = magnitude
            v90 = humanoidRootPart12
          end
        end
      end

      return v90
    end
  end
end

string_match = string.match
tostring_local = tostring

function extractNumericSoundId(p28)
  if not p28 then
    return nil
  else
    local soundId = p28.SoundId

    if not soundId then
      return nil
    else
      local v91 = type(soundId) == "string" and soundId or tostring_local(soundId)

      local v92 = string_match(v91, "rbxassetid://(%d+)") or string_match(v91, "://(%d+)")
        or string_match(v91, "^(%d+)$")

      if v92 and #v92 > 0 then
        return v92
      else
        local v93 = string_match(v91, "[&%?]hash=([^&]+)")

        if v93 then
          return "&hash=" .. v93
        else
          local v94 = string_match(v91, "rbxasset://sounds/.+")

          if v94 then
            return v94
          end

          return nil
        end
      end
    end
  end
end

KF = killers

function getSoundWorldPosition(p29)
  if not p29 then
    return nil
  else
    local parent = p29.Parent

    if parent then
      if parent:IsA("BasePart") then
        return parent.Position, parent
      elseif parent:IsA("Attachment") then
        local parent2 = parent.Parent

        if parent2 and parent2:IsA("BasePart") then
          return parent2.Position, parent2
        end
      end
    end

    if KF and p29:IsDescendantOf(KF) then
      local findFirstChildWhichIsA = (parent or p29):FindFirstChildWhichIsA("BasePart", true)

      if findFirstChildWhichIsA then
        return findFirstChildWhichIsA.Position, findFirstChildWhichIsA
      end

      return nil, nil
    end

    return nil, nil
  end
end

function getCharacterFromDescendant(p30)
  if not p30 then
    return nil
  else
    local model = p30:FindFirstAncestorOfClass("Model")

    if model and model:FindFirstChildOfClass("Humanoid") then
      return model
    end

    return nil
  end
end

function isPointInsidePart(p31, p32)
  if not (p31 and p32) then
    return false
  else
    local pointToObjectSpace = p31.CFrame:PointToObjectSpace(p32)
    local v95 = p31.Size * 0.5

    return math.abs(pointToObjectSpace.X) <= v95.X + 0.001
      and math.abs(pointToObjectSpace.Y) <= v95.Y + 0.001
      and math.abs(pointToObjectSpace.Z) <= v95.Z + 0.001
  end
end

runService.RenderStepped:Connect(function(delta)
  if delta <= 0 then
    return
  else
    local killers3 = workspace:FindFirstChild("Players")
      and workspace.Players:FindFirstChild("Killers")

    if not killers3 then
      return
    end

    for index9, value137 in ipairs(killers3:GetChildren()) do
      if value137 and value137.Parent then
        local humanoidRootPart13 = value137:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart13 then
          local v96 = v19[value137]

          local v97 = v96

          v97 = v96 or {
            prevPos = humanoidRootPart13.Position,
            prevLook = humanoidRootPart13.CFrame.LookVector,
            vel = Vector3.new(),
            angVel = 0,
          }

          local v98 = (humanoidRootPart13.Position - v97.prevPos) / math.max(delta, 0.000001)
          v97.vel = v97.vel and v97.vel:Lerp(v98, 0.22) or v98
          local prevLook = v97.prevLook or humanoidRootPart13.CFrame.LookVector
          local lookVector6 = humanoidRootPart13.CFrame.LookVector
          local dot = prevLook:Dot(lookVector6)
          local v99 = math.clamp(dot, -1, 1)
          local v100 = math.acos(v99)
          local cross = prevLook:Cross(lookVector6)
          local v101 = math.max(delta, 0.000001)

          v97.angVel = v97.angVel * 0.78 + v100 / v101 * (cross.Y >= 0 and 1 or -1) * 0.22
          v97.prevPos = humanoidRootPart13.Position
          v97.prevLook = lookVector6

          v19[value137] = v97
        end
      end
    end

    return
  end
end)

_LP = players.LocalPlayer
_isFacing = f3
_fireRemoteBlock = fireRemoteBlock
_fireRemotePunch = fireRemotePunch
_cachedBlockBtn = block
_cachedCooldown = cooldownTime
_cachedCharges = charges
LOCAL_BLOCK_COOLDOWN = 0.7
lastLocalBlockTime = 0

function tryActivateButton(p33)
  if not p33 then
    return false
  end

  for key48, value138 in pairs(getconnections(p33.MouseButton1Click)) do
    value138:Fire()
  end
end

function fireGuiBlock()
  remoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\"Block\"") })
end

function fireGuiPunch()
  remoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\"Punch\"") })
end

function fireGuiCharge()
  remoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\"Charge\"") })
end

function fireGuiClone()
  remoteEvent:FireServer("UseActorAbility", { buffer.fromstring("\"Clone\"") })
end

function stopChargeAim()
  chargeAimActive = false
end

function startChargeAimUntilChargeEnds(p34)
  stopChargeAim()
  chargeAimActive = true

  chargeAimThread = task.spawn(function()
    tick()
    local v102 = tonumber(p34) or 1.2

    local function f18()
      local character11 = localPlayer.Character

      if not character11 then
        return nil, nil, nil
      end

      return character11:FindFirstChildOfClass("Humanoid"), character11:FindFirstChild("HumanoidRootPart"), (character11:FindFirstChildOfClass("Animator"))
    end

    local v103, v104, v105 = f18()
    local v106 = v104
    local v107 = v105

    if v103 then
      pcall(function() v103.AutoRotate = false end)
    end

    local v108 = false
    local v109 = tick()

    while chargeAimActive do
      local v110, v111
      v103, v110, v111 = f18()
      v106 = v110
      v107 = v111

      if not v106 then
        break
      else
        local v112 = getNearestKillerModel()
        local humanoidRootPart14 = v112 and v112:FindFirstChild("HumanoidRootPart") or nil

        if humanoidRootPart14 then
          local v113 = type(predictionValue) == "number" and predictionValue or 0
          local v114 = humanoidRootPart14.Position + humanoidRootPart14.CFrame.LookVector * v113
          pcall(function() v106.CFrame = CFrame.lookAt(v106.Position, v114) end)
        end

        local v115 = false

        if v107 then
          local v116, v117 = pcall(function() return v107:GetPlayingAnimationTracks() end)

          if v116 and v117 then
            for index10, value139 in ipairs(v117) do
              local v118 = value139
              local d2

              pcall(function()
                d2 = tostring(v118.Animation and v118.Animation.AnimationId or ""):match("%d+")
              end)

              if d2 and table.find(v28, d2) then
                v115 = true
                v108 = true
                break
              end
            end
          end
        end

        if v108 and not v115 then
          break
        end

        if not v108 and tick() - v109 > v102 then
          break
        end

        task.wait()
      end
    end

    if v103 then
      pcall(function() v103.AutoRotate = true end)
    end

    chargeAimActive = false
  end)
end

AUDIO_PREDICT_DT = 0.08
AUDIO_LOCAL_COOLDOWN = 0.35
AUDIO_SOUND_THROTTLE = 1

function distSq(p35, p36)
  local v119 = p35.X - p36.X
  local v120 = p35.Y - p36.Y
  local v121 = p35.Z - p36.Z
  return v119 * v119 + v120 * v120 + v121 * v121
end

_getSoundWorldPosition = getSoundWorldPosition

function _attemptForSound(p37, p38, p39)
  if not v16 then
    return
  end

  if not p37 or not p37:IsA("Sound") then
    return
  elseif not p37.IsPlaying then
    return
  else
    local v122 = tick()
    local v123 = soundHooks
    local v124 = v123 and v123[p37]
    local id = p38 or v124 and v124.id or extractNumericSoundId(p37)

    if not id or not v12[id] then
      return
    end

    if soundBlockedUntil[p37] and v122 < soundBlockedUntil[p37] then
      return
    elseif v122 - lastLocalBlockTime < AUDIO_LOCAL_COOLDOWN then
      return
    else
      if p39 == "Block" or p39 == "Charge" then
        if not block or not cooldownTime or not charges then
          f2()
        end
      elseif p39 == "Clone" then
        if not clone then
          f2()
        end
      end

      local lp = _LP or players.LocalPlayer
      local character12 = lp and lp.Character
      local humanoidRootPart15 = character12 and character12:FindFirstChild("HumanoidRootPart")

      if not humanoidRootPart15 then
        return
      else
        local char2 = v124 and v124.char
        local hrp = v124 and v124.hrp

        if not hrp then
          local v125, v126 = getSoundWorldPosition(p37)

          if not v126 then
            return
          end

          local v127 = getCharacterFromDescendant(v126)
          hrp = v127 and v127:FindFirstChild("HumanoidRootPart")

          if v124 then
            v124.char = v127
            v124.hrp = hrp
          else
            soundHooks[p37] = { id = id, char = v127, hrp = hrp }
            local v128 = soundHooks[p37]
          end
        end

        if not hrp then
          return
        else
          local velocity2 = hrp.Velocity

          local vector5 = velocity2
          vector5 = velocity2 or Vector3.new()

          local v129 = hrp.Position.X + vector5.X * AUDIO_PREDICT_DT
            - humanoidRootPart15.Position.X

          local v130 = hrp.Position.Y + vector5.Y * AUDIO_PREDICT_DT
            - humanoidRootPart15.Position.Y

          local v131 = hrp.Position.Z + vector5.Z * AUDIO_PREDICT_DT
            - humanoidRootPart15.Position.Z

          if detectionRange and v129 * v129 + v130 * v130 + v131 * v131 > detectionRange then
            local v132 = hrp.Position.X - humanoidRootPart15.Position.X
            local v133 = hrp.Position.Y - humanoidRootPart15.Position.Y
            local v134 = hrp.Position.Z - humanoidRootPart15.Position.Z

            if v132 * v132 + v133 * v133 + v134 * v134 > (v18 + 3) * (v18 + 3) then
              return
            end
          end

          local v135, v136 = _getSoundWorldPosition(p37)

          if not v136 then
            return
          else
            local model2 = v136 and v136:FindFirstAncestorOfClass("Model") or nil

            if not model2 then
              return
            elseif not model2:FindFirstChildWhichIsA("Humanoid") then
              return
            else
              local getPlayerFromCharacter = players:GetPlayerFromCharacter(model2)

              if not getPlayerFromCharacter or getPlayerFromCharacter == localPlayer then
                return
              end

              if v52 and not _isFacing(humanoidRootPart15, hrp) then
                return
              end

              task.wait(delayBlock)

              if p39 == "Block" then
                if cooldownTime and cooldownTime.Text == "" then
                  print("yay")
                  fireGuiBlock()

                  if v17 == true then
                    fireGuiPunch()
                  end

                  lastLocalBlockTime = v122
                  soundBlockedUntil[p37] = v122 + AUDIO_SOUND_THROTTLE
                  return
                end

                return
              elseif p39 == "Charge" then
                if charge and charge:FindFirstChild("CooldownTime")
                  and charge.CooldownTime.Text == "" then
                  print("yay")
                  fireGuiCharge()
                  startChargeAimUntilChargeEnds(0.4)
                  lastLocalBlockTime = v122
                  soundBlockedUntil[p37] = v122 + AUDIO_SOUND_THROTTLE
                  return
                end

                return
              elseif p39 == "Clone" then
                if clone and clone:FindFirstChild("CooldownTime")
                  and clone.CooldownTime.Text == "" then
                  print("yay")
                  fireGuiClone()
                  startChargeAimUntilChargeEnds(0.4)
                  lastLocalBlockTime = v122
                  soundBlockedUntil[p37] = v122 + AUDIO_SOUND_THROTTLE
                  return
                end

                return
              else
                lastLocalBlockTime = v122
                soundBlockedUntil[p37] = v122 + AUDIO_SOUND_THROTTLE
                return
              end
            end
          end
        end
      end
    end
  end
end

function attemptBlockForSound(p40, p41)
  return _attemptForSound(p40, p41, "Block")
end

function attemptChargeForSound(p42, p43)
  return _attemptForSound(p42, p43, "Charge")
end

function attemptCloneForSound(p44, p45)
  return _attemptForSound(p44, p45, "Clone")
end

function attemptBDParts(p46)
  if not v16 then
    return
  end

  if not p46 or not p46:IsA("Sound") then
    return
  elseif not p46.IsPlaying then
    return
  else
    local v137 = extractNumericSoundId(p46)

    if not v137 or not v12[v137] then
      return
    else
      local v138 = tick()

      if soundBlockedUntil[p46] and v138 < soundBlockedUntil[p46] then
        return
      else
        local localPlayer5 = players.LocalPlayer
        local character13 = localPlayer5 and localPlayer5.Character

        if not (character13 and character13:FindFirstChild("HumanoidRootPart")) then
          return
        else
          local v139, v140 = getSoundWorldPosition(p46)

          if not v139 or not v140 then
            return
          else
            local v141 = getCharacterFromDescendant(v140)
            local getPlayerFromCharacter2 = v141 and players:GetPlayerFromCharacter(v141)

            if not getPlayerFromCharacter2 or getPlayerFromCharacter2 == localPlayer5 then
              return
            end

            if not v141:FindFirstChild("HumanoidRootPart") then
              return
            end

            return
          end
        end
      end
    end
  end
end

function hookSound(p47)
  local v142 = not p47 or not p47:IsA("Sound")
  local v143, f19, connect2, connect3, connect4

  if v142 then
    return
  elseif soundHooks[p47] then
    return
  else
    v143 = extractNumericSoundId(p47)
    soundHooks[p47] = { id = v143, hrp = nil, char = nil }

    function f19(p48, p49)
      if not v16 then
        return
      else
        local v144 = autoblocktype

        if v144 == "Block" then
          attemptBlockForSound(p48, p49)
        elseif v144 == "Charge" then
          attemptChargeForSound(p48, p49)
        elseif v144 == "7n7 Clone" then
          attemptCloneForSound(p48, p49)
        end

        return
      end
    end

    connect2 = p47.Played:Connect(function() f19(p47, v143) end)

    connect3 = p47:GetPropertyChangedSignal("IsPlaying"):Connect(function()
      if p47.IsPlaying then
        f19(p47, v143)
      end
    end)

    connect4 = nil

    connect4 = p47.Destroying:Connect(function()
      if connect2 and connect2.Connected then
        connect2:Disconnect()
      end

      if connect3 and connect3.Connected then
        connect3:Disconnect()
      end

      if connect4 and connect4.Connected then
        connect4:Disconnect()
      end

      soundHooks[p47] = nil
      soundBlockedUntil[p47] = nil
    end)

    soundHooks[p47].playedConn = connect2
    soundHooks[p47].propConn = connect3
    soundHooks[p47].destroyConn = connect4

    if p47.IsPlaying then
      f19(p47, v143)
    end

    return
  end
end

function getKillerHRP(p50)
  if not p50 then
    return nil
  elseif p50:FindFirstChild("HumanoidRootPart") then
    return p50:FindFirstChild("HumanoidRootPart")
  else
    if p50.PrimaryPart then
      return p50.PrimaryPart
    end

    return p50:FindFirstChildWhichIsA("BasePart", true)
  end
end

function beginDragIntoKiller(p51)
  if _hitboxDraggingDebounce then
    return
  end

  if not p51 or not p51.Parent then
    return
  end

  local character14 = localPlayer and localPlayer.Character

  if not character14 then
    return
  end

  local humanoidRootPart16 = character14:FindFirstChild("HumanoidRootPart")
  local humanoid10 = character14:FindFirstChildOfClass("Humanoid")

  if not humanoidRootPart16 or not humanoid10 then
    return
  end

  local v145 = getKillerHRP(p51)

  if not v145 then
    warn("beginDragIntoKiller: killer has no HRP/PrimaryPart")
    return
  end

  _hitboxDraggingDebounce = true
  local walkSpeed = humanoid10.WalkSpeed
  local jumpPower = humanoid10.JumpPower
  local platformStand = humanoid10.PlatformStand

  humanoid10.WalkSpeed = 0
  humanoid10.JumpPower = 0
  humanoid10.PlatformStand = false

  local bodyVelocity5 = Instance.new("BodyVelocity")
  bodyVelocity5.MaxForce = Vector3.new(100000, 0, 100000)
  bodyVelocity5.Velocity = Vector3.new(0, 0, 0)
  bodyVelocity5.Parent = humanoidRootPart16

  local connect5 = nil

  connect5 = runService.Heartbeat:Connect(function(delta2)
    if not _hitboxDraggingDebounce then
      connect5:Disconnect()

      if bodyVelocity5 and bodyVelocity5.Parent then
        pcall(function() bodyVelocity5:Destroy() end)
      end

      humanoid10.WalkSpeed = walkSpeed
      humanoid10.JumpPower = jumpPower
      humanoid10.PlatformStand = platformStand

      return
    end

    if not (character14 and character14.Parent) or not (p51 and p51.Parent) then
      _hitboxDraggingDebounce = false
      return
    end

    v145 = getKillerHRP(p51)

    if not v145 then
      _hitboxDraggingDebounce = false
      return
    else
      local v146 = v145.Position - humanoidRootPart16.Position
      local magnitude2 = v146.Magnitude
      local vector6 = Vector3.new(v146.X, 0, v146.Z)

      if vector6.Magnitude > 0.01 then
        local unit = vector6.Unit

        bodyVelocity5.Velocity = Vector3.new(
          unit.X * hdtSpeed, bodyVelocity5.Velocity.Y, unit.Z * hdtSpeed
        )
      else
        bodyVelocity5.Velocity = Vector3.new(0, bodyVelocity5.Velocity.Y, 0)
      end

      if magnitude2 <= 2 then
        _hitboxDraggingDebounce = false
      end

      return
    end
  end)

  task.delay(0.4, function()
    if _hitboxDraggingDebounce then
      _hitboxDraggingDebounce = false
    end
  end)
end

runService.RenderStepped:Connect(function()
  if not hitboxDraggingTech then
    return
  else
    if not animator then
      f1()
    end

    local v147 = animator

    if not v147 then
      return
    end

    for index11, value140 in ipairs(v147:GetPlayingAnimationTracks()) do
      local v148 = value140

      local v149, v150 = pcall(function()
        local animation5 = v148.Animation
        return animation5 and tostring(animation5.AnimationId):match("%d+")
      end)

      if v149 and v150 and table.find(v26, v150) then
        local timePosition = 0
        pcall(function() timePosition = v148.TimePosition or 0 end)

        if timePosition <= 0.12 then
          local v151 = getNearestKillerModel()

          if v151 then
            task.wait(hdtDelay)
            task.spawn(function() beginDragIntoKiller(v151) end)
            startChargeAimUntilChargeEnds(0.4)
          end
        end
      end
    end

    return
  end
end)

task.spawn(function()
  if not block or not cooldownTime or not charges then
    f2()
  end

  if block then
    local cooldownTime2 = block:FindFirstChild("CooldownTime") and block.CooldownTime.Text == ""
  end
end)

_REFRESH_UI_IF_NIL = true
TRACK_DEBOUNCE = 0.45
START_WINDOW = 0
trackLastTriggered = setmetatable({}, { __mode = "k" })

function playCustomChargeWithAutoStop(p52)
  local v152 = not localPlayer or not localPlayer.Character
  local character15, animator7, animation6, v153, v154, connect6, v155, f20

  if v152 then
    return
  else
    character15 = localPlayer.Character
    local humanoid11 = character15:FindFirstChildOfClass("Humanoid")
    local v156 = not humanoid11
    local humanoidRootPart17 = character15:FindFirstChild("HumanoidRootPart")

    if v156 or not humanoidRootPart17 then
      return
    else
      animator7 = humanoid11:FindFirstChildOfClass("Animator")
        or Instance.new("Animator", humanoid11)

      animation6 = Instance.new("Animation")
      animation6.AnimationId = "rbxassetid://" .. tostring(p52)

      local v157
      v157, v153 = pcall(function() return animator7:LoadAnimation(animation6) end)

      if not v157 or not v153 then
        warn("Failed to load charge animation:", p52)
        return
      end

      v153:Play()
      v154 = false
      connect6 = nil
      v155 = nil

      function f20()
        if v154 then
          return
        end

        v154 = true
        pcall(function() v153:Stop() end)

        if connect6 and connect6.Connected then
          pcall(function() connect6:Disconnect() end)
        end

        if v155 and v155.Connected then
          pcall(function() v155:Disconnect() end)
        end
      end

      connect6 = humanoidRootPart17.Touched:Connect(function(part)
        if v154 then
          return
        elseif not part then
          return
        else
          if part:IsDescendantOf(character15) then
            return
          end

          f20()
          return
        end
      end)

      v155 = nil

      task.spawn(function()
        local v158 = tick()

        while not v154 and tick() - v158 < 4 do
          task.wait(0.05)
        end

        if not v154 then
          f20()
        end
      end)

      pcall(function()
        if v153.Stopped then
          v153.Stopped:Connect(f20)
        end
      end)

      return
    end
  end
end

lastReplaceTime = { block = 0, punch = 0, charge = 0 }

task.spawn(function()
  while true do
    runService.Heartbeat:Wait()
    local character16 = localPlayer.Character

    if not character16 then
    else
      local humanoid12 = character16:FindFirstChildOfClass("Humanoid")
      local animator8 = humanoid12 and humanoid12:FindFirstChildOfClass("Animator")

      if not animator8 then
      else
        for index12, value141 in ipairs(animator8:GetPlayingAnimationTracks()) do
          tostring(value141.Animation.AnimationId):match("%d+")
          goto L13592733
        end
      end
    end
  end
end)

local v159

runService.RenderStepped:Connect(function()
  local mainUI2 = playerGui:FindFirstChild("MainUI")

  local punch2 = mainUI2 and mainUI2:FindFirstChild("AbilityContainer")
    and mainUI2.AbilityContainer:FindFirstChild("Punch")

  local charges2 = punch2 and punch2:FindFirstChild("Charges")

  local block2 = mainUI2 and mainUI2:FindFirstChild("AbilityContainer")
    and mainUI2.AbilityContainer:FindFirstChild("Block")

  local cooldownTime3 = block2 and block2:FindFirstChild("CooldownTime")
  local character17 = localPlayer.Character
  local humanoidRootPart18, v160, v161

  if not character17 then
    return
  else
    local humanoidRootPart19 = character17:FindFirstChild("HumanoidRootPart")
    humanoid9 = character17:FindFirstChildOfClass("Humanoid")

    for index13, value142 in ipairs(players:GetPlayers()) do
      if value142 ~= localPlayer and value142.Character then
        local humanoidRootPart20 = value142.Character:FindFirstChild("HumanoidRootPart")
        local humanoid13 = value142.Character:FindFirstChildOfClass("Humanoid")

        local getPlayingAnimationTracks = humanoid13
          and humanoid13:FindFirstChildOfClass("Animator")
          and humanoid13:FindFirstChildOfClass("Animator"):GetPlayingAnimationTracks()

        if humanoidRootPart20 and humanoidRootPart19
          and (humanoidRootPart20.Position - humanoidRootPart19.Position).Magnitude <= v18 then
          for index14, value143 in ipairs(getPlayingAnimationTracks or {}) do
            local d3 = tostring(value143.Animation.AnimationId):match("%d+")

            if table.find(v14, d3) then
              if v15
                and (humanoidRootPart20.Position - humanoidRootPart19.Position).Magnitude <= v18 then
                if f3(humanoidRootPart19, humanoidRootPart20) then
                  if cooldownTime3 and cooldownTime3.Text == "" then
                    fireRemoteBlock()
                  end

                  if v17 == true and charges2 and charges2.Text == "1" then
                    fireRemotePunch()
                  end
                end
              end
            end
          end
        end
      end
    end

    if v20 and tick() > v21 then
      local killers4 = workspace:FindFirstChild("Players")
        and workspace.Players:FindFirstChild("Killers")

      local character18 = localPlayer.Character
      local humanoidRootPart21 = character18 and character18:FindFirstChild("HumanoidRootPart")

      if killers4 and humanoidRootPart21 and character18
        and character18:FindFirstChild("Humanoid") then
        local v162 = false

        for index15, value144 in ipairs(killers4:GetChildren()) do
          local humanoidRootPart22 = value144:FindFirstChild("HumanoidRootPart")

          if humanoidRootPart22 then
            if (humanoidRootPart21.Position - humanoidRootPart22.Position).Magnitude <= v18 then
              v162 = true
              break
            end
          end
        end

        if v162 then
          if not v159 then
            v159 = tick()
          elseif tick() - v159 >= edgeKiller then
            fireRemoteBlock()
            v21 = tick() + 2
            v159 = nil
          end
        else
          v159 = nil
        end
      end
    end

    local character19 = localPlayer.Character
    humanoidRootPart18 = character19 and character19:FindFirstChild("HumanoidRootPart")

    if autoPunch then
      if charges2 and charges2.Text == "1" then
        for index16, value145 in ipairs(v22) do
          local findFirstChild = workspace:FindFirstChild("Players")
            and workspace.Players:FindFirstChild("Killers")
            and workspace.Players.Killers:FindFirstChild(value145)

          if findFirstChild and findFirstChild:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart23 = findFirstChild.HumanoidRootPart

            if humanoidRootPart23 and humanoidRootPart18
              and (humanoidRootPart23.Position - humanoidRootPart18.Position).Magnitude <= 10 then
              fireGuiPunch()

              if flingPunch then
                v23 = true

                task.spawn(function()
                  local v163 = tick()

                  while tick() - v163 < 1 do
                    if localPlayer.Character
                      and localPlayer.Character:FindFirstChild("HumanoidRootPart")
                      and humanoidRootPart23 and humanoidRootPart23.Parent then
                      localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(humanoidRootPart23.Position
                        + humanoidRootPart23.CFrame.LookVector * 2, humanoidRootPart23.Position)
                    end

                    task.wait()
                  end

                  v23 = false
                end)
              end

              break
            end
          end
        end
      end
    end

    local character20 = localPlayer.Character

    if character20 then
      character20:FindFirstChildOfClass("Humanoid")
    end

    v160 = animator
    local v164 = {}

    if not v160 then
      f1()
      v160 = animator
    end

    if v160 then
      local v165, v166 = pcall(function() return v160:GetPlayingAnimationTracks() end)

      if v165 and v166 then
        for index17, value146 in ipairs(v166) do
          local v167 = value146
          local d4

          pcall(function()
            d4 = tostring(v167.Animation and v167.Animation.AnimationId or ""):match("%d+")
          end)

          if d4 and table.find(v27, d4) then
            v164[d4] = true

            if not punchPrevPlaying[d4] then
            end
          end
        end
      end
    end

    punchPrevPlaying = v164
    local character21 = localPlayer.Character

    if character21 then
      character21:FindFirstChildOfClass("Humanoid")
    end

    v161 = animator
    local v168 = {}

    if not v161 then
      f1()
      v161 = animator
    end

    if v161 then
      local v169, v170 = pcall(function() return v161:GetPlayingAnimationTracks() end)

      if v169 and v170 then
        for index18, value147 in ipairs(v170) do
          local v171 = value147
          local d5

          pcall(function()
            d5 = tostring(v171.Animation and v171.Animation.AnimationId or ""):match("%d+")
          end)

          if d5 and table.find(v26, d5) then
            v168[d5] = true

            if not blockPrevPlaying[d5] then
            end
          end
        end
      end
    end

    blockPrevPlaying = v168

    if punchAimbot then
      if not animator then
        f1()
      end

      local v172 = animator

      if v172 and humanoidRootPart18 and character19 then
        for index19, value148 in ipairs(v22) do
          local findFirstChild2 = workspace:FindFirstChild("Players")
            and workspace.Players:FindFirstChild("Killers")
            and workspace.Players.Killers:FindFirstChild(value148)

          if findFirstChild2 and findFirstChild2:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart24 = findFirstChild2.HumanoidRootPart

            for index20, value149 in ipairs(v172:GetPlayingAnimationTracks()) do
              local v173 = value149
              local d6 = tostring(v173.Animation.AnimationId):match("%d+")

              if table.find(v27, d6) then
                local v174 = v13[v173]

                if v174 and tick() - v174 < 0.6 then
                else
                  local timePosition2 = 0
                  pcall(function() timePosition2 = v173.TimePosition or 0 end)

                  if timePosition2 <= 0.1 then
                    v13[v173] = tick()
                    local humanoid14 = character19:FindFirstChild("Humanoid")

                    if humanoid14 then
                      humanoid14.AutoRotate = false
                    end

                    task.spawn(function()
                      local v175 = tick()

                      while tick() - v175 < 0.5 do
                        if humanoidRootPart18 and humanoidRootPart24
                          and humanoidRootPart24.Parent then
                          humanoidRootPart18.CFrame = CFrame.lookAt(humanoidRootPart18.Position, humanoidRootPart24.Position
                            + humanoidRootPart24.CFrame.LookVector * predictionValue)
                        end

                        task.wait()
                      end

                      if humanoid14 then
                        humanoid14.AutoRotate = true
                      end

                      task.delay(0.09999999999999998, function() v13[v173] = nil end)
                    end)
                  end
                end
              end
            end
          end
        end
      end
    end

    return
  end
end)

forsakenScriptWindow.User:SetAnonymous()
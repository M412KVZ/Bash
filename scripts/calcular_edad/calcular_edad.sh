#!/bin/bash
# Calculo de edad en un Bucle
# Secalculara la edad de una persona por medio de este script, el resultada
# se dara en años, meses y dias, hasta que ya no se desee calcular la edad.
# Date: 17-SEP-2022
# Author: glow
# Bibliografia: https://www.youtube.com/watch?v=3TIFd5whFZM

clear
opcion=0
while [ $opcion -ne 2 ]; do
    echo -e "Calcula tu edad con dias, meses y años\n"
    echo "1) Calcular edad"
    echo -e "2) Salir\n"
    echo -ne "Elija una opcion: "
    read opcion
    case $opcion in
        1) echo -e "\nCalculando edad...\n"
            echo -n "Ingrese el año de nacimiento [ Ejemplo: 2022 ]: "
            read year
            echo -n "Ingrese el mes de nacimiento [ Ejemplo: Septiembre = 09 ]: "
            read month
            echo -n "Ingrese el dia de nacimiento [ Ejemplo: 09 ]: "
            read day

            year_act=$(date +%Y)
            month_act=$(date +%m)
            day_act=$(date +%d)

            fyear=`expr $year_act - $year`
            if [ $month -gt $month_act ]
            then
                fyear=`expr $fyear - 1`
                aux=`expr $month - $month_act`
                fmonth=`expr 12 - $aux`
            else
                fmonth=`expr $month_act - $month`
            fi
            if [ $day -gt $day_act ]
            then
                fmonth=`expr $fmonth - 1`
                aux=`expr $day - $day_act`
                fday=`expr 30 - $aux`
            else
                fday=`expr $day_act - $day`
            fi

            echo -e "Tu tienes $fyear años, $fmonth meses, $fday dias de edad."

            if [ $fyear -ge 18 ]
            then
                echo -e "Eres Mayor de Edad\n"
            else
                echo -e "Eres menor de edad\n"
            fi
        opcion=0;;
        2) exit;;
        *) echo -e "opcion no valida, elija entre la opcion 1 y 2\n"
    esac
done
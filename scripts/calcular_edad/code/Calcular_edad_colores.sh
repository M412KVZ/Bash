#!/bin/bash
# Calculo de edad en un Bucle
# Secalculara la edad de una persona por medio de este script, el resultada
# se dara en años, meses y dias, hasta que ya no se desee calcular la edad.
# Date: 17-SEP-2022
# Author: glow
# Bibliografia: https://www.youtube.com/watch?v=3TIFd5whFZM

clear
opcion=0
echo -e "\n\e[38:5:82mCALCULO DE EDAD\e[0m"
while [ $opcion -ne 2 ]; do
    
    echo -e "\e[38:5:39m1) Calcular edad\e[0m"
    echo -e "\e[38:5:202m2) Salir\e[0m\n"
    echo -ne "\e[38:5:87mElija una opcion: \e[0m"
    read  opcion
    case $opcion in
        1) echo -e "\n\e[38:5:93mCalculando edad...\e[0m"
            echo -en "\e[38:5:99mIngrese el año de nacimiento [ Ejemplo: 2022 ]: \e[0m"
            read year
            echo -en "\e[38:5:105mIngrese el mes de nacimiento [ Ejemplo: Septiembre = 09 ]: \e[0m"
            read month
            echo -en "\e[38:5:111mIngrese el dia de nacimiento [Ejemplo: 09]: \e[0m"
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
            
            echo -e "\e[38:5:123mTienes\e[0m \e[38:5:201m$fyear\e[0m \e[38:5:123maños,\e[0m \e[38:5:201m$fmonth\e[0m \e[38:5:123mmeses\e[0m, \e[38:5:201m$fday\e[0m \e[38:5:123mdias de edad.\e[0m"
            
            if [ $fyear -ge 18 ]
            then
                echo -e "\e[38:5:82mEres Mayor de Edad\e[0m\n"
            else
                echo -e '\e[5m\e[31mEres menor de edad\e[0m\n'
            fi
        opcion=0;;
        2) exit;;
        *) echo -e "\e[5;33m*** Opcion no valida, elija entre la opcion 1 y 2 ***\e[0m\n"
    esac
done

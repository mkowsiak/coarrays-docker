#!/bin/bash

cat << EOF


      ***************************************************
          https://github.com/mkowsiak/coarrays-docker
      ***************************************************
                OpenCoarrays Docker for macOS
        -----------------------------------------------
           This Docker image allows you to play with
           coarrays inside Fortran.

           Building  OpenCoarryas  on macOS is quite 
           time consuming and requires  quite a loot 
           of steps.

           If playing with OpenCoarryas is your only
           goal,  and  you  are  not  interested  in 
           having natively compile code inside macOS
           you can use this Docker image.

           Go ahead and play a little bit.

           Try sample code inside ~/sample

           > cd sample
           > caf -o hello hello.f90
           > cafrun -np 2 ./hello

           Remember that you can easily attach other
           samples by passing

           -v ~/dir_with_code:/home/fortcoder/code

           to your 'docker -it' command
        
        -----------------------------------------------


EOF

/bin/bash


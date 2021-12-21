# khadas_android_hwdecode_library
## khadas_android_hwdecode_library jni so is build by ndk-build command,so you need install NDK build environment 
### How to install NDK build environment

``1)`` Download NDK
        wget https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
        
``2)`` Unzip
        unzip android-ndk-r17-linux-x86_64.zip
        
``3)`` Configure NDK environment variables: open .bashrc and add the following two lines to the end of the file, Or add it to the /etc/profile file

        export NDKROOT=/usr/ndk/android-ndk-r17
        export PATH=$NDKROOT:$PATH
        save and exit,update environment variables：source ~/.bashrc.

``4)`` Check whether the NDK installation is completed:
        enter the "ndk-build" command in the shell to check if your installation is successful, if not "ndk-build not found" is displayed.

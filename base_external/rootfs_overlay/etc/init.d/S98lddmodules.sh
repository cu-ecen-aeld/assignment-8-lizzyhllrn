#!/bin/sh

case "$1" in
    start)
        echo "loading mods"
        scull_load
        module_load faulty
        modprobe hello
        aesdchar_load
        ;;
    stop)
        eacho "unloading mods"
        scull_unload
        module_unload faulty
        rmmod hello
        aesdchar_unload
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
esac

exit 0
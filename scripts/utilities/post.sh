if [ -f $1 ]; then
    target="file=@"$1
    #let m_size=512*1024*1024
    #let min_age=30
    #let max_age=265
    #let size=$(ls -l $1 | cut -d" " -f5)

    #let ttl=$(echo "$min_age + (-$max_age + $min_age) * (($size / $m_size - 1)^3)" | bc)
    echo -e "uploading $target"
    curl -F $target https://0x0.st && echo -e "Uploaded $target"
fi

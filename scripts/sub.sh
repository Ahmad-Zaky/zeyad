sub() {
    local NUM1=$1
    local NUM2=$2
    
    if (( NUM2 > NUM1 )); then
        SUM=0
    fi

    SUM=$((NUM1 - NUM2))
}

IFS=$'\n' read -r -d '' COUNT < count.txt

NUM1=$COUNT
NUM2=$1

sub $NUM1 $NUM2

echo -n "$SUM" > count.txt

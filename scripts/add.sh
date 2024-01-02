add() {
    local NUM1=$1
    local NUM2=$2

    SUM=$((NUM1 + NUM2))
}

IFS=$'\n' read -r -d '' COUNT < count.txt

NUM1=$COUNT
NUM2=$1

add $NUM1 $NUM2

echo -n "$SUM" > count.txt

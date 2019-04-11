function test(arys) {
    if(arys.length === 0) {
        return [[]]
    }
    else {
        let prevs = test(arys.slice(1))
        let tt = arys[0]
        prevs = prevs.map(p => {

        })
        return prevs
    }
}
console.log(test([['a', 'b'], ['c', 'd']]))

function test2(arys, start, end, target) {
    if(start > end || start < 0 || arys.length === 0) {
        return -1
    }
    while(start < end) {
        let mid = Math.floor(start + (end - start) / 2)
        if(arys[mid] < target) {
            start = mid + 1
        } else {
            end = mid
        }

    }
    if (arys[start] === target) {
        return start
    } else {
        return -1
    }
}

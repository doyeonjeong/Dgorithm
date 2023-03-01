//
//  01-B7568.swift
//  Dgorithm
//
//  Created by Doyeon on 2023/03/01.
//

// [BOJ] #7568. 덩치
private func B_7568() {

    let n = Int(readLine()!)!
    var people: [(Int, Int)] = []
    var answer: String = ""
    
    for _ in 0..<n {
        if let input = readLine() {
            let a = input.split(separator: " ").map{ Int(String($0))! }
            people.append((a[0], a[1]))
        } else {
            break
        }
    }
    
    for i in 0 ..< n {
        let k = find(i)
        answer += i != n - 1 ? "\(k) " : "\(k)"
    }
    
    func find(_ idx: Int) -> String {
        let weight = people[idx].0
        let height = people[idx].1
        var count: Int = 0
        
        for i in 0 ..< n {
            if i != idx {
                count = people[i].0 > weight && people[i].1 > height ? count + 1 : count
            }
        }
        return String(count + 1)
    }
    
    print(answer)

}

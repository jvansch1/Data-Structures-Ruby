s = "hereiamstackerrank"

string = "hackerrank"
i = 0
current_index = 0
found = 0
while i < s.length
    if s[i] == string[current_index]
        found += 1
        current_index += 1
    end
    i += 1
end
i = 0

print found < string.length ? "NO" : "YES"

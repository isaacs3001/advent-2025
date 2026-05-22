const fs = require('fs');

fs.readFile('day_4.txt', 'utf8', (err, data) => {

    let paper_rows = data
        .trim()
        .split('\n')
        .map(row => row.split(''));
    let updated_grid = paper_rows.map(row => [...row]);

    let roll_count = 0;

    paper_rows.forEach((row, index) => {

        for (let i = 0; i < row.length; i++) {

            if (row[i] === '.') continue;

            let count = 0;

            for (let dr = -1; dr <= 1; dr++) {
                for (let dc = -1; dc <= 1; dc++) {

                    if (dr === 0 && dc === 0) continue;

                    const nr = index + dr;
                    const nc = i + dc;

                    if (nr < 0 || nr >= paper_rows.length) continue;
                    if (nc < 0 || nc >= row.length) continue;

                    if (paper_rows[nr][nc] === '@') {
                        count++;
                    }
                }
            }

            if (count < 4) {
                roll_count++;
                updated_grid[index][i] = 'x';
            }
        }
    });

    console.log("Roll count:", roll_count);
});
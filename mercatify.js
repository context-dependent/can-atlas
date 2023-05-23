const r = require('reproject');
const epsg = require('epsg');

Promise.all([parseInput()]).then(output);

function parseInput() {
    return new Promise((resolve, reject) => {
        const chunks = [];
        process.stdin
            .on("data", chunk => chunks.push(chunk))
            .on("end", () => {
                try { resolve(JSON.parse(chunks.join(""))); }
                catch (error) { reject(error); }
            })
            .setEncoding("utf8");
    });
}

function output([topology]) {
    process.stdout.write(JSON.stringify(reproject(topology, 3347, epsg)));
    process.stdout.write('\n');
}
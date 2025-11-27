import database from "../src/lib/db.js";

const db = database.getInstance();

async function testConnection() {
    try {
        await database.testConnection();
    } catch (error) {
        console.error(error);
    }
}

function main() {
}

main();
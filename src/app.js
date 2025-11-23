import database from "./lib/db.js";
import player from "./models/player.js";
import PlayerDAO from "./DAO/PlayerDAO.js";
import { DataTypes } from "sequelize";

const db = database.getInstance();
const Player = player(db, DataTypes);

async function testConnection() {
    try {
        await database.testConnection();
    } catch (error) {
        console.error(error);
    }
}

function printPlayers(players) {
    players.forEach(p => {
        console.log("ID: ", p.id);
        console.log("Username: ", p.username);
    });
}

async function main() {
    const playerDAO = new PlayerDAO();

    for (var i = 0; i < 10; i++) {
        const username = "user".concat(i.toString());
        const newUser = {
            username: username,
            password: "sm4sh"
        };
        await playerDAO.createPlayer(newUser);

        const search = await playerDAO.getPlayerByUsername(username);
        if (!search) {
            console.log("No se encontró");
        } else {
            console.log("Nombre buscado: ", search.username);
        }

        const password = "smush";
        search.password = password;
        if (await playerDAO.updatePlayerById(search)) {
            const updatedPlayer = await playerDAO.getPlayerByUsername(username);
            console.log("Nueva contraseña: ", updatedPlayer.password);
        }
    }

    let players = await playerDAO.getPlayers();

    if (players) {
        console.log("\n", "Jugadores actuales");

        printPlayers(players);

        console.log("Borrar jugadores");

        for (const p of players) {
            await playerDAO.deletePlayerByUsername(p.username);
        }

        console.log("\n", "Jugadores actuales");
        players = await playerDAO.getPlayers();
        printPlayers(players);
    }

    await db.close();
}

main();
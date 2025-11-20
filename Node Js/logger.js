const fs = require("fs");
const path = require("path");
const EventEmitter = require("events");

class Logger extends EventEmitter {
	log(message) {
		this.emit("messageLogged", message);
	}
}

const logger = new Logger();

const logFilePath = path.join(__dirname, "log.txt");

logger.on("messageLogged", (msg) => {
	const date = new Date();
	const formatted = `[${date.toLocaleDateString()} ${date.toLocaleTimeString()}] ${msg}\n`;

	fs.appendFile(logFilePath, formatted, (err) => {
		if (err) {
			console.log("Error writing log:", err);
		} else {
			console.log("Log saved:", formatted);
		}
	});
});

logger.log("Hello Akash! This is your first log.");
logger.log("Learning Node.js core modules!");
logger.log("Logger app working successfully!");

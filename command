const { prefix } = require("../../config.json")
const discord = require('discord.js');

module.exports = {
    name: "prefix",
    category: "info",
    description: "Shows a help menu.",
    aliases: [" "],
    run: async(client, message, args) => {
        let menu = new discord.MessageEmbed()
        .setTitle(`Prefix`)
        .setDescription(`My prefix is \`${prefix}\`.`)
        .setFooter(message.author.tag, message.author.displayAvatarURL())
        .setTimestamp()
        .setColor("#E2E2E2")

        message.channel.send(menu)
    }
}

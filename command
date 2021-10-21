const discord = require('discord.js');

module.exports = {
    name: "botinfo",
    category: "info",
    description: "Shows a help menu.",
    aliases: [" "],
    run: async(client, message, args) => {
      let hours = Math.floor(client.uptime / 3600000 ) % 24;
    let minutes = Math.floor(client.uptime / 60000) % 60;
    let seconds = Math.floor(client.uptime / 1000) % 60;
        let menu = new discord.MessageEmbed()
        .setAuthor("Protocol Information", "https://cdn.discordapp.com/attachments/894226959641497623/899320546372755486/image0.jpg")
        .setDescription(`<:dev:899333277331116052> **DEVELOPER**
\`landen.#9020\`

<:linux:899376472375066705> **PLATFORM**
\`linux\`

<:users:899701577324068904> **SERVERS**
\`${client.guilds.cache.size} servers\`

<:ping:899375344908369931> **PING**
\`${client.ws.ping}ms\`

<:uptime:899336037652922369> **UPTIME**
\`${hours}h ${minutes}m ${seconds}s\`

<:javascript:899664801884684288> **LAVALINK NODE**
\`node\``)
        .setTimestamp()
        .setColor("#E2E2E2")
        .setFooter("Thanks for using Protocol!", "https://cdn.discordapp.com/attachments/894226959641497623/899320546372755486/image0.jpg")

        message.channel.send(menu)
    }
}

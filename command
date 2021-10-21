const discord = require('discord.js');

module.exports = {
    name: "help",
    category: "info",
    description: "Shows a help menu.",
    aliases: [" "],
    run: async(client, message, args) => {
        let menu = new discord.MessageEmbed()
        .setTitle(`**Commands List**`)
        .setDescription(`📚 **Need help?** Here are all of my useful commands!
**Need more help?** Come join our **guild**.

<:admin:899604695146967091> **ADMIN**
Coming Soon.

<:money:900089277243854888> **ECONOMY**
Coming Soon.

<:tada:899607013481398322> **EVENTS**
Coming Soon

<a:diamond:900086516230025237> **FUN**
Coming Soon.

<a:gears:900781777566728242> **Utility**
\`appstore\`

<:info:900084168808071229> **INFO**
\`botinfo,\` \`help,\` \`membercount\`

<:staff:899768734938464306> **MODERATION**
\`ban\`

<:music:899649788713254932> **MUSIC**
Coming Soon.

<:owner:899604695444783144> **OWNER**
\`nuke,\` \`shutdown\``)
        .setFooter(message.author.tag, message.author.displayAvatarURL())
        .setTimestamp()
        .setColor("#E2E2E2")

        message.channel.send(menu)
    }
}

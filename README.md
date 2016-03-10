Xamarin Plus (Zamarin Plus)
============

:zap: Advanced Anti Spam and Super Group Manager Bot For Telegram

Bot Commands
------------
<table>
    <thead>
        <tr>
            <td><strong>Name</strong></td>
            <td><strong>Description</strong></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bot.lua</td>
            <td>Plugin to manage channels. Enable or disable channel.</td>
        </tr>
        <tr>
            <td>commands.lua</td>
            <td>Plugin to get info about what the bot can do.</td>
        </tr>
        <tr>
            <td>(language)_lang.lua</td>
            <td>Plugin to install a language in your redis db.</td>
        </tr>
        <tr>
            <td>export_gban.lua</td>
            <td>Plugin to export an installer (gban_installer.lua) or a list of all your bot gbans.</td>
        </tr>
        <tr>
            <td>giverank.lua</td>
            <td>Plugin to manage ranks (admins, mods and guests).</td>
        </tr>
        <tr>
            <td>id.lua</td>
            <td>Plugin to get info about telegram accounts.</td>
        </tr>
        <tr>
            <td>moderation.lua</td>
            <td>Plugin to manage users from chats. Kick, add, ban, unban, gban, ungban, kickme all of this with action by reply, by id and by username.</td>
        </tr>
        <tr>
            <td>plugins.lua</td>
            <td>Plugin to manage other plugins. Enable, disable or reload.</td>
        </tr>
        <tr>
            <td>rules.lua</td>
            <td>Plugin to get chat rules.</td>
        </tr>
        <tr>
            <td>settings.lua</td>
            <td>Plugin to administrate a group/supergroup, you can disable photos, stickers, gifs, links, arabic, flood, spam, lock channel members, audios...</td>
        </tr>
        <tr>
            <td>spam.lua</td>
            <td>Plugin to manage spam at groups and supergroups. When someone write a Telegram link to another group or channel, automatically (for example), plugin delete that user from the channel, and delete his message. Then, send a report to all sudo users in a private message with user info, text message and the name and id of that channel.</td>
        </tr>
        <tr>
            <td>version.lua</td>
            <td>Shows bot version</td>
        </tr>
    </tbody>
</table>

#Commands Usages
<table>
    <thead>
        <tr>
            <td><strong>Plugin</strong></td>
            <td><strong>Usage</strong></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bot.lua</td>
            <td>#bot on: enable bot in current channel.<br>
                #bot off: disable bot in current channel.</td>
        </tr>
        <tr>
            <td>commands.lua</td>
            <td>#commands: Show all commands for every plugin.<br>
                #commands [plugin]: Commands for that plugin.
            </td>
        </tr>
        <tr>
            <td>export_gban.lua</td>
            <td>#gbans installer: Return a lua file installer to share gbans and add those in another bot in just one command.<br>
                #gbans list: Return an archive with a list of gbans.
            </td>
        </tr>
        <tr>
            <td>gban_installer.lua</td>
            <td>#install gbans: add a list of gbans into your redis db.
            </td>
        </tr>
        <tr>
            <td>giverank.lua</td>
            <td>#rank admin (reply): add admin by reply.<br>
                #rank admin <user_id>/<user_name>: add admin by user ID/Username.<br>
                #rank mod (reply): add mod by reply.<br>
                #rank mod <user_id>/<user_name>: add mod by user ID/Username.<br>
                #rank guest (reply): remove admin by reply.<br>
                #rank guest <user_id>/<user_name>: remove admin by user ID/Username.<br>
                #admins: list of all admin members.<br>
                #mods: list of all mod members.<br>
                #members: list of all channel members.
            </td>
        </tr>
        <tr>
            <td>id.lua</td>
            <td>#id: Return your ID and the chat id if you are in one.<br>
                #ids chat: Return the IDs of the current chat members.<br>
                #ids channel: Return the IDs of the current channel members.<br>
                #id <user_name>: Return the member username ID from the current chat.<br>
                #whois <user_id>/<user_name>: Return username.<br>
                #whois (reply): Return user id.
            </td>
        </tr>
        <tr>
            <td>moderation.lua</td>
            <td>#add: replying to a message, the user will be added to the current group/supergroup.<br>
                #add <id>/<username>: adds a user by its ID/Username to the current group/supergroup.<br>
                #kick: replying to a message, the user will be kicked in the current group/supergroup.<br>
                #kick <id>/<username>: the user will be kicked by its ID/Username in the current group/supergroup.<br>
                #kickme: kick yourself.<br>
                #ban: replying to a message, the user will be kicked and banned in the current group/supergroup.<br>
                #ban <id>/<username>: the user will be banned by its ID/Username in the current group/supergroup and it wont be able to return.<br>
                #unban: replying to a message, the user will be unbanned in the current group/supergroup.<br>
                #unban <id>/<username>: the user will be unbanned by its ID/Username in the current group/supergroup.<br>
                #gban: replying to a message, the user will be kicked and banned from all groups/supergroups.<br>
                #gban <id>/<username>: the user will be banned by its ID/Username from all groups/supergroups and it wont be able to enter.<br>
                #ungban: replying to a message, the user will be unbanned from all groups/supergroups.<br>
                #ungban <id>/<username>: the user will be unbanned by its ID/Username from all groups/supergroups.<br>
                #mute: replying to a message, the user will be silenced in the current supergroup, erasing all its messages.<br>
                #mute <id>/<username>: the user will be silenced by its ID/Username inthe current supergroup, erasing all its messages.<br>
                #unmute: replying to a message, the user will be unsilenced in the current supergroup.<br>
                #unmute <id>/<username>: the user will be unsilenced by its ID/Username in the current supergroup.<br>
                #rem: replying to a message, the message will be removed.
            </td>
        </tr>
        <tr>
            <td>settings.lua</td>
            <td>#settings stickers enable/disable: when enabled, all stickers will be cleared.<br>
                #settings links enable/disable: when enabled, all links will be cleared.<br>
                #settings arabic enable/disable: when enabled, all messages with arabic/persian will be cleared.<br>
                #settings bots enable/disable: when enabled, if someone adds a bot, it will be kicked.<br>
                #settings gifs enable/disable: when enabled, all gifs will be cleared.<br>
                #settings photos enable/disable: when enabled, all photos will be cleared.<br>
                #settings audios enable/disable: when enabled, all audios will be cleared.<br>
                #settings kickme enable/disable: when enabled, people can kick out itself.<br>
                #settings spam enable/disable: when enabled, all spam links will be cleared.<br>
                #settings setphoto enable/disable: when enabled, if a user changes the group photo, the bot will revert to the saved photo.<br>
                #settings setname enable/disable: when enabled, if a user changes the group name, the bot will revert to the saved name.<br>
                #settings lockmember enable/disable: when enabled, the bot will kick all people that enters to the group.<br>
                #settings floodtime <secs>: set the time that bot uses to check flood.<br>
                #settings maxflood <secs>: set the maximum messages in a floodtime to be considered as flood.<br>
                #setname <group title>: the bot will change group title.<br>
                #setphoto <then send photo>: the bot will change group photo.<br>
                #lang <language (en, es...)>: it changes the language of the bot.<br>
                #setlink <link>: saves the link of the group.<br>
                #link: to get the link of the group.
            </td>
        </tr>
        <tr>
            <td>plugins.lua</td>
            <td>#plugins: shows a list of all plugins.<br>
                #plugins <enable>/<disable> [plugin]: enable/disable the specified plugin.<br>
                plugins <enable>/<disable> [plugin] chat: enable/disable the specified plugin, only in the current group/supergroup.<br>
                #plugins reload: reloads all plugins.
            </td>
        </tr>
        <tr>
            <td>version.lua</td>
            <td>#version: shows bot version.</td>
        </tr>
    </tbody>
</table>

[Installation](https://github.com/yagop/telegram-bot/wiki/Installation)
------------
```bash
# Tested on Ubuntu 14.04, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
```

```bash
# After those dependencies, lets install the bot
cd $HOME
git clone https://github.com/amirhmz/XamarinPlus.git
cd XamarinPlus
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
```
Then, you have to install a bot language like this:
```
#install english_lang
#lang en
```

Xamarin Plus Developers
-----------------

[![https://telegram.me/AmirDark](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Amir%20Dark-blue.svg)](https://telegram.me/AmirDark) [![https://telegram.me/ShahabDark](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Shahab%20Dark-blue.svg)](https://telegram.me/ShahabDark)

Xamarin Plus Support Channel
-----------------------

[![https://telegram.me/DarkTeam](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Dark%20Team-blue.svg)](https://telegram.me/DarkTeam)

Contact us
------------
You can contact us in groups said before but if you have an issue please [open](https://github.com/amirhmz/XamarinPlus/issues) one.

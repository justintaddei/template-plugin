package com.justintaddei.<%PROJECT_NAME_LOWER%>;

import org.bukkit.command.ConsoleCommandSender;
import org.bukkit.plugin.java.JavaPlugin;

public final class <%PROJECT_NAME%> extends JavaPlugin {

    private ConsoleCommandSender sender = getServer().getConsoleSender();

    @Override
    public void onEnable() {
        sender.sendMessage("<%PROJECT_NAME%>: enabled");
    }

    @Override
    public void onDisable() {
        sender.sendMessage("<%PROJECT_NAME%>: disabled");
    }
}

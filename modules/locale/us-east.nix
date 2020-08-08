{ config, pkgs, ... }:
{
  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
     font = "Lat2-Terminus32";
     keyMap = "us";
   };
}

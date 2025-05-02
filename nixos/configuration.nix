{ config, lib, pkgs, ... }:

{
	imports = [ ./hardware-configuration.nix ];

	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	environment.systemPackages = with pkgs; [
		acpi
		brightnessctl
		fish
		fzf
		git
		htop
		neovim
		openssl
		powerstat
		tmux
	];

	networking.networkmanager.enable = true;

 	programs.fish.enable = true;

	services.actkbd = {
		enable = true;
		bindings = [
			{ keys = [ 224 ]; events = [ "key" ]; command = "${pkgs.brightnessctl}/bin/brightnessctl s 10%-"; }
			{ keys = [ 225 ]; events = [ "key" ]; command = "${pkgs.brightnessctl}/bin/brightnessctl s 10%+"; }
		];
	};
	services.fwupd.enable = true;
	services.logind.lidSwitch = "ignore";
	services.openssh = {
		enable = true;
		ports = [ 22 2020 ];
		settings = {
			AddressFamily = "inet";
			AllowUsers = [ "gary" ];
			KbdInteractiveAuthentication = false;
			PermitRootLogin = "no";
			PasswordAuthentication = false;
		};
	};

	system.copySystemConfiguration = true;

	systemd.services.boot = {
		enable = true;
		wantedBy = [ "multi-user.target" ];
		serviceConfig = {
			Type = "oneshot";
			ExecStart = "${pkgs.brightnessctl}/bin/brightnessctl s 0";
		};
	};

	time.timeZone = "US/Eastern";

	users = {
		defaultUserShell = pkgs.fish;
		users = {
			gary = {
				isNormalUser = true;
				extraGroups = [ "docker" "wheel" "video" ];
			};
		};
	};

	virtualisation.docker.enable = true;


	# This option defines the first version of NixOS you have installed on this particular machine,
	# and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
	#
	# Most users should NEVER change this value after the initial install, for any reason,
	# even if you've upgraded your system to a new NixOS release.
	#
	# This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
	# so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
	# to actually do that.
	#
	# This value being lower than the current NixOS release does NOT mean your system is
	# out of date, out of support, or vulnerable.
	#
	# Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
	# and migrated your data accordingly.
	#
	# For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
	system.stateVersion = "24.11"; # Did you read the comment?
}

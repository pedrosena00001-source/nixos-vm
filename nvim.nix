{ config, pkgs, ... }:
{
programs.vim = {
 	enable = true;
	extraLuaConfig = ''
		vim.opt.number = true
	'';
     };
}

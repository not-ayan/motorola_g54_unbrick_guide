#!/bin/sh -x

cd ""

# <header>
#         <phone_model model="cancunf_g_sys" />
#         <software_version version="cancunf_g_sys-user 14 U1TD34.94-12-7 4cdf7-62b22 release-keys MUR1-0.101" />
#         <sparsing enabled="True" max-sparse-size="268435456" />
#         <subsidy_lock_config MD5="d41d8cd98f00b204e9800998ecf8427e" name="slcf_mediatek_default_v1.0.atc" />
#         <regulatory_config SHA1="da39a3ee5e6b4b0d3255bfef95601890afd80709" name="regulatory_info_default.png" />
#         <cid_template_config SHA1="cfc1136c36955ba5ffe514efdf0037e95e47bef3" name="cid_template.dat" />
#         <cid_value value="0x0032" />
#         <iqtuning_rescue enabled="false" />
#     </header>

md5sum --check <<EOF || exit 1
966a3ea43cbed399d4e379d3ac42d00c *PGPT
b6d6f9b8a345c7ffb263fe5c721ed6a0 *preloader.img
a63c8673ad9a22392e8f2dfe2eba4eaa *lk.img
65cdd016723cd386f27a87a1780a1a1c *tee.img
3c558de02309e5adff7347b978e2d838 *mcupm.img
eaa4d6039ce4aa2b6a4dc85d95cf866e *pi_img.img
28481db8278385b50c15d9dfb589b10c *sspm.img
01b790dd26b1021d805830bedb2d5438 *dtbo.img
61c017457dabab1421547988ddc1a0d8 *logo.img
2116cdf1540d2940bf40325c413c321c *spmfw.img
ee498d073d5c31f55eaf92d6bc18cd7e *scp.img
bf2463717a7b4ab45dfe7b9f50addaca *vbmeta.img
193a01f054b57fc41ef89e7de8b2dc4a *vbmeta_system.img
47134a4356160c1828ed6764b1da40c2 *md1img.img
88292b2841f02e30d30fee5c48037883 *dpm.img
850b5a62ebd8b70baa6a86ab888d23e0 *gz.img
16cf1908c7c344aef566bac4ce58ef02 *vcp.img
a8957997444087be0aac3ffe768d72e3 *gpueb.img
52890d4c2df4de8fb97a50cbacd0d071 *efuse.img
e23c690cf987b6fee364ed2b02c4a6c5 *boot.img
62a50bfa6879f66e22a0f07986c7b37f *vendor_boot.img
fd415ced2993ceba9c7bf24cf9f27fe7 *super.img_sparsechunk.0
59d2f64ab3bd5f73e83670c07cac871d *super.img_sparsechunk.1
2ac917ccc7010ef3a0c09a24bca1531f *super.img_sparsechunk.2
8bb815f412cb8923d51654a18d3432ec *super.img_sparsechunk.3
131c7fa40a0ce9dc73e12b9f6be87b62 *super.img_sparsechunk.4
ca5770e228291296dfc5740799b5fde8 *super.img_sparsechunk.5
6d807aec263f9a8087f8e1d1c2c0647d *super.img_sparsechunk.6
591f8b2f75ac3780adfc650e9d4868e5 *super.img_sparsechunk.7
68d4da6ec1c7e741c714a7dde71637a3 *super.img_sparsechunk.8
1d119354d8dca3e6b0f2b71afad4fa5e *super.img_sparsechunk.9
b307b681655d54afa72069a4079c4333 *super.img_sparsechunk.10
90f3c9e89a87d252ab2cb576a263637a *super.img_sparsechunk.11
0d23a19bc80df37bb5a92208f3567a3e *super.img_sparsechunk.12
58fa245a1cc8ad6bc6fa9515e6426091 *super.img_sparsechunk.13
327c8e98b3c9e5223575dc9991a54050 *super.img_sparsechunk.14
78c33e9116149b4521f6db57e3c28c17 *super.img_sparsechunk.15
79e1c29cf9bd79cac5eb8b2e5a624c9f *super.img_sparsechunk.16
a2e26bd8411fc068bfd2bdb6b1bfffdc *super.img_sparsechunk.17
4eff016ff399c7559e65f8171b7a5036 *super.img_sparsechunk.18
EOF

fastboot flash gpt PGPT || exit 1
fastboot getvar max-sparse-size || exit 1
fastboot oem fb_mode_set || exit 1
fastboot flash preloader preloader.img || exit 1
fastboot flash lk_a lk.img || exit 1
fastboot flash tee_a tee.img || exit 1
fastboot flash mcupm_a mcupm.img || exit 1
fastboot flash pi_img_a pi_img.img || exit 1
fastboot flash sspm_a sspm.img || exit 1
fastboot flash dtbo_a dtbo.img || exit 1
fastboot flash logo_a logo.img || exit 1
fastboot erase nvdata || exit 1
fastboot flash spmfw_a spmfw.img || exit 1
fastboot flash scp_a scp.img || exit 1
fastboot flash vbmeta_a vbmeta.img || exit 1
fastboot flash vbmeta_system_a vbmeta_system.img || exit 1
fastboot flash md1img_a md1img.img || exit 1
fastboot flash dpm_a dpm.img || exit 1
fastboot flash gz_a gz.img || exit 1
fastboot flash vcp_a vcp.img || exit 1
fastboot flash gpueb_a gpueb.img || exit 1
fastboot flash efuseBackup efuse.img || exit 1
fastboot flash boot_a boot.img || exit 1
fastboot flash vendor_boot_a vendor_boot.img || exit 1
fastboot flash super super.img_sparsechunk.0 || exit 1
fastboot flash super super.img_sparsechunk.1 || exit 1
fastboot flash super super.img_sparsechunk.2 || exit 1
fastboot flash super super.img_sparsechunk.3 || exit 1
fastboot flash super super.img_sparsechunk.4 || exit 1
fastboot flash super super.img_sparsechunk.5 || exit 1
fastboot flash super super.img_sparsechunk.6 || exit 1
fastboot flash super super.img_sparsechunk.7 || exit 1
fastboot flash super super.img_sparsechunk.8 || exit 1
fastboot flash super super.img_sparsechunk.9 || exit 1
fastboot flash super super.img_sparsechunk.10 || exit 1
fastboot flash super super.img_sparsechunk.11 || exit 1
fastboot flash super super.img_sparsechunk.12 || exit 1
fastboot flash super super.img_sparsechunk.13 || exit 1
fastboot flash super super.img_sparsechunk.14 || exit 1
fastboot flash super super.img_sparsechunk.15 || exit 1
fastboot flash super super.img_sparsechunk.16 || exit 1
fastboot flash super super.img_sparsechunk.17 || exit 1
fastboot flash super super.img_sparsechunk.18 || exit 1
fastboot erase userdata || exit 1
fastboot erase metadata || exit 1
fastboot erase debug_token || exit 1
fastboot oem fb_mode_clear || exit 1
fastboot oem config unset console || exit 1
fastboot oem config unset cmdl || exit 1

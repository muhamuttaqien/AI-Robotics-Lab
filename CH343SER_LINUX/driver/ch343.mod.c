#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/elfnote-lto.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;
BUILD_LTO_INFO;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xcd6bb128, "module_layout" },
	{ 0x8e17b3ae, "idr_destroy" },
	{ 0xd688ae5d, "usb_deregister" },
	{ 0xa248ba4c, "tty_driver_kref_put" },
	{ 0x54ac2320, "tty_unregister_driver" },
	{ 0x6cea19d, "usb_register_driver" },
	{ 0x885a9d93, "tty_register_driver" },
	{ 0x67b27ec1, "tty_std_termios" },
	{ 0x22001553, "__tty_alloc_driver" },
	{ 0xc6cbbc89, "capable" },
	{ 0x37110088, "remove_wait_queue" },
	{ 0x1000e51, "schedule" },
	{ 0x4afb2238, "add_wait_queue" },
	{ 0x6b5cacf5, "current_task" },
	{ 0xaad8c7d6, "default_wake_function" },
	{ 0x905fbf70, "pv_ops" },
	{ 0x8427cc7b, "_raw_spin_lock_irq" },
	{ 0xe757e97f, "tty_flip_buffer_push" },
	{ 0xc69298a9, "tty_insert_flip_string_fixed_flag" },
	{ 0x8f9c199c, "__get_user_2" },
	{ 0x167e7f9d, "__get_user_1" },
	{ 0xb2fd5ceb, "__put_user_4" },
	{ 0x13c49cc2, "_copy_from_user" },
	{ 0xd48bc89a, "tty_port_register_device" },
	{ 0x1c10aa10, "usb_register_dev" },
	{ 0x4e5e56c5, "usb_get_intf" },
	{ 0x8c1b52c8, "usb_driver_claim_interface" },
	{ 0x88535f7f, "usb_alloc_urb" },
	{ 0x232babe9, "usb_alloc_coherent" },
	{ 0xad0d2e94, "tty_port_init" },
	{ 0xcefb0c9f, "__mutex_init" },
	{ 0xd9a5ea54, "__init_waitqueue_head" },
	{ 0xb8f11603, "idr_alloc" },
	{ 0x51372753, "usb_ifnum_to_if" },
	{ 0x296695f, "refcount_warn_saturate" },
	{ 0x6619ed06, "tty_standard_install" },
	{ 0x20978fb9, "idr_find" },
	{ 0xd0da656b, "__stack_chk_fail" },
	{ 0x409873e3, "tty_termios_baud_rate" },
	{ 0x6c257ac0, "tty_termios_hw_change" },
	{ 0x3480d929, "kmem_cache_alloc_trace" },
	{ 0x6f029675, "kmalloc_caches" },
	{ 0x3246abc4, "_dev_info" },
	{ 0xd7daa5a2, "usb_driver_release_interface" },
	{ 0x1e9f81b, "usb_free_urb" },
	{ 0x579885cd, "tty_unregister_device" },
	{ 0xc56104d5, "tty_kref_put" },
	{ 0x2401ca9c, "tty_vhangup" },
	{ 0xd0fef386, "tty_port_tty_get" },
	{ 0x35bfad82, "usb_deregister_dev" },
	{ 0x3c12dfe, "cancel_work_sync" },
	{ 0x54b1fac6, "__ubsan_handle_load_invalid_value" },
	{ 0xda9ba823, "tty_port_open" },
	{ 0xa68cf1ed, "tty_port_close" },
	{ 0x42746e3d, "usb_anchor_urb" },
	{ 0xe88046c6, "usb_autopm_get_interface_async" },
	{ 0x69acdf38, "memcpy" },
	{ 0x5a5af2da, "tty_port_hangup" },
	{ 0xb62f6e73, "usb_put_intf" },
	{ 0x3213f038, "mutex_unlock" },
	{ 0x7665a95b, "idr_remove" },
	{ 0x4dfa8d4b, "mutex_lock" },
	{ 0x93d991a4, "tty_port_tty_wakeup" },
	{ 0x6173074a, "usb_kill_urb" },
	{ 0xe5c6f67b, "usb_get_from_anchor" },
	{ 0x8e34df5f, "usb_autopm_get_interface_no_resume" },
	{ 0xc5b6f236, "queue_work_on" },
	{ 0x2d3385d3, "system_wq" },
	{ 0x3eeb2322, "__wake_up" },
	{ 0x52306df2, "tty_port_tty_hangup" },
	{ 0x6ebe366f, "ktime_get_mono_fast_ns" },
	{ 0xedbfe0fd, "usb_autopm_put_interface" },
	{ 0x6b10bee1, "_copy_to_user" },
	{ 0x88db9f48, "__check_object_size" },
	{ 0x5f4b43b3, "usb_control_msg" },
	{ 0x37a0cba, "kfree" },
	{ 0x1ebc1758, "usb_autopm_get_interface" },
	{ 0xeb233a45, "__kmalloc" },
	{ 0x92997ed8, "_printk" },
	{ 0xdd0fa3d1, "usb_find_interface" },
	{ 0x728cb45, "tty_port_put" },
	{ 0xee927634, "usb_free_coherent" },
	{ 0xfe7228b1, "usb_autopm_put_interface_async" },
	{ 0xf5e9fff1, "_dev_err" },
	{ 0xdcba6567, "usb_submit_urb" },
	{ 0xfde12905, "__dynamic_dev_dbg" },
	{ 0x87a21cb3, "__ubsan_handle_out_of_bounds" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0xd35cce70, "_raw_spin_unlock_irqrestore" },
	{ 0x34db050b, "_raw_spin_lock_irqsave" },
	{ 0xbdfb6dbb, "__fentry__" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("usb:v1A86p55D2d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55D3d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55D5d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55DAd*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55DBd*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55DDd*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55D8d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55D4d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55D7d*dc*dsc*dp*ic*isc*ip01in*");
MODULE_ALIAS("usb:v1A86p55DFd*dc*dsc*dp*ic*isc*ip01in*");

MODULE_INFO(srcversion, "6033677E54DA63F51A58BA3");

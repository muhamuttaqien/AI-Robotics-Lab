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
	{ 0x30ff7695, "module_layout" },
	{ 0x8e17b3ae, "idr_destroy" },
	{ 0x458f49d8, "usb_deregister" },
	{ 0x92997ed8, "_printk" },
	{ 0x5c52af54, "tty_driver_kref_put" },
	{ 0xb7efbf6f, "tty_unregister_driver" },
	{ 0xb0a1b0c0, "usb_register_driver" },
	{ 0x7e2cf3b6, "tty_register_driver" },
	{ 0x67b27ec1, "tty_std_termios" },
	{ 0x925b7127, "__tty_alloc_driver" },
	{ 0x37110088, "remove_wait_queue" },
	{ 0x1000e51, "schedule" },
	{ 0x4afb2238, "add_wait_queue" },
	{ 0xa22a96f7, "current_task" },
	{ 0xaad8c7d6, "default_wake_function" },
	{ 0x6b10bee1, "_copy_to_user" },
	{ 0xc6cbbc89, "capable" },
	{ 0x13c49cc2, "_copy_from_user" },
	{ 0x33a21a09, "pv_ops" },
	{ 0x8427cc7b, "_raw_spin_lock_irq" },
	{ 0x42dc216a, "tty_flip_buffer_push" },
	{ 0x7b0aeebd, "tty_insert_flip_string_fixed_flag" },
	{ 0x296695f, "refcount_warn_saturate" },
	{ 0x545a0aaa, "tty_standard_install" },
	{ 0x20978fb9, "idr_find" },
	{ 0x2c261910, "tty_port_register_device" },
	{ 0xbc52a41f, "usb_get_intf" },
	{ 0x9f5a878f, "usb_driver_claim_interface" },
	{ 0x1f861c5f, "usb_alloc_urb" },
	{ 0xbab8c874, "usb_alloc_coherent" },
	{ 0x3558161, "tty_port_init" },
	{ 0xcefb0c9f, "__mutex_init" },
	{ 0xd9a5ea54, "__init_waitqueue_head" },
	{ 0xb8f11603, "idr_alloc" },
	{ 0x679587cb, "usb_ifnum_to_if" },
	{ 0x4f00afd3, "kmem_cache_alloc_trace" },
	{ 0xac1c4313, "kmalloc_caches" },
	{ 0xd0da656b, "__stack_chk_fail" },
	{ 0x409873e3, "tty_termios_baud_rate" },
	{ 0x6c257ac0, "tty_termios_hw_change" },
	{ 0xcc7ef1da, "usb_control_msg" },
	{ 0xc9c51f39, "usb_autopm_get_interface" },
	{ 0x54b1fac6, "__ubsan_handle_load_invalid_value" },
	{ 0x204be206, "tty_port_open" },
	{ 0x64d1e6e8, "tty_port_close" },
	{ 0x29169978, "usb_anchor_urb" },
	{ 0xe034150c, "usb_autopm_get_interface_async" },
	{ 0x69acdf38, "memcpy" },
	{ 0x6dee0768, "tty_port_hangup" },
	{ 0x37a0cba, "kfree" },
	{ 0x2ced330f, "usb_put_intf" },
	{ 0x7665a95b, "idr_remove" },
	{ 0x7a5dd93c, "tty_port_tty_wakeup" },
	{ 0x1cd6d5ed, "usb_get_from_anchor" },
	{ 0x7680ff31, "usb_autopm_put_interface" },
	{ 0x1f9ee705, "usb_autopm_get_interface_no_resume" },
	{ 0xc5b6f236, "queue_work_on" },
	{ 0x2d3385d3, "system_wq" },
	{ 0xd41c45a, "tty_port_tty_hangup" },
	{ 0x43f931fc, "__dynamic_dev_dbg" },
	{ 0x6ebe366f, "ktime_get_mono_fast_ns" },
	{ 0xcf2aeb9e, "_dev_info" },
	{ 0xe15df065, "usb_driver_release_interface" },
	{ 0x88bce085, "usb_free_urb" },
	{ 0x30959537, "tty_unregister_device" },
	{ 0x438abc08, "tty_kref_put" },
	{ 0x2e7a64b3, "tty_vhangup" },
	{ 0x2fda22b8, "tty_port_tty_get" },
	{ 0x3213f038, "mutex_unlock" },
	{ 0x3eeb2322, "__wake_up" },
	{ 0x4dfa8d4b, "mutex_lock" },
	{ 0x98d612ed, "tty_port_put" },
	{ 0x78e3401a, "usb_free_coherent" },
	{ 0x87a21cb3, "__ubsan_handle_out_of_bounds" },
	{ 0x3c12dfe, "cancel_work_sync" },
	{ 0x73dc96bd, "usb_kill_urb" },
	{ 0x467b419c, "usb_autopm_put_interface_async" },
	{ 0x3d519628, "_dev_err" },
	{ 0xbd70750d, "usb_submit_urb" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0xd35cce70, "_raw_spin_unlock_irqrestore" },
	{ 0x34db050b, "_raw_spin_lock_irqsave" },
	{ 0xbdfb6dbb, "__fentry__" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("usb:v1A86p7523d*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v1A86p7522d*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v1A86p5523d*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v1A86pE523d*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v4348p5523d*dc*dsc*dp*ic*isc*ip*in*");

MODULE_INFO(srcversion, "377386C7660EE4F2E170E58");

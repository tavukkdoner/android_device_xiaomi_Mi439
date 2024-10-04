#!/vendor/bin/sh

set_acdb_path_props() {
	i=0
	for f in `ls /vendor/etc/acdbdata/${1}/*.*`; do
		setprop "persist.vendor.audio.calfile${i}" "${f}"
		let i+=1
	done
}


case "$(cat /sys/firmware/devicetree/base/model)" in
	"PINE QRD")
		setprop ro.vendor.xiaomi.device pine
		setprop ro.vendor.xiaomi.series pine
		# Audio
		set_acdb_path_props pine
		;;
	"Olive QRD")
		setprop ro.vendor.xiaomi.series olive
		# Audio
		set_acdb_path_props olive
		# Charger
		setprop persist.vendor.ctm.disallowed true
		case "$(cat /sys/xiaomi-sdm439-mach/codename)" in
			"olivelite")
				setprop ro.vendor.xiaomi.device olivelite
				;;
			"olivewood")
				setprop ro.vendor.xiaomi.device olivewood
				# Camera
				setprop persist.vendor.camera.expose.aux 1
				;;
			"olive"|*)
				setprop ro.vendor.xiaomi.device olive
				# Camera
				setprop persist.vendor.camera.aec.sync 1
				setprop persist.vendor.camera.awb.sync 2
				setprop persist.vendor.camera.expose.aux 1
				;;
		esac
		;;
esac

exit 0

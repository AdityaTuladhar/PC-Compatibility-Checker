import ZozoLogo from "../img/zz_logo.png";

export const PC_COMPONENTS = {
	CPU: { name: "cpu", label: "CPU" },
	MEMORY: { name: "memory", label: "Memory" },
	PSU: { name: "psu", label: "Power Supply" },
	STORAGE: { name: "storage", label: "Storage" },
	PC_CASE: { name: "pc_case", label: "PC Case" },
	CPU_COOLER: { name: "cpu_cooler", label: "CPU Cooler" },
	MOTHERBOARD: { name: "motherboard", label: "MotherBoard" },
	GRAPHICS_CARD: { name: "graphics_card", label: "Graphics Card" },
};

export const PC_ALL_COMPONENTS = {
	ALL_COMPONENTS: { name: "all_component", label: "All Components" },
	...PC_COMPONENTS,
};

export const emptyImageUrl = ZozoLogo;

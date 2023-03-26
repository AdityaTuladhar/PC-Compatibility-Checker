export const formatComponentDetail = (detail) => {
	return detail.split(";").map((item) => item.split("="));
};

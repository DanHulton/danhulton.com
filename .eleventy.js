export default async function(eleventyConfig) {
	eleventyConfig.setInputDirectory("src");

	eleventyConfig.addPassthroughCopy("src/assets");
	eleventyConfig.addPassthroughCopy("src/images");
	eleventyConfig.setServerPassthroughCopyBehavior("passthrough");
};

SELECT width, height, depth, (2 * (depth * width + depth * height + height * width)) AS area, (width * height * depth) AS volume
FROM box
ORDER BY area, volume, width, height;


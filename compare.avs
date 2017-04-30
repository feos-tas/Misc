le = avisource("le.avi", "le_1.avi", "le_2.avi", "le_3.avi", "le_4.avi", "le_5.avi") \
	.subtitle("Le Necroyeur", x=8, y= 0, size=24, text_color=color_white) \
	.showframenumber(         x=8, y=40, size=24, text_color=color_white)

mc = avisource("mc.avi", "mc_1.avi", "mc_2.avi", "mc_3.avi", "mc_4.avi", "mc_5.avi") \
	.subtitle("Le Necroyeur", x=8, y= 0, size=24, text_color=color_white) \
	.showframenumber(         x=8, y=40, size=24, text_color=color_white)

le = insert(le,   4,   4,  494,  1287)
mc = insert(mc,   6,   2, 1286,  3866)
le = insert(le,  44,  42, 3829,  9150)
le = insert(le, 281, 323, 9151, 16287)

stackhorizontal(le, mc)

function insert( \
	clip c, \
	 int count, \
	 int num, \
	 int start, \
	 int end \
) {
	c
	subtitle("-" + string(num), x=8, y=40, size=24, first_frame=start, last_frame=end, text_color=color_lime)
	trim(0, -start) ++ blankclip(last, count) ++ trim(start, -0)
	GScript(""" for (i=0, count-1) {
		subtitle("-" + string(i+1), x=8, y=40, size=24, first_frame=start+i, last_frame=start+i, text_color=color_lime)
	} """)
}
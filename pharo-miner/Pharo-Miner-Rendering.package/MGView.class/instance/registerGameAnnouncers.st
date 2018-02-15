initialization
registerGameAnnouncers
	model globalAnnouncer
		when: NewRendererAnnouncement
		do: [ :announcement | self createBlockElement: announcement renderer ]
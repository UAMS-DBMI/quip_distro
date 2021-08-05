db.authorization.createIndex( { "name": 1 }, { unique: true } )
db.user.createIndex( { "email": 1 }, { unique: true } )
db.mark.createIndex({"provenance.image.slide": 1, "provenance.analysis.execution_id": 1, "footprint":1, "x":1, "y":1})
db.mark.createIndex({"provenance.image.slide":1,"provenance.analysis.execution_id":1,"provenance.analysis": 1})
db.mark.createIndex({"provenance.image.slide":1,"provenance.analysis": 1})
db.mark.createIndex({"provenance.image.slide": 1, "provenance.analysis.execution_id": 1})
db.mark.createIndex({"provenance.image.slide": 1, "provenance.analysis.source": 1})
db.mark.createIndex({"provenance.image.slide": 1})
db.mark.createIndex({"provenance.analysis.labelId": 1})
db.slide.createIndex({'study':1, 'specimen': 1, 'name': 1})
db.template.createIndex({'id': 1})
db.template.createIndex({'name': 1})
db.heatmap.createIndex({"provenance.image.slide": 1, "provenance.analysis.execution_id": 1})
db.heatmap.createIndex({"provenance.image.slide": 1})
db.heatmapEdit.createIndex({"provenance.image.slide":1, "provenance.analysis.execution_id":1, "user_id":1})
db.configuration.createIndex({'config_name': 1}, { unique: true })

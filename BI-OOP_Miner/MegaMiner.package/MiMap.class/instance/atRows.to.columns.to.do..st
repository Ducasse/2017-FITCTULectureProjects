accessing
atRows: rowFirst to: rowLast columns: columnFirst to: columnLast do: aCodeBlock
	"Iterates through all BlockHolders between [rowFirst:columnFirst] and [rowLast:columnLast].
	 Parameter aCodeBlock is evaluated with each of them."

	rowFirst to: rowLast do: [ :row | columnFirst to: columnLast do: [ :column | aCodeBlock value: (self at: column @ row) ] ]
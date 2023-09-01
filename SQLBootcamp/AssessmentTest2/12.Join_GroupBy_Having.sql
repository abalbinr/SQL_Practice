SELECT CD.FACILITIES.FACID, SUM(SLOTS)
FROM CD.FACILITIES
INNER JOIN CD.BOOKINGS
ON CD.FACILITIES.FACID = CD.BOOKINGS.FACID
GROUP BY CD.FACILITIES.FACID
HAVING SUM(SLOTS) > 1000
ORDER BY CD.FACILITIES.FACID
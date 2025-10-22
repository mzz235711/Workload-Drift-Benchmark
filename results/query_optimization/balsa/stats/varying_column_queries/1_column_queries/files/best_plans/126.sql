/*+ MergeJoin(c b)
 IndexScan(c)
 IndexScan(b)
 Leading((c b)) */
SELECT COUNT(*) FROM comments as c, badges as b WHERE c.UserId = b.UserId AND b.Date='2014-07-19 19:14:09'::timestamp;


/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=1 AND b.Date<='2014-09-04 09:05:04'::timestamp AND u.CreationDate>='2010-12-09 11:08:23'::timestamp;


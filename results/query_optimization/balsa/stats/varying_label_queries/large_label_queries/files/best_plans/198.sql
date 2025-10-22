/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-21 03:31:11'::timestamp AND c.CreationDate<='2014-08-26 15:33:59'::timestamp;


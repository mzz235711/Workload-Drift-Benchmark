/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=10 AND u.CreationDate>='2010-12-15 20:52:37'::timestamp AND u.CreationDate<='2014-08-01 19:31:00'::timestamp;


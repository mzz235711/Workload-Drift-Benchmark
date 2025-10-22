/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate>='2010-08-24 22:46:09'::timestamp AND c.CreationDate<='2014-09-13 15:55:09'::timestamp AND b.Date>='2010-08-09 20:29:49'::timestamp AND u.UpVotes>=0;


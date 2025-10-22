/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-07-26 22:08:42'::timestamp AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=34;


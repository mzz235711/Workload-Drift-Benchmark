/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-07-19 23:14:07'::timestamp AND b.Date<='2014-09-03 10:32:14'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=9;


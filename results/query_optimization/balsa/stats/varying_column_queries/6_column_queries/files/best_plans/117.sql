/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND b.Date>='2010-07-27 13:18:44'::timestamp AND b.Date<='2014-08-07 05:33:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=125 AND u.CreationDate>='2010-07-19 23:43:33'::timestamp;


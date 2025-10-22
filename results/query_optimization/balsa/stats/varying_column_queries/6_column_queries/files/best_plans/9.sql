/*+ HashJoin(c u v b)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((c u) v) b)) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-12 18:29:45'::timestamp AND b.Date>='2010-07-21 06:53:13'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2011-05-25 17:07:17'::timestamp AND u.CreationDate<='2014-08-21 03:33:35'::timestamp;

